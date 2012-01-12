/**
 * 
 */
package cn.com.jpf.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import cn.com.jpf.common.message.GlobalData;

/**
 * Encoding fileter 
 * Default code is utf-8
 * @author Alicus
 * @date 2012-1-12
 * @version 0.1
 * 
 */
public class CharacterEncodingFilter implements Filter {

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
			if(request instanceof HttpServletRequest){
				HttpServletRequest httpRequest = (HttpServletRequest)request;
//				HttpServletResponse httpResponse = (HttpServletResponse)response;
				httpRequest.setCharacterEncoding(GlobalData.REQUEST_ENCODE);
			}else{
				chain.doFilter(request, response);
			}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
