package com.softline.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.softline.entity.SysUsers;

public class SessionInterceptor implements HandlerInterceptor {
	private static final String LOGIN_URL = "/";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

	@Override  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {
        HttpSession session=request.getSession(true);  
        //session中获取用户名信息  
        SysUsers users = (SysUsers) session.getAttribute("session_users");
        if (users==null) {  
            /*response.sendRedirect(request.getSession().getServletContext().getContextPath()+LOGIN_URL);*/
            response.getWriter().print("<html><script type='text/JavaScript'> top.location.href='/simple_frame'</script></html>");
            response.setContentType("text/html");
            return false;
        }
        
        //获取包含needRecord=1的url，并将它放入堆栈中，堆栈放入session中
        UrlService urlService = UrlService.getInstance();
		if(request.getParameterMap().isEmpty()){
			urlService.clearUrl(request);
			urlService.pushUrl(request);
		}else{
			urlService.addUrl(request);
		}
		//debugUrlManager(request);
        return true;
     }
}
