package kr.co.ezenac.service;

import kr.co.ezenac.beans.SupportBean;
import kr.co.ezenac.mapper.SupportMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupportService {

	@Autowired
	private SupportMapper supportMapper;

	public List<SupportBean> getSupportAll() {
		return supportMapper.getSupportAll();
	}

	public SupportBean getSupport(int supportNum) {
		return supportMapper.getSupport(supportNum);
	}

	public int editSupport(SupportBean supportBean) {
		return supportMapper.editSupport(supportBean);
	}

	public int writeSupport(SupportBean supportBean) {
		return supportMapper.writeSupport(supportBean);
	}

	public List<SupportBean> searchSupport(SupportBean supportBean) {
		return supportMapper.searchSupport(supportBean);
	}

	public int deleteSupport(SupportBean supportBean) {
		return supportMapper.deleteSupport(supportBean);
	}
}
