package kr.co.ezenac.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.co.ezenac.beans.ProductInfoBean;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductListMapper {

	// 제품 추가
	int addProduct(ProductInfoBean productInfoBean);

	// 제품 목록 조회
	// 제품 종류와 타입을 받아야함
	List<ProductInfoBean> getProductList(@Param("productType") String productType);

	// 제품 정보 조회
	// 종류와 타입, 리스트에서 같이 불러온 인덱스 넘버를 같이 불러와야함
	ProductInfoBean getProductInfo(@Param("productIdx") int productIdx);
/*	
	ProductInfoBean getProductInfo(@Param("productType") String productType,
			@Param("productProperty") String productProperty, @Param("productIdx") int productIdx);
*/	

	// 인덱스를 통한 제품 정보 수정
	void modifyProductInfo(int productIdx);

	// 삭제
	void deleteProduct(int productIdx);

	// 모든 상품 조회 (조건 없이 전체 상품 조회, 상품명을 기준으로 sort) by mingki
	List<ProductInfoBean> getAllProducts(RowBounds rowBounds);

	// 모든 상품 갯수 조회 by mingki
	int getProductCnt();


	// 상품 정보 업데이트 by mingki
	void updateProduct(ProductInfoBean product);

	// 상품 삭제 by mingki
	void deleteProductByIdx(int productIdx);

	// 상품 정보 조회 by mingki
	ProductInfoBean getProductDetailsByIdx(int productIdx);

	// 상품 검색 메인 화면
	List<ProductInfoBean> searchProduct(String productName);
}