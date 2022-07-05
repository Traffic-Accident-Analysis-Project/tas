package com.project.tas.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.project.tas.interceptor.Interceptor;

@Configuration
public class WebConfig implements WebMvcConfigurer {

	@Autowired
	private Interceptor interceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
//		WebMvcConfigurer.super.addInterceptors(registry);
		registry.addInterceptor(interceptor)
		.excludePathPatterns("/api/v1/logs",
				"/login",
				"/join",
				"/api/v1/login",
				"/api/v1/accident",
				"/api/v1/law",
				"/api/v1/city",
				"/api/v1/road",
				"/api/v1/alcohol",
				"/api/v1/board",
				"/resources/static/css/*",
				"/resources/static/js/*",
				"/accident");
		 
	}
}
