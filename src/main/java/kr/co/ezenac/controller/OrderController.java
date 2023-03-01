package kr.co.ezenac.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ezenac.beans.ProductInfoBean;
import kr.co.ezenac.service.ProductListService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
//	@Resource(name = "productInfoBean")
	@Autowired
	ProductListService productListService;
	
	@GetMapping("/form")
	public String main(@RequestParam("productIdx") int productIdx,
			Model model) {
		ProductInfoBean productInfoBean = productListService.getProductInfo(productIdx);
		model.addAttribute("productInfoBean", productInfoBean);
		
		return "user/order/order_form";
	}
	
	@GetMapping("/info")
	public String read() {
		return "user/order/order_info";
	}
	
	@GetMapping("/purchase")
	public String write() {
		return "user/order/order_purchase";
	}
	
	@GetMapping("/list")
	public String modify() {
		
		return "user/order/order_list";
	}
	
	@GetMapping("/delete")
	public String delete() {
		
		return "user/order/order_delete";
	}

}
