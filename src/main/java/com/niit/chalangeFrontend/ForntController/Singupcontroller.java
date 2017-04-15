package com.niit.chalangeFrontend.ForntController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.chalange.Dao.UserDao;

import com.niit.chalange.model.User;




@Component
public class Singupcontroller {

	@Autowired
	UserDao userDao;
	
	@Autowired
	User user;
	
	@RequestMapping(value="/user")
	public String viewRegistration(Model model) {
		List<User> users=userDao.list();
		User user = new User();    
        model.addAttribute("User", user);
        model.addAttribute("User", users);
       return "home";  
	}
	
	
	 @RequestMapping(value="/submit",method =RequestMethod.POST)
	 public String singup(@ModelAttribute("user")User user,@RequestParam("ComfirmPassword")String a)
{
		 return null;
		 
		 }
}
















