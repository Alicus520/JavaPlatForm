package cn.com.jpf.common.datasource;

public interface IDataSourceServiceFactory {
	
	public IDataSourceManager getDataSourceManager();
	
	public IDataSourcePool getDataSourcePool();
	
	
}
