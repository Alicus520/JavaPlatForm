package cn.com.jpf.est.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.JSONException;
import org.json.JSONObject;

import cn.com.jpf.common.action.AbstractCommonActon;
import cn.com.jpf.common.exception.JpfException;
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
			
			response.getWriter().print("{success:true;data:" + resultStr + "}");
		} catch (JSONException e) {
			throw new JpfException(e);
		}catch (IOException e) {
			throw new JpfException(e);
		}
		
		return null;
	}
}
