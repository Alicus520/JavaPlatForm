package cn.com.jpf.common.utils;

import java.io.File;
import java.io.UnsupportedEncodingException;

/**
 * @author administrator
 *
 */
public final class StringUtil {
	
	/**
	 * check posted String object is null or not
	 * @param str
	 * @return boolean 
	 */
	public static boolean isNotEmpty(String str){
		return (str != null && !"".equals(str) && !"null".equals(str));
	}
	
	public static String getProjectAbsolutePath(){
		File file = new File("");
		return file.getAbsolutePath();
	}
	
	public static int getByteLength(String str){
		int length = 0;
		
		if(!isNotEmpty(str)){
			return length;
		}
		
		try {
			length = str.getBytes("GBK").length;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return length;
	}
	
	public static String getSubString(String str, int length){
		if(isNotEmpty(str)){ return null; }
		
		if(0 >= length){ return null; }
		
		final int byteLength = getByteLength(str);
		
		if(byteLength > length) { return str; }
		
		StringBuffer sb = new StringBuffer(str);
		sb.setLength(length);
		
		while(getByteLength(str) > length){
			sb.deleteCharAt(sb.length() -1);
		}
		
		return sb.toString();
	}
	
	public static String convertISOToUTF8(String str){
		try {
			if(isNotEmpty(str)){
				return new String(str.getBytes("ISO-8859-1"),"UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String ConvertTtmlToString(String str){
		String result = str;
		result = result.replaceAll("\r\n", "<br/>");
		result = result.replaceAll("&nbsp;"," ");
		
		return result;
	}
	
	public static Float isFieldNull(Float value){
		if(isNotEmpty(String.valueOf(value))){
			return value;
		}else{
			return 0.0f;
		}
		
	}
}
