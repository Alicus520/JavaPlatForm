package cn.com.jpf.common.exception;

/**
 * JavaPlatForm Project self-defination Exception object 
 * 
 * @author Alicus
 * @date 2012-1-12
 * @version 0.1
 * 
 */
public class JpfException extends RuntimeException {
	
	/**
	 * generate serialVersionUID automatically
	 */
	private static final long serialVersionUID = -77451080085341862L;
	
	/** 
	 * Warning type
	 * this type information will not be written to log file
	 */
	public static final int INFTYPE_WARNING = 1;
	
	/**
	 * Error type
	 * this type information will be written to log file
	 */
	public static final int INFTYPE_ERROR = 2;
	
	/**
	 * Information type
	 * Default type is warning
	 */
	private int infType = INFTYPE_WARNING;
	
	private boolean showDetail = false;
	
	private String clientCode = "";
	
	public JpfException(){}
	
	public JpfException(String message){
		super(message);
		this.setInfType(INFTYPE_WARNING);
	}
	
	public JpfException(Throwable cause){
		super(cause);
		this.setInfType(INFTYPE_ERROR);
	}
	
	public JpfException(String message, int infType){
		super(message);
		this.setInfType(infType);
		
	}
	
	public JpfException(Throwable cause, int infType){
		super(cause);
		this.setInfType(infType);
	}
	
	public JpfException(String message, Throwable cause, int infType){
		super(message,cause);
		this.setInfType(infType);
	}
	
	public int getInfType() {
		return infType;
	}

	public void setInfType(int infType) {
		this.infType = infType;
	}

	public boolean isShowDetail() {
		return showDetail;
	}

	public void setShowDetail(boolean showDetail) {
		this.showDetail = showDetail;
	}
	
	public String getClientCode() {
		return clientCode;
	}

	public void setClientCode(String clientCode) {
		this.clientCode = clientCode;
	}
}
