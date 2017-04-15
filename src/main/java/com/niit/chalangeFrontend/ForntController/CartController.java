package com.niit.chalangeFrontend.ForntController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.chalange.Dao.CartDao;
import com.niit.chalange.Dao.CartItemDao;
import com.niit.chalange.Dao.ProductDao;
import com.niit.chalange.Dao.UserDao;
import com.niit.chalange.model.Cart;
import com.niit.chalange.model.CartItem;
import com.niit.chalange.model.Product;
import com.niit.chalange.model.User;

@Controller
public class CartController {
	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	@Autowired
	CartItemDao cartItemDao;
	@Autowired
	CartItem cartItems;
	@Autowired
	User user;
	@Autowired
	UserDao userDao;
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	@Autowired
	HttpSession session;

	@RequestMapping("/addtocart/{id}")
	public ModelAndView cart(@PathVariable("id") String id) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			User u = userDao.getUseremail(currusername);
			if (user == null) {
				return new ModelAndView("redirect:/");
			} else {

				cart = u.getCart();
				product = productDao.getproduct(id);
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setPrice(product.getPrice());
				cartItemDao.Save(cartItem);
				cart.setGrandtotal(cart.getGrandtotal() + product.getPrice());
				cart.setTotalItems(cart.getTotalItems() + 1);
				cartDao.Save(cart);
				session.setAttribute("items", cart.getTotalItems());
				session.setAttribute("gd", cart.getGrandtotal());
				return new ModelAndView("redirect:/viewproducts");
			}
		} else {
			return new ModelAndView("redirect:/");
		}

	}

	@RequestMapping(value = "/viewcart")
	public String viewcart(Model model, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			User u = userDao.getUseremail(currusername);
		        Cart c=u.getCart();
				List<CartItem> cartItems = cartItemDao.getlist(u.getCart().getCartId());
				if(cartItems==null ||cartItems.isEmpty())
				{
					session.setAttribute("items",0);
					model.addAttribute("gtotal",0.0);
					model.addAttribute("msg", "no Items is added to cart");
					return "Viewcart";		
				}
				model.addAttribute("cartItems", cartItems);
				model.addAttribute("gtotal",c.getGrandtotal());
				session.setAttribute("items",c.getTotalItems());
			    session.setAttribute("cartId", c.getCartId());
				return "Viewcart";		
			
		}
		else
		{
			return "redirect:/";
		}
		
	}
	@RequestMapping(value="/RemoveFromCart/{id}")
	public String RemoveFromCart(@PathVariable("id") String id)
	{
		cartItems=cartItemDao.get(id);
		Cart c=cartItems.getCart();
		c.setGrandtotal(c.getGrandtotal()-cartItems.getPrice());
		c.setTotalItems(c.getTotalItems()-1);
		cartDao.Save(c);
		cartItemDao.delete(cartItems.getCartItem_Id());
		return "redirect:/viewcart";
	}
	
	@RequestMapping(value="/RemoveallFromCart")
	public String RemoveallFromCart(Model mode,HttpSession session)
	{
		Cart c=cartDao.get((String)session.getAttribute("cartId"));
		List<CartItem> cartItems=cartItemDao.getlist((String)session.getAttribute("cartId"));
		for(CartItem g:cartItems)
		{
		  cartItemDao.delete(g.getCartItem_Id());
		}
		c.setGrandtotal(0.0);
		c.setTotalItems(0);
		cartDao.Save(c);
		session.setAttribute("items",c.getTotalItems());
		return "redirect:/viewcart";
	}

}