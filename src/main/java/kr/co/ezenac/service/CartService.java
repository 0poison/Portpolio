package kr.co.ezenac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.CartBean;
import kr.co.ezenac.mapper.CartMapper;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public int addCart(CartBean addCart) {
		
		return cartMapper.addCart(addCart);
	}
	
	public List<CartBean> getCart(String userId) {
		
		List<CartBean> cart = cartMapper.getCart(userId);
		
		return cart;
	}
	
	public int modifyCount(CartBean modifyCount) {
		
		return cartMapper.modifyCount(modifyCount);
	}
	
	public int deleteCart(CartBean cartId) {
		
		return cartMapper.deleteCart(cartId);
	}

}
