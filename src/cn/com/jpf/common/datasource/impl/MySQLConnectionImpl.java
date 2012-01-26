package cn.com.jpf.common.datasource.impl;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import cn.com.jpf.common.datasource.IDataSourceConnection;
import cn.com.jpf.common.datasource.IMySQLDBInfo;
import cn.com.jpf.common.exception.JpfException;
import cn.com.jpf.common.message.MsgManager;
import cn.com.jpf.common.utils.StringUtil;

public class MySQLConnectionImpl implements IDataSourceConnection,IMySQLDBInfo {
	
	private static Logger logger = Logger.getLogger(MySQLConnectionImpl.class);
	
	//register driver class only once
	static{
		if(StringUtil.isNotEmpty(JDBCDRIVER)){
			try {
				// 注册 JDBC 驱动程序
				Driver driver = (Driver) (Class.forName(JDBCDRIVER).newInstance());
				DriverManager.registerDriver(driver);
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch (SQLException e) {
				e.printStackTrace();
			} 
		}else{
			logger.debug(MsgManager.getInstance()
					.getLocaleString("error.message.jdbcDriverIsNull"));
			throw new JpfException(MsgManager.getInstance()
					.getLocaleString("error.message.jdbcDriverIsNull"),
					JpfException.INFTYPE_ERROR);
		}
	}
	
	@Override
	public Connection getDBConnection() {
		Connection conn = null;
		if(StringUtil.isNotEmpty(URL) && StringUtil.isNotEmpty(USERNAME) 
				&& StringUtil.isNotEmpty(PASSWORD)){
			try {
				conn = DriverManager.getConnection(
						URL, USERNAME, PASSWORD);
				return conn;
			} catch (SQLException e) {
				logger.error(MsgManager.getInstance()
						.getLocaleString("error.message.jdbcInformationsHasNull"));
				throw new JpfException(e.getMessage());
			}
		}
		
		return null;
	}
	
}
