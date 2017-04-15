package com.niit.chalangeFrontend.ForntController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.chalange.Dao.BillingAddressDao;
import com.niit.chalange.Dao.UserDao;
import com.niit.chalange.model.BillingAddress;
import com.niit.chalange.model.Cart;
import com.niit.chalange.model.User;

@Controller
public class Usercontroller {
	@Autowired
	UserDao userDao;
	@Autowired
	User user;
	@Autowired
	BillingAddressDao billingAddressDao; 
	@Autowired
	BillingAddress billingAddress;
	



	 @RequestMapping(value = "/userRes",method = RequestMethod.POST)
	    public String processRegistration(@ModelAttribute("user")User Use, @RequestParam("hi") String password, Model model) 
	 {
		 System.out.println(1);
		 if(password.equals(Use.getU_psw()))
		 {
			 System.out.println(Use.getU_Id());
			 System.out.println(Use.getU_fname());
			 System.out.println(Use.getU_lname());
			 System.out.println(Use.getU_gender());
			 System.out.println(Use.getU_add());
			 System.out.println(Use.getU_email());
			 System.out.println(Use.getU_phno());
			 System.out.println(Use.getU_phno());
		     System.out.println(Use.getBillingAddress().getBillin_id());
			 Cart c=new Cart();  
			 Use.setCart(c);
			 userDao.saveorupdate(Use);    
		     return "redirect:/";	 
		 }
		 Use.setU_psw(null);
		 model.addAttribute("user", Use);
		 model.addAttribute("msg", "please re-Enter the password"); 
		 
	       
	        return "redirect:/";
	 }
	 
	//Edit method
		 @RequestMapping(value = "/useEdit/{id}")
		 public String catEdit(@PathVariable("id")String id,Model model)
		 {
			 List<User> ur=userDao.list();
			 System.out.println("id selected ="+id);
			 user=userDao.getUser(id);
			  model.addAttribute("user",user);
			  model.addAttribute("users", ur);
			 return "User";
		 }
		 
		 
		 //Delete method
		 @RequestMapping(value= "/usdDelete/{id}")
		 public String usdDelete(@PathVariable("id")String id,Model model)
		 {
			 System.out.println(1);
			 if (userDao.delete(id))
			 {
				 model.addAttribute("msg", "Delete successfull");
			 }
			 else
			 {
				 model.addAttribute("msg", "Sorry");
			 }
			 return "redirect:/user";
		 }
	 

}
