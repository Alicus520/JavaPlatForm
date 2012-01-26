package cn.com.jpf.common.datasource.impl;

import java.sql.Connection;

import org.junit.Test;


public class TestDataSourcePool {

	@Test
	public void testDataSourcePool() throws Exception{
		DataSourcePool connPool 
        	= DataSourcePool.getDataSourcePoolInstance();
		
		Connection conn = connPool.getConnection();
		if(conn != null){
			System.out.println("conn is not null");
		}else{
			System.out.println("conn is null");
		}
		
		connPool.returnConnection(conn);
	}
	
}
