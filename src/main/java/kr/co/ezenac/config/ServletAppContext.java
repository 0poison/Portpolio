package kr.co.ezenac.config;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.UserBean;
//import kr.co.ezenac.interceptor.CheckLoginInterceptor;
import kr.co.ezenac.interceptor.TopMenuInterceptor;
import kr.co.ezenac.service.AdminService;

// Spring MVC 프로젝트에 관련된 설정을 하는 클래스
@Configuration
// Controller 어노테이션이 셋팅되어 있는 클래스를 Controller로 등록한다.
@EnableWebMvc
// 스캔할 패키지를 지정한다.
public class ServletAppContext implements WebMvcConfigurer {

	@Autowired
	private AdminService adminService;

	@Resource(name = "loginAdminBean")
	private AdminBean loginAdminBean;
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	// Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙혀주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}

	// 정적 파일의 경로를 매핑한다.
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		WebMvcConfigurer.super.addInterceptors(registry);

//		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(adminService, loginAdminBean, loginUserBean);
//		InterceptorRegistration reg1 = registry.addInterceptor(topMenuInterceptor);
//		reg1.addPathPatterns("/**");
//		CheckLoginInterceptor checkUserLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
//		InterceptorRegistration reg = registry.addInterceptor(checkUserLoginInterceptor);
//		reg.addPathPatterns("/product/**", "/support/**", "/user/logout", "/user/modify", "/user/delete");
////		reg.excludePathPatterns("/user/join", "/user/join_pro", "/user/users/checkUserIdExist", "/user/login", "/user/not_login", "/user/users/login_pro");
//		CheckLoginInterceptor checkAdminLoginInterceptor = new CheckLoginInterceptor(loginAdminBean);
//		InterceptorRegistration reg2 = registry.addInterceptor(checkAdminLoginInterceptor);
//		reg2.addPathPatterns("/admin/**");
//		reg2.excludePathPatterns("/admin/login", "/admin/not_login", "/admin/login_pro", "admin/login_sucess");
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}

	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setDefaultEncoding("UTF-8");
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
	}

	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}