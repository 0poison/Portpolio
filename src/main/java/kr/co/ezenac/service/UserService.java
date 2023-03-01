package kr.co.ezenac.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.mapper.UserMapper;

@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
//	@Autowired
//	private PasswordEncoder pwEncoder;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
//	@Override
//	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
//		return (UserDetails) userMapper.selectUserBeanById(userId);
//	}
	
	public boolean checkuserIdExist(String userId) {
		
		String userName = userMapper.checkUserIdExist(userId);
		
		if(userName == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		
//		String pass = joinUserBean.getUserPw();
//		pass = pwEncoder.encode(pass);
//		joinUserBean.setUserPw(pass);
		userMapper.addUserInfo(joinUserBean);
	}
	
//	public boolean confirmUser (String userPw, String pass) {
//		return pwEncoder.matches(userPw, pass);
//	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		
		UserBean tempLoginUserBean2 = userMapper.getLoginUserInfo(tempLoginUserBean);
		
		if(tempLoginUserBean2 != null) {
			loginUserBean.setUserIdx(tempLoginUserBean2.getUserIdx());
			loginUserBean.setUserName(tempLoginUserBean2.getUserName());
			loginUserBean.setUserId(tempLoginUserBean2.getUserId());
			loginUserBean.setUserPw(tempLoginUserBean2.getUserPw());
			loginUserBean.setUserPhone(tempLoginUserBean2.getUserPhone());
			loginUserBean.setUserAddress2(tempLoginUserBean2.getUserAddress2());
			loginUserBean.setUserAddress3(tempLoginUserBean2.getUserAddress3());
			loginUserBean.setUserLogin(true);
		}
	}
	
	public void getModifyUserInfo(UserBean modifyUserBean) {
		
		UserBean tempModifyUserBean = userMapper.getModifyUserInfo(loginUserBean.getUserIdx());
		
		modifyUserBean.setUserId(tempModifyUserBean.getUserId());
		modifyUserBean.setUserName(tempModifyUserBean.getUserName());
		modifyUserBean.setUserIdx(loginUserBean.getUserIdx());
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		
		modifyUserBean.setUserIdx(loginUserBean.getUserIdx());
		
		userMapper.modifyUserInfo(modifyUserBean);
	}
	
	
	public UserBean idSearch(UserBean searchBean) {
		
		return userMapper.idSearch(searchBean);
	}
	
	public UserBean pwSearch(UserBean searchBean) {
		
		return userMapper.pwSearch(searchBean);
	}
	
	
	public void getDeleteUserId(UserBean deleteBean) {
		
		UserBean tempDeleteUserBean = userMapper.getDeleteUserId(loginUserBean.getUserIdx());
		
		deleteBean.setUserId(tempDeleteUserBean.getUserId());
		deleteBean.setUserIdx(loginUserBean.getUserIdx());
	}
	
	public boolean deleteUser(UserBean deleteBean) {
		
		UserBean ub = userMapper.getLoginUserInfo(deleteBean);
		
		if (ub != null && ub.getUserPw().equals(deleteBean.getUserPw()) && userMapper.deleteUser(deleteBean)==1) {
			loginUserBean.setUserLogin(false);
			return true;
		}
		return false;
		
	}
	
}
