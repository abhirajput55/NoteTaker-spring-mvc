package com.dao;

import com.entity.User;

public interface UserDaoInt {
	
	public abstract boolean saveUser(User user);
	public User getUserDetailsByEmailAndPassword(String emailId,String passWord);

}
