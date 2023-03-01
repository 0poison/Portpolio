package kr.co.ezenac.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ezenac.beans.ProductInfoBean;
import kr.co.ezenac.service.ProductListService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductListService productListService;
	
	

	// 리스트 출력 시
	@GetMapping("/list")
	public String list(@RequestParam("productType") String productType, Model model) {
		model.addAttribute("productList", productListService.getProductList(productType));
		return "user/product/product_list";
	}

	@GetMapping("/search/{productName}")
	public String search(@PathVariable("productName") String productName, Model model) {
		model.addAttribute("searchResult", productListService.searchProduct(productName));
		return "user/product/product_list";
	}

	// 제품 클릭 시
	@GetMapping("/info")
	public String info(@RequestParam("productIdx") int productIdx,
			Model model) {
		ProductInfoBean productInfoBean = productListService.getProductInfo(productIdx);
		model.addAttribute("productInfo", productInfoBean);
		return "user/product/product_info";
	}
/*	
	@GetMapping("/info")
	public String info(@RequestParam("productType") String productType,
			@RequestParam("productProperty") String productProperty, @RequestParam("productIdx") int productIdx,
			Model model) {
		ProductInfoBean productInfoBean = productListService.getProductInfo(productType, productProperty, productIdx);
		model.addAttribute("productInfo", productInfoBean);
		return "user/product/product_info";
	}
*/	



}
