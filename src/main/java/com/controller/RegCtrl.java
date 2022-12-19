package com.controller;

import javax.servlet.http.Cookie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.catalina.mbeans.UserMBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDaoInt;
import com.dao.imp.UserDaoImp;
import com.entity.User;
import com.entity.UserCred;
import com.service.UserService;
import com.service.imp.UserServiceImp;

@Controller
public class RegCtrl {

	@Autowired
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public UserService getUserService() {
		return userService;
	} 

//	Showing registration form
	@RequestMapping(value="/registration", method=RequestMethod.GET)
	public String showForm(Model model) {

		model.addAttribute("user", new User());
		
		return "registration";
	}
	
//	handling save user, registration handler
	@RequestMapping(value ="/registerSuccess" ,method=RequestMethod.POST)
	public ModelAndView registerSuccess(@Valid @ModelAttribute User user, BindingResult bindingResult ){
		System.out.println(user+"+user");
		if(bindingResult.hasErrors()){
			System.out.println("Registration error");
			return new ModelAndView("registration");
		}
		
		getUserService().registerUser(user);
		
		
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("user", user);
		return modelAndView;
	}
	

//	Showing login form
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(Model model) {
		
		model.addAttribute("user", new User());

		return "login";
	}
	
	UserCred userCred = new UserCred();
	
	public String email;
	
	
	public String getEmailId()
	{
		return email;
	}
	
//	login handler
	
	@RequestMapping(value ="/loginSuccess" ,method=RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("userCred") UserCred userCred, Model model, BindingResult bindingResult){
		email=userCred.getEmailId();
		System.out.println("email+"+email);
		if(bindingResult.hasErrors()){
			return new ModelAndView("login");
		}
		
		
		ModelAndView modelAndView = new ModelAndView("addNotes");
		model.addAttribute("emailId", email );
		User user = getUserService().validateUserCred(userCred.getEmailId(), userCred.getPassWord());
		if(user!= null){
			modelAndView.addObject("user", user);
			return modelAndView;
		}else{
			 modelAndView = new ModelAndView("userNotFound");
		}
		return modelAndView;
	}



	

}

