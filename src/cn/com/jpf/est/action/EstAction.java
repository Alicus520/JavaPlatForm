package cn.com.jpf.est.action;

import java.io.IOException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.com.jpf.common.action.AbstractCommonActon;
import cn.com.jpf.common.message.MsgManager;
import cn.com.jpf.common.utils.JsonUtil;
import cn.com.jpf.common.utils.StringUtil;
import cn.com.jpf.est.service.EstService;

public class EstAction extends AbstractCommonActon {
	
	public static Logger logger = Logger.getLogger(EstAction.class);
	
	private EstService estService = null;
	
	public EstService getEstService() {
		return estService;
	}

	public void setEstService(EstService estService) {
		this.estService = estService;
	}

	public ActionForward removeMultipleLine(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//Get JSON Parameters 
		JSONObject jsonParameters = JsonUtil.getJsonInfoFromRequest(request);
		
		String sourceStr = null;
		String resultStr = null;
		try {
			sourceStr = jsonParameters.getString("source");
			if(StringUtil.isNotEmpty(sourceStr)){
				resultStr = getEstService().removeMultipleLine(sourceStr);
			}else{
				logger.debug(MsgManager.getInstance()
						.getLocaleString("error.message.parameterObjectIsNull"
								,new String[]{"source"}));
				
			}
			
			String json = "[{\"data\":\"" + resultStr + "\"}]";
			
			response.getWriter().print(json.replace("\r\n", "<br/>"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
