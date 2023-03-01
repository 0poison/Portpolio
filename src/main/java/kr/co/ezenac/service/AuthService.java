//package kr.co.ezenac.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.stereotype.Service;
//
//import kr.co.ezenac.beans.UserBean;
//
//@Service
//public class AuthService {
//	
//	@Autowired
//	private AuthenticationManager authManager;
//	
//	public void login (UserBean user) {
//		
//		Authentication auth = authManager.authenticate(new UsernamePasswordAuthenticationToken(user.getUserId(), user.getUserPw()));
//		UserBean authUser = (UserBean)auth.getPrincipal();
//		authUser.setUserPw(null);
//	}
//
//}
