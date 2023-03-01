package kr.co.ezenac.beans;

import java.io.Serializable;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class UserBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private int userIdx;

	@Size(min = 2, max = 4)
	@Pattern(regexp = "[가-힣]*")
	private String userName;

	@Size(min = 4, max = 10)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String userId;

	@Size(min = 4, max = 10)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String userPw;

	@Size(min = 4, max = 10)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String userPw2;

	private String userPhone;
	private String userAddress1;
	private String userAddress2;
	private String userAddress3;
	private String userRegDate;

	private boolean userIdExist;
	private boolean userLogin;

	public UserBean() {
		this.userIdExist = false;
		this.userLogin = false;
	}

}
