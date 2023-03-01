//package kr.co.ezenac.provider;
//
//import java.util.ArrayList;
//import java.util.Collection;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.stereotype.Component;
//
//import io.jsonwebtoken.Jwts;
//
//@Component
//public class JwtTokenProvider {
//	
//	@Value("jwt.secret")
//	private String secretKey;
//	
//	@Autowired
//	private UserDetailsService uds;
//	
//	public Authentication getAuthentication(String token) {
//		UserDetails userDetails = uds.loadUserByUsername(this.getUserInfo(token));
////		UserBean ub = (UserBean) userDetails;
//		Collection<GrantedAuthority> authorities = new ArrayList<>();
//		
//		return new UsernamePasswordAuthenticationToken(userDetails, "", authorities);
//	}
//	
//	public String getUserInfo(String token) {
//		return (String) Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().get("userId");
//	}
//
//}
