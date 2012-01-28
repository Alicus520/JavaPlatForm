package cn.com.jpf.est.service;

import org.junit.Test;

public class TestEstService {
	
	@Test
	public void testRemoveMultipleLine(){
		
		EstService estService = new EstService();
		String sourceStr = "123\n123\n456\n456";
		
		String result = estService.removeMultipleLine(sourceStr);
		
		System.out.println(result);
		
	}
}
