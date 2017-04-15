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
import com.niit.chalange.Dao.SellerDao;
import com.niit.chalange.model.Cart;
import com.niit.chalange.model.CartItem;
import com.niit.chalange.model.Category;
import com.niit.chalange.model.Product;
import com.niit.chalange.model.Seller;
import com.niit.chalangeFrontend.fileinput.Fileinput;





@Controller
public class Productcontroller 
{
	@Autowired
	ProductDao productDao;
	@Autowired
	Product product;
	@Autowired
	SellerDao sellerDao;
	@Autowired
	Seller seller;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	Category category;
	@Autowired
	CartItem cartItem;
	@Autowired
	CartItemDao cartItemDao;
	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	String path= "C:\\Users\\Akash soni\\workspace\\chalangeFrontend\\src\\main\\webapp\\resource\\images\\";
	
	
	
	@RequestMapping(value="/product")
	public String viewRegistration(Model model) {
		System.out.println(2);
		List<Category> cl=categoryDao.list();
		List<Seller>  sl=sellerDao.list();
		List<Product> products=productDao.list();
        Product product = new Product(); 
        model.addAttribute("categorys",cl);
        model.addAttribute("sellers",sl);
        model.addAttribute("product", product);
        model.addAttribute("products", products);
       return "Product";  
	}
	
	@RequestMapping(value = "/productRes",method = RequestMethod.POST)
	public String processRegistration(@Valid @ModelAttribute("product") Product product, BindingResult result) 
	{
		
		if(result.hasErrors())
		{
			return "redirect:/product";
		}
		System.out.println(1);
//        category=categoryDao.getCategory(id);
//        seller=sellerDao.getSeller(id2);
           System.out.println(product.getCategory());
//          product.setCategory(category);
//        product.setSeller(seller);
      if(productDao.saveProduct(product)==true){   
    	  Fileinput.uplode(path, product.getPimg(), product.getP_id()+".jpg");
    	 // product.set(product.getP_id()+".jpg");
    	  
      
      }
    	  
    	  
    	  return "redirect:/product";
    
	}
	

	 //Edit method
	 @RequestMapping(value = "/proEdit/{id}")
	 public String proEdit(@PathVariable("id")String id,Model model)
	 {
		 List<Product> products=productDao.list();
		 product=productDao.getproduct(id);
		 model.addAttribute("product", product);
	        model.addAttribute("products", products);
	        List<Category> cl=categoryDao.list();
			List<Seller>  sl=sellerDao.list();
			model.addAttribute("categorys",cl);
	        model.addAttribute("sellers",sl);
		 return "Product";
	 }
	 
	 //Delete method
	 @RequestMapping(value= "/prosDelete/{id}")
	 public String prosDelete(@PathVariable("id")String id,Model model)
	 {
		 System.out.println(147852);
		 if(cartItemDao.getlistbyproId(id)==null ||cartItemDao.getlistbyproId(id).isEmpty())
		 {
			 System.out.println(123456);
			 productDao.delete(id);	 
			 return "redirect:/product";
		 }
		 else
		 {
			 System.out.println(698745);
			 List<CartItem> cartItems=cartItemDao.getlistbyproId(id);
		 for(CartItem ci:cartItems)
		 {
			 Cart c;
			 c=ci.getCart();
			 c.setGrandtotal(c.getGrandtotal()-ci.getPrice());
			 c.setTotalItems(c.getTotalItems()-1);
			 cartDao.Save(c);
			 cartItemDao.delete(ci.getCartItem_Id());
		 }
		 //System.out.println(1);
		 productDao.delete(id);
		 return "redirect:/product";
		}
	 }
	 // view all product
	 @RequestMapping(value= "/viewproducts")
	 public String viewproducts(Model model)
	 {
		 List<Product> products=productDao.list();
		 model.addAttribute("products", products);
		 return "productview";
	 }
	 // view single product
	 @RequestMapping(value= "/viewapro/{id}")
	 public String viewapro(@PathVariable("id")String id, Model model)
	 {
		System.out.println(123);
		 Product p=productDao.getproduct(id);
		model.addAttribute("pro",p);
		 return "Singleviews";
	 }

}	


