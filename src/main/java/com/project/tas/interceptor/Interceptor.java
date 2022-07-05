package com.project.tas.interceptor;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.project.tas.service.LogsService;
import com.project.tas.vo.LogsVO;

@Component
public class Interceptor implements HandlerInterceptor {

	@Autowired
	private LogsService logsService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String url = request.getRequestURI();
		String ip = request.getHeader("X-forwarded-For");
		String httpMethod = request.getRemoteAddr();

		if (ip == null) {
			ip = request.getRemoteAddr();
		}

		System.out.println("ip : " + ip);
		System.out.println("url :  " + url);
		System.out.println("httpMethod : " + httpMethod);

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA);
		String time = formatter.format(Calendar.getInstance().getTime());
		System.out.println("time : " + time);

		LogsVO vo = new LogsVO();
		vo.setUrl(url);
		vo.setIp(ip);
		vo.setHttpMethod(httpMethod);
		vo.setCreateAt(time);

		logsService.setLogs(vo);

		// session check (isLogin)
		HttpSession session = request.getSession();
		if (session.getAttribute("userId") == null) {
			// session 값이 없으면 다시 요청
//			response.sendRedirect("/login");
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

}
