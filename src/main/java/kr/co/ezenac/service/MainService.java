package kr.co.ezenac.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.ContentBean;
import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.mapper.AdminMapper;

@Service
public class MainService {

	@Autowired
	private AdminMapper adminMapper;

	public List<ContentBean> getMainList(int boardInfoIdx) {
		RowBounds rowBounds = new RowBounds(0, 5);
		return adminMapper.getContentList(boardInfoIdx, rowBounds);
	}

	public List<UserBean> getUserList() {
		return adminMapper.getUserList();
	}

}