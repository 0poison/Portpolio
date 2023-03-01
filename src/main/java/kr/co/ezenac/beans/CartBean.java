package kr.co.ezenac.beans;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartBean {
	
	private int cartId;
	private String userId;
	private String productImage;
	private String productName;
	private int productPrice;
	private int cartCount;
	private int totalPrice;

}
