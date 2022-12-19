package com.entity;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.lang.Nullable;


@Entity
@Table(name="usertable")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Uid;
	
	@NotEmpty(message = "*Fisrt name should not be empty.")
	@Size(min = 4, max = 15, message = "*Size must be between 4 and 15")
	private String fName;
	
	@NotEmpty(message = "*Last name should not be empty.")
	@Size(min = 4, max = 15, message = "*Size must be between 4 and 15")
	private String Lname;
	
	@NotEmpty(message = "*Email should not be empty.")
	@Email(regexp = ".+@.+\\..+", message = "*Please enter valid email")
	private String emailId;
	
	@NotEmpty(message = "Password should not be empty.")
	@Size(min = 4, max = 8, message = "*Size must be between 4 and 8")
	private String passWord;
	
	
	
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
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
	public User(int uid, String fName, String lname, String emailId, String passWord) {
		super();
		Uid = uid;
		this.fName = fName;
		Lname = lname;
		this.emailId = emailId;
		this.passWord = passWord;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [Uid=" + Uid + ", fName=" + fName + ", Lname=" + Lname + ", emailId=" + emailId + ", passWord="
				+ passWord + "]";
	}
	
	

}
