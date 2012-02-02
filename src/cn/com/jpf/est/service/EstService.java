package cn.com.jpf.est.service;

import java.util.ArrayList;

import java.util.Arrays;
import java.util.List;

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
		
		List<String> result = new ArrayList<String>();
		for(String item : source){
			if(!result.contains(item)){
				result.add(item);
			}
		}
		
		for(String item : result){
			resultStr.append(item + "\r\n");
		}
		
		return resultStr.toString();
	}
}
