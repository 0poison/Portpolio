package kr.co.ezenac.mapper;

import kr.co.ezenac.beans.SupportBean;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SupportMapper{

	List<SupportBean> getSupportAll();

	SupportBean getSupport(int supportNum);

	int editSupport(SupportBean supportBean);

	List<SupportBean> searchSupport(SupportBean supportBean);

	int writeSupport(SupportBean supportBean);

	int deleteSupport(SupportBean supportBean);

}
