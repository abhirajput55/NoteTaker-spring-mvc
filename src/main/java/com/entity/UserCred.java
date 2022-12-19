package com.entity;


import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

public class UserCred {
	
	@NotEmpty(message = "*Email should not be empty.")
	@Email(regexp = ".+@.+\\..+", message = "*Please enter valid email")
	private String emailId;
	
	@NotEmpty(message = "*Password should not be empty.")
	private String passWord;
	
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public UserCred(String emailId, String passWord) {
		super();
		this.emailId = emailId;
		this.passWord = passWord;
	}
	public UserCred() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserCred [emailId=" + emailId + ", passWord=" + passWord + "]";
	}
	
	

}
