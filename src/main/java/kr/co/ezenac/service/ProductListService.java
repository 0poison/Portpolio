package kr.co.ezenac.service;

import java.util.List;
import java.util.Map;

import kr.co.ezenac.beans.PageBean;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.ProductInfoBean;
import kr.co.ezenac.mapper.ProductListMapper;

@Service
public class ProductListService {

	@Autowired
	private ProductListMapper productListMapper;

	public void addProduct(ProductInfoBean productInfoBean) {
		productListMapper.addProduct(productInfoBean);
	}

	public List<ProductInfoBean> getProductList(@Param("productType") String productType) {
		return productListMapper.getProductList(productType);
	}

	public ProductInfoBean getProductInfo(@Param("productNo") int productNo) {
		return productListMapper.getProductInfo(productNo);
	}
/*	
	public ProductInfoBean getProductInfo(@Param("productType") String productType,
			@Param("productProperty") String productProperty, @Param("productNo") int productNo) {
		return productListMapper
	.getProductInfo(productType, productProperty, productNo);
	}
*/	

	// 제품 검색
	public List<ProductInfoBean> searchProduct(@Param("ProductName") String productName) {
		return productListMapper.searchProduct(productName);
	}

	public void deleteProduct(int productIdx) {
		productListMapper.deleteProductByIdx(productIdx);
	}

	public List<ProductInfoBean> getAllProducts(int page, PageBean pageBean) {
		RowBounds rowBounds = new RowBounds();
		return productListMapper.getAllProducts(rowBounds);
	}

//	public PageBean getAllProductCnt(int page, PageBean pageBean) {
//		int productCnt = productListMapper
//	.getProductCnt();
//		return new PageBean(productCnt, page);
//	}

	public void updateProduct(ProductInfoBean product) {
		productListMapper.updateProduct(product);
	}

	public ProductInfoBean getProductDetailsByIdx(int productIdx) {
		return productListMapper.getProductDetailsByIdx(productIdx);
	}

}
