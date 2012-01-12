package cn.com.jpf.common.datasource;

import java.sql.Connection;
import java.util.List;

public interface IDataSourceManager {

	public Connection getDataSourceConn();
	
	public int executeQuerySql(String sql);
	
	public int executeUpdateSql(String sql);
	
	public int applychanges(List<?> list);
	
	
}
