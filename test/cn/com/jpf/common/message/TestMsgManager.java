package cn.com.jpf.common.message;

import org.apache.log4j.Logger;
import org.junit.Test;

public class TestMsgManager {

	private static Logger logger = Logger.getLogger(TestMsgManager.class);
	
	@Test
	public void testGetMessageInfoWithoutParameters(){
		String[] params = new String[]{"meijinlong"};
		
		String name  = MsgManager.getInstance().getLocaleString("hello",params);
		
		logger.debug(name);
		
	}
	
	public void testGetMessageInfoWithParameters(){
		
	}
	
	
}
