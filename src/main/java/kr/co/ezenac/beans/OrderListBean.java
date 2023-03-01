package kr.co.ezenac.beans;

import lombok.Data;

@Data
public class OrderListBean {
	
	private int orderIdx;
	private String orderUser;
	private String orderProduct;
	private int orderPrice;
	private int orderAmount;
	private String orderAddress2;
	private String orderAddress3;
	private int orderPayment;

}
