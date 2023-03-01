package kr.co.ezenac.interceptor;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.UserBean;
import lombok.extern.log4j.Log4j2;

@Log4j2
public class CheckLoginInterceptor implements HandlerInterceptor, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserBean loginUserBean;
	private AdminBean loginAdminBean;

	public CheckLoginInterceptor(AdminBean loginAdminBean) {
		this.loginAdminBean = loginAdminBean;
	}

	public CheckLoginInterceptor(UserBean loginUserBean) {
		this.loginUserBean = loginUserBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (loginAdminBean != null && !loginAdminBean.isAdminLogin()) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/admin/not_login");
			return false;
		}
		if (loginUserBean != null && loginUserBean.isUserLogin() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/user/not_login");
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
		if (loginUserBean.isUserLogin()) {
			request.getSession().setAttribute("loginUser", loginUserBean);
			log.info("아이디: {}", loginUserBean.getUserId());
		}

	}
}
