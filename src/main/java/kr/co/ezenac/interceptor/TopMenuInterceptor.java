package kr.co.ezenac.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.BoardInfoBean;
import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.service.AdminService;

public class TopMenuInterceptor implements HandlerInterceptor {

	// 인터셉터는 Bean 자동 주입이 안된다.

	private AdminService topMenuService;
	private AdminBean loginAdminBean;
	private UserBean loginUserBean;

	// 자동 주입이 안되어 객체 생성 후 넣어준다.

	public TopMenuInterceptor(AdminService topMenuService, AdminBean loginAdminBean, UserBean loginUserBean) {
		this.topMenuService = topMenuService;
		this.loginAdminBean = loginAdminBean;
		this.loginUserBean = loginUserBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		request.setAttribute("loginAdminBean", loginAdminBean);
		request.setAttribute("loginUserBean", loginUserBean);

		return true;
	}

}
