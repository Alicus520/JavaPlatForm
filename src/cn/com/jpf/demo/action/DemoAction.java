package cn.com.jpf.demo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import cn.com.jpf.common.action.AbstractCommonActon;
import cn.com.jpf.common.exception.JpfException;
import cn.com.jpf.common.message.MsgManager;

public class DemoAction extends AbstractCommonActon {
	
	public ActionForward getMessageFromResource(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("hello i am in DemoAction ...");
		
		String name  = MsgManager.getInstance().getLocaleString("name");
		
		System.out.println("name from properties is " + name);
		
		throw new JpfException(MsgManager.getInstance().getLocaleString("name"),
				JpfException.INFTYPE_WARNING);
		
//		System.out.println(name);
		
//		return mapping.findForward("succwss");
	}
}
