package kr.co.ezenac.beans;

import lombok.Data;

@Data
public class ReviewBean {
	private int reviewNum;
	private int reviewScore;
	private String reviewContent;
	private String reviewWriter;
	private String reviewDate;
	private int reviewRef;

}
