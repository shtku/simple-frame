package com.softline.controller.system;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softline.entity.SysAction;
import com.softline.entity.SysUsers;
import com.softline.service.redis.IRedisService;
import com.softline.service.system.ISystemService;

/**
 * 
 * @author wyh 
 * 
 * */
@Controller
@RequestMapping("/system")
public class SystemController {
	
	@Resource(name = "systemService")
	private ISystemService systemService;
	
	@Resource(name = "redisService")
	private IRedisService redisService;
	
	@ResponseBody
	@RequestMapping(value = "isLogin", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String login(HttpServletRequest request){
		SysUsers user = new SysUsers();
		user.setId(23);
		user.setUserName(request.getParameter("username").toString());
//		user.setPassWord(request.getParameter("password").toString());
		boolean retval = systemService.isLogin(user);
		if(retval){			
			request.getSession().setAttribute("session_users", user);
			//redisService.add(user);
			return "success";
		}else{
			return "fail";
		}
	}

	@RequestMapping("frame_page")
	public String temp_iframe(Map<String ,Object> map,HttpServletRequest request) {

		return "system/index";
	}
	
	
	@RequestMapping("_exit")
	public String _exit(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	private String getMenuJson(List<SysAction> list){
		StringBuffer menuJson = new StringBuffer();
		menuJson.append("<ul class=\"page-sidebar-menu page-header-fixed page-sidebar-menu-closed\" data-keep-expanded=\"false\" data-auto-scroll=\"true\" data-slide-speed=\"200\" style=\"padding-top: 40px\">");
		menuJson.append("<li class=\"sidebar-toggler-wrapper hide\">");
		menuJson.append("<div class=\"sidebar-toggler\">");
		menuJson.append("<span></span>");
		menuJson.append("</div></li>");
		for(SysAction action : list){
			String path = action.getPath();
			Integer id = action.getId();
			if(path == null || path.equals("")){
				menuJson.append("<li class=\"nav-item\">");
				menuJson.append("<a href=\"javascript:;\" class=\"nav-link nav-toggle\">");
				menuJson.append("<i class=\""+action.getPicture()+"\"></i>");
				menuJson.append("<span class=\"title\">"+action.getDescription()+"</span>");
				menuJson.append("<span class=\"selected\"></span>");
				menuJson.append("<span class=\"arrow open\"></span></a>");
				menuJson.append("<ul class=\"sub-menu\">");
				for(SysAction actionSun : list){
					Integer fatherId = actionSun.getParentId();
					if(fatherId!=null && fatherId.equals(id)){
						menuJson.append("<li class=\"nav-item-1\">");
						menuJson.append("<a href=\""+actionSun.getPath()+"\" target=\"mainFrame\" class=\"nav-link\">");
						menuJson.append("<span class=\"title\">"+actionSun.getDescription()+"</span>");
						menuJson.append("</a>");
					}
				}
				menuJson.append("</ul>");
				menuJson.append("</li>");
			}
		}
		menuJson.append("</ul>");
		return menuJson.toString();
	}
}
