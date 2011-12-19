package cn.com.jpf.common.exception;

public class JpfException extends RuntimeException {
	
	/**
	 * generate serialVersionUID automatically
	 */
	private static final long serialVersionUID = -77451080085341862L;
	
	public static final int INFTYPE_WARNING = 1;
	
	public static final int INFTYPE_ERROR = 2;
	
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
