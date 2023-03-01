package kr.co.ezenac.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.AdminBean;
import kr.co.ezenac.beans.BoardInfoBean;
import kr.co.ezenac.beans.ContentBean;
import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.mapper.AdminMapper;

@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Resource(name = "loginAdminBean")
	private AdminBean loginAdminBean;

	public void getLoginAdminInfo(AdminBean tempLoginAdminBean) {

		AdminBean tempLoginAdminBean2 = adminMapper.getLoginAdminInfo(tempLoginAdminBean);

		if (tempLoginAdminBean2 != null) {
			loginAdminBean.setAdminName(tempLoginAdminBean2.getAdminName());
			loginAdminBean.setAdminLogin(true);
		}
	}

	public UserBean getAllUserInfo(int userIdx) {
		return adminMapper.getAllUserInfo(userIdx);
	}

	public ContentBean getContentInfo(int contentIdx) {
		return adminMapper.getContentInfo(contentIdx);
	}
}