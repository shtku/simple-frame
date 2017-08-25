package com.softline.common;

import java.lang.reflect.Field;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * 
 * 记录用户增、删、改操作
 * 
 * @author wyh
 * 
 */

@Aspect
public class OperationLogAspect {
	
/*	@Resource(name ="operationLogService")
//	private IOperationLogService operationLogService;

	private static final Log logger = LogFactory.getLog(OperationLogAspect.class);

	// 声明一个切入点,切入点的名称其实是一个方法
	@Pointcut("execution (* com.softline.service..*.save*(..))")
	private void saveMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.add*(..))")
	private void addMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.create*(..))")
	private void createMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.update*(..))")
	private void updateMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.edit*(..))")
	private void editMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.delete*(..))")
	private void deleteMethod() {
	}
	
	@Pointcut("execution (* com.softline.service..*.remove*(..))")
	private void removeMethod() {
	}
	
	// 声明一个切入点,切入点的名称其实是一个方法
//	@Pointcut("execution (* com.softline.service..*.getHhUsersByEntity*(..))")
//	private void getMethod() {
//	}
//	
//	@AfterReturning("getMethod()")
//	public void doAfterReturningGet(JoinPoint joinPoint) throws Exception {
//		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
//		HttpSession session = request.getSession();
//		this.logOperation(joinPoint, session, "登录");
//	}
	
	@AfterReturning("saveMethod()")
	public void doAfterReturningSave(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "更新");
	}
	
	@AfterReturning("addMethod()")
	public void doAfterReturningAdd(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "更新");
	}
	
	@AfterReturning("createMethod()")
	public void doAfterReturningCreate(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "更新");
	}
	
	@AfterReturning("updateMethod()")
	public void doAfterReturningUpdate(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "更新");
	}
	
	@AfterReturning("editMethod()")
	public void doAfterReturningEdit(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "更新");
	}
	
	@Before("deleteMethod()")
	public void doAfterReturningDelete(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "删除");
	}
	
	@Before("removeMethod()")
	public void doAfterReturningRemove(JoinPoint joinPoint) throws Exception {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		this.logOperation(joinPoint, session, "删除");
	}
	
	
	public void logOperation(JoinPoint joinPoint,HttpSession session,String op) throws Exception{
		if(session.getAttribute("session_HhUsers") != null){
			HhUsers loginuser = (HhUsers) session.getAttribute("session_HhUsers");
		
			String met = "请求方法:" + joinPoint.getTarget().getClass().getName() 
					+ "." + joinPoint.getSignature().getName();
	        Object[] arguments = joinPoint.getArgs();
	        if(arguments.length > 0){
	        	Class c = arguments[0].getClass();
	        	Field[] fields = c.getDeclaredFields();
		        for(Field f : fields){
		        	f.setAccessible(true);
		        	String name = f.getName();
		        	if(name.equalsIgnoreCase("id")||name.equalsIgnoreCase("basicId")||name.equalsIgnoreCase("financeId")||name.equalsIgnoreCase("pledgeId")||name.equalsIgnoreCase("manageId")){
		        		HhOperationLog hhOperationLog = new HhOperationLog();
		        		String field = f.toString().substring(f.toString().lastIndexOf(".")+1);
		                hhOperationLog.setName(loginuser.getVcName());
		                hhOperationLog.setOperationTime(Common.getDate(new Date(),"yyyy-MM-dd HH:mm:ss"));
		                hhOperationLog.setModel(c.getName());
		                hhOperationLog.setDescription(op+field+"为"+f.get(arguments[0])+"的记录,"+met);
		                operationLogService.logHhOperationLogList(hhOperationLog);
		        	}
		        }
	        }
	      
		}
//		String method = joinPoint.getSignature().getName();
//		if(method.equals("getHhUsersByEntity")){
////			String met = "请求方法:" + joinPoint.getTarget().getClass().getName() 
////					+ "." + joinPoint.getSignature().getName();
//			Object[] arguments = joinPoint.getArgs();
//	        if(arguments.length > 0){
//	        	HhUsers user = (HhUsers)arguments[0];
//	        	String date = Common.getDate(new Date(),"yyyy-MM-dd HH:mm:ss");
//	        	String met = user.getVcAccount()+"在"+date+"登录系统";
//	        	Class c = arguments[0].getClass();
//	        	Field[] fields = c.getDeclaredFields();
//		        for(Field f : fields){
//		        	f.setAccessible(true);
//		        	String name = f.getName();
//		        	if(name.equalsIgnoreCase("id")||name.equalsIgnoreCase("basicId")||name.equalsIgnoreCase("financeId")||name.equalsIgnoreCase("pledgeId")||name.equalsIgnoreCase("manageId")){
//		        		HhOperationLog hhOperationLog = new HhOperationLog();
//		        		String field = f.toString().substring(f.toString().lastIndexOf(".")+1);
//		                hhOperationLog.setName(user.getVcAccount());
//		                hhOperationLog.setOperationTime(date);
//		                hhOperationLog.setModel(c.getName());
//		                hhOperationLog.setDescription(op+"记录:"+met);
//		                operationLogService.logHhOperationLogList(hhOperationLog);
//		        	}
//		        }
//	        }
//		}
	}*/
}
	
	
	
