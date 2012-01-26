package cn.com.jpf.common.datasource;

import java.sql.Connection;

public interface IDataSourceConnection {
	
	public Connection getDBConnection();
}
