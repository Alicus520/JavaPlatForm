package cn.com.jpf.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public abstract class AbstractCommonActon extends DispatchAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		try {
			return this.executeInner(mapping, form, request, response);
		} catch (Exception e) {
			generateErrJson(e, request, response);
		}
		return super.execute(mapping, form, request, response);
	}
	
	public ActionForward executeInner(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json; charset=utf-8");
		return super.execute(mapping, form, request, response);
	}
	
	private void generateErrJson(Exception e, HttpServletRequest request, 
			HttpServletResponse response){
		
	}
}
