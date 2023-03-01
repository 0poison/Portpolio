package kr.co.ezenac.beans;

import java.io.Serializable;

import lombok.Data;

@Data
public class AdminBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String adminName;
	private String adminId;
	private String adminPw;
	private boolean adminIdExist;
	private boolean adminLogin;

	public AdminBean() {
		this.adminIdExist = false;
		this.adminLogin = false;
	}

}
