package cn.com.jpf.common.utils;

import java.io.File;
import java.net.URISyntaxException;
import java.util.Iterator;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import cn.com.jpf.common.message.MsgManager;

public final class XMLUtil {
	
	/**
	 * The logger for this file
	 */
	private static Logger logger = Logger.getLogger(XMLUtil.class);
	
	/**
	 * Get DB Flag from xml config file
	 * @param fileName xml file's name
	 * @return String DB flag
	 */
	public static String getDBCoinfigInfoFromXML(String fileName){
		if(StringUtil.isNotEmpty(fileName)){
			String dbFlag = "";
			
			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
			logger.debug(MsgManager.getInstance()
					.getLocaleString("message.file.url", 
							new String[]{classLoader.getResource(fileName).getPath()}));
			File f = null;
			try {
				f = new File(classLoader.getResource(fileName).toURI());
				SAXReader reader = new SAXReader();
				Document doc = reader.read(f);
				Element root = doc.getRootElement();
				Element foo; 
				for (Iterator<?> i = root.elementIterator("property"); i.hasNext();) {
					foo = (Element) i.next();
					dbFlag = foo.attributeValue("value");
				} 
			} catch (URISyntaxException e) {
				logger.error(MsgManager.getInstance()
						.getLocaleString("error.message.URISyntaxException") + e.getMessage());
			} catch (DocumentException e) {
				logger.error(MsgManager.getInstance()
						.getLocaleString("error.message.DocumentException") + e.getMessage());
			} 
			return dbFlag;
		}else{
			logger.error(MsgManager.getInstance()
					.getLocaleString("error.message.parameterObjectIsNull"));
		}
		
		return null;
	}
}
