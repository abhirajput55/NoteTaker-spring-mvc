package com.service;

import com.entity.User;

public interface UserService {
	
	public abstract User validateUserCred(String emailId, String passWord);
	public abstract boolean registerUser(User user);

}
