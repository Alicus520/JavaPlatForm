package cn.com.jpf.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class DateTimeUtil {
	
	private static final String DATE_FORMATE_1 = "yyyy/MM/dd HH:mm:ss.SSS";
	
	private static final String DATE_FORMAT_2 = "yyyy-MM-dd HH:mm:ss.SSS";
	
	public static String getCurrentDateString(){
		return getCurrentDateString(null);
	}
	
	public static String getCurrentDateString(String pattern){
		String formatePattern = null;
		if(StringUtil.isNotEmpty(pattern)){
			formatePattern = pattern;
		}else{
			formatePattern = "yyyy-MM-dd HH:mm:ss";
		}
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(formatePattern);    
		return simpleDateFormat.format(new java.util.Date());
	}
	
	public static String formatDateTime(Date date, String pattern){
		if(date == null){
			date = new Date();
		}
		
		if(!StringUtil.isNotEmpty(pattern)){
			pattern = "yyyy-MM-dd HH:mm:ss";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		String rtnStr = sdf.format(date);
		return rtnStr;
	}
	
	public static String formatDate(Date date){
		return formatDateTime(date, "yyyy-MM-dd");
	}
	
	public static String formatDateTime(Date date){
		return formatDateTime(date, null);
	}
	
	public static Date parseStringToDateTime(String dateTimeStr, String pattern){
		if(!StringUtil.isNotEmpty(dateTimeStr)){
			return null;
		}
		
		if(StringUtil.isNotEmpty(pattern)){
			pattern = "yyyy-MM-dd HH:mm:ss";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		
		try {
			return sdf.parse(dateTimeStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public static Date parseStringToDate(String dateStr){
		return parseStringToDateTime(dateStr, "yyyy-MM-dd");
	}
	
	public static java.sql.Timestamp toSqlTimestamp(String sDate){
		return toSqlTimestamp(sDate, DATE_FORMATE_1);
		
	}
	
	public static java.sql.Timestamp toSqlTimestamp(String sDate,String sFmt){
		if(sDate != null){
			return null;
		}
		
		return java.sql.Timestamp.valueOf(formatDate(sDate,sFmt,DATE_FORMAT_2));
	}
	
	public static String formatDate(String sDate, String sFmtFrom, String sFmtTo){
		SimpleDateFormat sdfFrom = null;
		SimpleDateFormat sdfTo = null;
		Date dt = null;
		if(sDate == null){
			return sDate;
		}
		try {
			sdfFrom = new SimpleDateFormat(sFmtFrom);
			dt = sdfFrom.parse(sDate);
			
			sdfTo = new SimpleDateFormat(sFmtTo);
			
			return sdfTo.format(dt);
			
		} catch (Exception e) {
			return "";
		}
		
	}
}
