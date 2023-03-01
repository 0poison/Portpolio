package kr.co.ezenac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ezenac.beans.CartBean;
import kr.co.ezenac.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("/list")
	public String cart_list() {
		
		return "user/cart/cart_list";
	}
	
	@PostMapping("/cart/update")
	public String modifyCount(CartBean modifyCount) {
		
		cartService.modifyCount(modifyCount);
		
		return "redirect:/user/cart_list" + modifyCount.getUserId();
	}
	
	@PostMapping("/cart/delete")
	public String deleteCart(CartBean cartId) {
		
		cartId.getCartId();
		cartService.deleteCart(cartId);
		
		return "redirect:/user/cart_list" + cartId.getUserId();
	}

}
