package cn.com.jpf.common.utils;

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
}
