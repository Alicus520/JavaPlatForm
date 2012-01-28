package cn.com.jpf.est.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import cn.com.jpf.ibatis.service.BaseService;

public class EstService extends BaseService{
	
	public static Logger logger = Logger.getLogger(EstService.class);
	
	/**
	 * Remove Multiple Line From textarea 
	 * @param sourceStr String to deal with
	 * @return String
	 */
	public String removeMultipleLine(String sourceStr){
		StringBuffer resultStr = new StringBuffer();
		
		//base on chromium browser
		String[] splitStr = sourceStr.split("\\n");
		
		List<String> source = new ArrayList<String>();
		
		source = Arrays.asList(splitStr);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		for(String item : source){
			resultMap.put(item, null);
		}
		
		Set<String> set = resultMap.keySet();
		Iterator<String> it = set.iterator();
		
		while(it.hasNext()){
			resultStr.append(it.next().toString() + "\n");
		}
		
		return resultStr.toString();
	}
}
