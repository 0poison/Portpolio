package kr.co.ezenac.mapper;

import kr.co.ezenac.beans.UserBean;

public interface UserMapper {

	String checkUserIdExist(String userId);
	
	UserBean selectUserBeanById(String userId);

	int addUserInfo(UserBean joinUserBean);

	UserBean getLoginUserInfo(UserBean tempLoginUserBean);

	UserBean getModifyUserInfo(int userIdx);

	void modifyUserInfo(UserBean modifyUserBean);

	UserBean idSearch(UserBean searchBean);

	UserBean pwSearch(UserBean searchBean);

	UserBean getDeleteUserId(int userIdx);

	int deleteUser(UserBean deleteBean);

}