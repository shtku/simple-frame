package com.softline.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.Stack;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@SuppressWarnings("unchecked")
public class UrlService {

	private static final Log logger = LogFactory.getLog(UrlService.class);

	/**
	 * @author �� �(Jessdy) ��д���ڣ�Mar 6, 2008
	 * 
	 * Singleton
	 */
	private static UrlService instance = new UrlService();

	private UrlService() {
	}

	public static UrlService getInstance() {
		return instance;
	}

	/**
	 * ��session�м�����ʵ�url��ַ
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 6, 2008
	 * 
	 * @param request
	 */
	public void addUrl(HttpServletRequest request) {

		String url = copyUrl(request);
		if (url != null && !"".equals(url)
				&& "1".equals(request.getParameter("needRecord"))) {
			Stack<String> urlStack = (Stack<String>) request.getSession()
					.getAttribute("url");
			if (urlStack.isEmpty() || !url.toString().equals(urlStack.peek())) {
				urlStack.push(url.toString());
			}
			request.getSession().setAttribute("url", urlStack);
		}
	}

	/**
	 * ��session��ȡ��url��ַ������session���Ƴ�
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 6, 2008
	 * 
	 * @param request
	 * @return
	 */
	public String getUrl(HttpServletRequest request, int times) {
		Stack<String> urlStack = (Stack<String>) request.getSession()
				.getAttribute("url");
		String url = "";
		try {
			for (int i = 0; i < times; i++) {
				url = urlStack.pop();
			}
			if(urlStack.isEmpty()){//���stack����ȡ���ˣ������һ����stack
				urlStack.push(url);
			}
			request.getSession().setAttribute("url", urlStack);
			int begin = url.indexOf(request.getContextPath());
			url = url.substring(begin + request.getContextPath().length()+1);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			//url = "index.jsp";
		}

		return url;
	}

	/**
	 * ���session�е�url
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 12, 2008
	 * 
	 * @param request
	 */
	public void clearUrl(HttpServletRequest request) {
		request.getSession().setAttribute("url", new Stack<String>());
	}

	/**
	 * ȡ�������ʵ���ַ
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 12, 2008
	 * 
	 * @param request
	 * @return
	 */
	public String peekUrl(HttpServletRequest request) {
		Stack<String> urlStack = (Stack<String>) request.getSession()
				.getAttribute("url");
		return urlStack.peek();
	}

	/**
	 * ��ַ��ջ
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 12, 2008
	 * 
	 * @param request
	 */
	public void pushUrl(HttpServletRequest request) {
		Stack<String> urlStack = (Stack<String>) request.getSession()
				.getAttribute("url");
		String url = copyUrl(request);
		urlStack.push(url);
	}

	/**
	 * �õ���ǰ�����url�������г�times�����
	 * 
	 * @author �� �(Jessdy) ��д���ڣ�Mar 13, 2008
	 * 
	 * @param request
	 * @return
	 */
	private String copyUrl(HttpServletRequest request) {
		// if (request.getQueryString() != null) {
		// url = url.append("?" + request.getQueryString());
		// }
		StringBuffer url = request.getRequestURL();
		Set<String> ks = request.getParameterMap().keySet();
		url.append("?ts=DD");
		for (Iterator<String> iterator = ks.iterator(); iterator.hasNext();) {
			String key = iterator.next();
			if ("times".equals(key))
				continue;
			try {
				url.append("&" + key + "=" + URLEncoder.encode(request.getParameter(key),"UTF-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return url.toString();
	}
}
