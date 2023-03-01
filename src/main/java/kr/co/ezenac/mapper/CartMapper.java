package kr.co.ezenac.mapper;

import java.util.List;

import kr.co.ezenac.beans.CartBean;

public interface CartMapper {
	
	int addCart(CartBean addCart);
	
	List<CartBean> getCart(String userId);
	
	CartBean checkCart(CartBean checkCart);

	int modifyCount(CartBean modifyCount);
	
	int deleteCart(CartBean cartId);

}
