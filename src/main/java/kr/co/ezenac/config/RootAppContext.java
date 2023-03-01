package kr.co.ezenac.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.UserBean;

// 프로젝트 작업시 사용할 bean을 정의하는 클래스
@Configuration
public class RootAppContext {
	@Bean("loginAdminBean")
	@SessionScope
	public AdminBean loginAdminBean() {
		return new AdminBean();
	}

	@Bean("loginUserBean")
	@SessionScope
	public UserBean loginUserBean() {
		return new UserBean();
	}
}
