package com.project.tas.interceptor;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.project.tas.service.LogsService;
import com.project.tas.vo.LogsVO;

@Component
public class Interceptor implements HandlerInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(Interceptor.class);
	
	@Autowired
	private LogsService logsService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {

		String url = request.getRequestURI();
		String ip = request.getHeader("X-forwarded-For");
		String httpMethod = request.getMethod();
		if (ip == null)
			ip = request.getRemoteAddr();

		logger.info("Hello World");
		logger.info("client IP : "+ip);
		logger.info("request URL : "+url);
		logger.info("request HTTPMethod : "+httpMethod);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA);
		String time = formatter.format(Calendar.getInstance().getTime());

		LogsVO vo = new LogsVO();
		vo.setUrl(url);
		vo.setIp(ip);
		vo.setHttpMethod(httpMethod);
		vo.setCreateAt(time);

		logsService.setLogs(vo);

		HttpSession session = request.getSession();
		if(session.getAttribute("userId") == null) {
//			response.sendRedirect("/login"); // session값이 없으면 "/login"경로로 redirect
			return false; // 원래는 redirect로 바로 넘어야야하는데 return true로 돼서 false추가
		}
		
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}
