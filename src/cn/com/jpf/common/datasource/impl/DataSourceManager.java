package cn.com.jpf.common.datasource.impl;

import java.sql.Connection;
import java.util.List;

import cn.com.jpf.common.datasource.IDataSourceManager;

public class DataSourceManager implements IDataSourceManager {

	private static DataSourceManager dsm = null;
	
	public synchronized static DataSourceManager getInstance(){
		
		if(dsm != null){
			dsm = new DataSourceManager();
		}
		
		return dsm;
	}
	
	@Override
	public int applychanges(List<?> list) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int executeQuerySql(String sql) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int executeUpdateSql(String sql) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Connection getDataSourceConn() {
		// TODO Auto-generated method stub
		return null;
	}

}
