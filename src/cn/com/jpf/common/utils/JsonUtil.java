package cn.com.jpf.common.utils;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import cn.com.jpf.common.exception.JpfException;

public final class JsonUtil {
	
	/**
	 * Transfer String array object to JSON Array object
	 * @param strArr String array object
	 * @return JSONArray 
	 */
	public static JSONArray getJSONArrayFromStrArray(String[] strArr){
		int i,j;
		JSONArray array = new JSONArray();
		if(strArr != null && strArr.length > 0){
			j = strArr.length;
			for(i = 0; i < j; i++){
				array.add(strArr[i]);
			}
		}
		return array;
	}
	
	 /** 
     * get a java object from JSON object 
     * @param jsonString 
     * @param pojoCalss 
     * @return 
     */  
    public static Object getObject2JsonString(String jsonString, Class<?> pojoCalss) {  
    	return null;
    }  
	
    /**
     * get request parameters from HttpServeletRequest Object
     * then return by JSONObject type
     * @param request
     * @return JSON Type Object
     */
    public static JSONObject getJsonInfoFromRequest(HttpServletRequest request){
    	JSONObject jsonObject = new JSONObject(); 
    	try {
			Map<?, ?> paramMap = request.getParameterMap();
			Iterator<?> paramIter = paramMap.keySet().iterator();
			while(paramIter.hasNext()){
				String key = paramIter.next().toString();  
	            String[] values = (String[])paramMap.get(key);  
	            jsonObject.accumulate(key, values[0]);  
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
    	
    	return jsonObject;  
    }
    
    /**
     * return JSON Information to client
     * @param response
     * @param jsonArray
     */
    public static void responseJSONStringToClient(HttpServletResponse response,
    			JSONArray jsonArray){
    	try {
    		response.setHeader("Cache-Control", "no-cache"); 
    		response.setContentType("text/json;charset=UTF-8"); 
    		response.setCharacterEncoding("utf-8");  
    		
			PrintWriter printWriter = response.getWriter();
			printWriter.print(jsonArray);
			printWriter.flush();
			printWriter.close();
		} catch (IOException e) {
			throw new JpfException(e);
		}
    }
    
    public static String object2Json(String str){
    	
    	return null;
    	
    }
    
    public static JSONObject getJSONObject4String(String str){
    	
    	JSONObject jsonObject = new JSONObject();
    	
    	jsonObject.opt(str);
    	
    	return jsonObject;
    }
    
    
}
