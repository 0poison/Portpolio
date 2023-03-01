//package kr.co.ezenac.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import kr.co.ezenac.service.UserService;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//	@Autowired
//	private PasswordEncoder passwordEncoder;
//
//	@Autowired
//	private UserService authService;
//
//	@Override
//	protected void configure(AuthenticationManagerBuilder builder) throws Exception {
//		builder.userDetailsService(authService).passwordEncoder(passwordEncoder);
//	}
//
//}
