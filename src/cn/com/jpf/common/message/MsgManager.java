package cn.com.jpf.common.message;

import java.util.Hashtable;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.apache.struts.util.MessageResources;
import org.apache.struts.util.MessageResourcesFactory;

import cn.com.jpf.common.exception.JpfException;
import cn.com.jpf.common.utils.StringUtil;

/**
 * Messge Manager class
 * @author Alicus
 * @date 2012-1-12
 * @version 0.1
 */
public final class MsgManager {
	
	private static Logger logger = Logger.getLogger(MsgManager.class);
	
	/**
	 * Default Message Property's name 
	 * The file is in src folder 
	 */
	private static final String MESSAGE_DEFAULT = "MessageResources";
	
	/**
	 * Message Handler Object
	 */
	private static Hashtable<String, MsgManager> messagesBundles = new Hashtable<String, MsgManager>();
	
	/**
	 * Defualt Locale type-- English
	 */
	private final Locale defaultLocale = Locale.ENGLISH;
	
	/**
	 * MessageResources Object
	 */
	private MessageResources resources = null;
	
	/**
	 * Message Bundle Name
	 * Default name is MessageResources
	 */
	private String bundleName = null;

	public MsgManager(String newBundleName, MessageResources newResouce){
		this.resources = newResouce;
		setBundleName(newBundleName);
	}
	
	/**
	 * Get Instance by Singleton Model 
	 * @return MsgManager
	 */
	public final static MsgManager getInstance(){
		return MsgManager.getInstance(MsgManager.MESSAGE_DEFAULT);
	}
	
	/**
	 * overload from getInstance method
	 * @param bundleName
	 * @return
	 */
	public final static MsgManager getInstance(String bundleName){
		if(bundleName == null){
			bundleName = MESSAGE_DEFAULT;
		}
		
		MsgManager object = 
			(MsgManager)MsgManager.messagesBundles.get(bundleName);
		
		if(object == null){
			MsgManager.createBundle(bundleName);
			
			object = (MsgManager)MsgManager.messagesBundles.get(bundleName);
		}
		
		return object;
	}
	
	/**
	 * create Resource By PropertyName
	 * @param propertyFileName
	 */
	public final static void createBundle(String propertyFileName){
		if(propertyFileName == null){
			throw new JpfException(
					MsgManager.getInstance().getLocaleString("error.message.nopropertyfilename"));
		}
		
		MessageResources res = null;
		res = MessageResourcesFactory.createFactory().createResources(propertyFileName);
		res.setReturnNull(true);
		
		MsgManager object = new MsgManager(propertyFileName,res);
		MsgManager.addBundle(object);
	}
	
	/**
	 * add a bundle
	 * @param object
	 */
	private static void addBundle(MsgManager object){
		String bundleName = object.getBundleName();
		
		if(MsgManager.messagesBundles.get(bundleName) != null){
			logger.debug(MsgManager.getInstance()
					.getLocaleString("warn.message.bundleNameIsExists"));
		}else{
			MsgManager.messagesBundles.put(bundleName, object);
		}
		
	}
	
	public String getLocaleString(String key){
		return this.getLocaleString(key, defaultLocale);
	}
	
	public String getLocaleString(String key, Locale locale){
		String result = this.resources.getMessage(locale, key);
		if(StringUtil.isNotEmpty(result)){
			return result;
		}else{
			return key;
		}
	}
	
	public String getLocaleString(String key, Object[] args){
		String result = this.resources.getMessage(key, args);
		return result;
		
	}
	
	public String getLocaleString(String key, Locale locale, Object[] args){
		String result = this.resources.getMessage(locale, key, args);
		return result;
	}
	
	public String getBundleName() {
		return bundleName;
	}

	public void setBundleName(String bundleName) {
		this.bundleName = bundleName;
	}
}
