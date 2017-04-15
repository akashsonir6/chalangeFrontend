package com.niit.chalangeFrontend.ForntController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.chalange.model.User;

@Controller
public class chalengeFrontController {
	@RequestMapping("/")
	public ModelAndView entry()
	{
		
		ModelAndView model=new ModelAndView("home");
		model.addObject("user", new User());
		return model;
	}
	
	@RequestMapping("/contact")
	public String contact()
	{
		return "Contact";
	}
	
	
   
}
	
