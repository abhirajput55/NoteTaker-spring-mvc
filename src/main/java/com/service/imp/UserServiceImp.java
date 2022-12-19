package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDaoInt;
import com.entity.User;
import com.service.UserService;

@Service("userService")
public class UserServiceImp implements UserService{
	
	@Autowired
	private UserDaoInt userDaoInt;
	
	public void setUserDaoInt(UserDaoInt userDaoInt)
	{
		this.userDaoInt = userDaoInt;
	}
	
	public UserDaoInt getUserDaoInt()
	{
		return userDaoInt;
	}
	
	
	public boolean registerUser(User user)
	{
		boolean isRegister = false;
		boolean saveUser = getUserDaoInt().saveUser(user);
		
		if(saveUser)
			isRegister = true;
		
		return isRegister;
	}

	public User validateUserCred(String emailId, String passWord) {
		
		User user = getUserDaoInt().getUserDetailsByEmailAndPassword(emailId, passWord);
		
		return user;
	}
	
	
	
	

}
