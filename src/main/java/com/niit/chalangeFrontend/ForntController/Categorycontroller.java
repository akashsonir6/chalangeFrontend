package com.niit.chalangeFrontend.ForntController;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.chalange.Dao.CartDao;
import com.niit.chalange.Dao.CartItemDao;
import com.niit.chalange.Dao.CategoryDao;
import com.niit.chalange.Dao.ProductDao;
import com.niit.chalange.model.Cart;
import com.niit.chalange.model.CartItem;
import com.niit.chalange.model.Category;
import com.niit.chalange.model.Product;



@Controller
public class Categorycontroller 
{
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	Category category;
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="/category")
	public String viewRegistration(Model model) {
		System.out.println(123465);
		List<Category> lc=categoryDao.list();
		Category ca = new Category();    
        model.addAttribute("category",ca);
        model.addAttribute("categorise", lc);
       return "Category";  
	}	

	 @RequestMapping(value = "/categoryRes",method = RequestMethod.POST)
	    public String processRegistration(@ModelAttribute("category")Category cat) 
	 {
		   System.out.println("sadfasdfasdfasdfsdf");
	       categoryDao.SaveCategory(cat);         
	        return "redirect:/category";
	 }
	 
	 //Edit method
	 @RequestMapping(value = "/catEdit/{id}")
	 public String catEdit(@PathVariable("id")String id,Model model)
	 {
		 List<Category> lc=categoryDao.list();
		 System.out.println("id selected ="+id);
		 Category ca=categoryDao.getCategory(id);
		  model.addAttribute("category",ca);
		  model.addAttribute("categorise", lc);
		 return "Category";
	 }
	 
	 //Delete method
//	 @RequestMapping(value= "/cartDelete/{id}")
//	 public String cartDelete(@PathVariable("id")String id,Model model)
//	 {
//		 System.out.println(1);
//		 
//		 return "redirect:/category";
//	 }
	 @RequestMapping("/cartDelet/{id}")
	 public String cartDelete(@PathVariable("id")String id, Model model)
	 {
		 List<Product> pro=productDao.list();
		 for(Product p:pro)
		    {
		     if(p.getCategory().getId().equals(id))
		     {
		    	 productDao.delete2(p);
		     }
		    }
		 categoryDao.delete(id);		 
		 return "redirect:/category";
	 }
	 

}
