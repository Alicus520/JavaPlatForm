package cn.com.jpf.common.datasource.impl;

import cn.com.jpf.common.datasource.IDataSourceServiceFactory;

public class DataSourceServiceFactory implements IDataSourceServiceFactory {

	private static DataSourceServiceFactory dsf = null;
	
	public static synchronized DataSourceServiceFactory getInstance(){
		if(dsf == null){
			dsf = new DataSourceServiceFactory();
		}
		
		return dsf;
	}
	
	@Override
	public DataSourceManager getDataSourceManager() {
		return DataSourceManager.getInstance();
	}
	
	@Override
	public DataSourcePool getDataSourcePool() {
		return new DataSourcePool("com.mysql.jdbc.Driver"
                ,"jdbc:mysql://localhost:3306/javaplatform"
                ,"root"
                ,"root");
	}

}
