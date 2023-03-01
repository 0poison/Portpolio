package kr.co.ezenac.beans;

import lombok.Data;

@Data
public class ProductInfoBean {

	private Long productIdx;
	private String productType;
	private String productName;
	private int productQuantity;
	private int productPrice;
	private String productText;
	private String productImage;
	private String productDetail;
	

}
