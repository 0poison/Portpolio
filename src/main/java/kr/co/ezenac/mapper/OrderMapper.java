package kr.co.ezenac.mapper;

import java.util.List;

import kr.co.ezenac.beans.ProductInfoBean;

public interface OrderMapper {
	
	//주문 목록
	ProductInfoBean getProductList(int index);

}
