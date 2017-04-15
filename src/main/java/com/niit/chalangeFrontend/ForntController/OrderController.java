package com.niit.chalangeFrontend.ForntController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.chalange.Dao.BillingAddressDao;
import com.niit.chalange.Dao.CardDao;
import com.niit.chalange.Dao.CartDao;
import com.niit.chalange.Dao.CartItemDao;
import com.niit.chalange.Dao.OrderDao;
import com.niit.chalange.Dao.OrderItemsDao;
import com.niit.chalange.Dao.PayDao;
import com.niit.chalange.Dao.ProductDao;
import com.niit.chalange.Dao.ShippingAddressDao;
import com.niit.chalange.Dao.UserDao;
import com.niit.chalange.model.BillingAddress;
import com.niit.chalange.model.Card;
import com.niit.chalange.model.Cart;
import com.niit.chalange.model.CartItem;
import com.niit.chalange.model.Order;
import com.niit.chalange.model.OrderItems;
import com.niit.chalange.model.Pay;
import com.niit.chalange.model.Product;
import com.niit.chalange.model.ShippingAddress;
import com.niit.chalange.model.User;

@Controller
public class OrderController {

	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	@Autowired
	CartItem cartItem;
	@Autowired
	CartItemDao cartItemDao;
	@Autowired
	Card card;
	@Autowired
	CardDao cardDao;
	@Autowired
	BillingAddress billingAddress;
	@Autowired
	BillingAddressDao billingAddressDao;
	@Autowired
	ShippingAddress shippingAddress;
	@Autowired
	ShippingAddressDao shippingAddressDao;
	@Autowired
	Pay pay;
	@Autowired
	PayDao payDao;
	@Autowired
	Order order;
	@Autowired
	OrderDao orderDao;
	@Autowired
	OrderItems orderItems;
	@Autowired
	OrderItemsDao orderItemsDao;
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	@Autowired
	User user;
	@Autowired
	UserDao userDao;

	List<CartItem> cartItems;

	@RequestMapping("/BuyallFromCart")
	public String orderall(Model model,HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			user = userDao.getUseremail(currusername);
			cart = user.getCart();
			cartItems = cartItemDao.getlist(cart.getCartId());
			if(cartItems==null || cartItems.isEmpty())
			{
				System.out.println("sorry");
			}
			billingAddress = billingAddressDao.get(user.getU_Id());
			List<ShippingAddress> shippingAddresies = shippingAddressDao.getaddbyuser(user.getU_Id());
			model.addAttribute("billingAddress", billingAddress);
			model.addAttribute("user",user);
			model.addAttribute("shippingAddresies", shippingAddresies);
			model.addAttribute("shippingAddress", new ShippingAddress());
			session.setAttribute("p", cart.getGrandtotal());
			return "Addressorder";
		} else {
			return "redirect:/";
		}

	}

	@RequestMapping("/order/{id}/{cid}")
	public String order(@PathVariable("id") String id, @PathVariable("cid") String id2, Model model,HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			user = userDao.getUseremail(currusername);
			cart = user.getCart();
			cartItems=null;
			product = productDao.getproduct(id);
			billingAddress = billingAddressDao.get(user.getU_Id());
			List<ShippingAddress> shippingAddresies = shippingAddressDao.getaddbyuser(user.getU_Id());
			model.addAttribute("billingAddress", billingAddress);
			model.addAttribute("user",user);
			model.addAttribute("shippingAddresies", shippingAddresies);
			model.addAttribute("shippingAddress", new ShippingAddress());
			session.setAttribute("p", product.getPrice());
			return "Addressorder";
		} else {
			return "redirect:/";
		}

	}

	@RequestMapping("/orderConform")
	public String payment(@ModelAttribute("shippingAddress") ShippingAddress sh, Model model) {
		if(cartItems==null || cartItems.isEmpty())
		{
			System.out.println("sorry");
		}
		sh.setUser(user);
		shippingAddress = sh;
		model.addAttribute("billingAddress", billingAddress);
		model.addAttribute("shippingAddress", shippingAddress);
		model.addAttribute("product", product);
		model.addAttribute("cartItems",cartItems);
		return "orderConform";
	}

	@RequestMapping("/previous")
	public String previous(Model model) {
		List<ShippingAddress> shippingAddresies = shippingAddressDao.getaddbyuser(user.getU_Id());
		model.addAttribute("shippingAddresies", shippingAddresies);
		model.addAttribute("billingAddress", billingAddress);
		model.addAttribute("shippingAddress", shippingAddress);
		model.addAttribute("product", product);
		return "Addressorder";
	}

	@RequestMapping("/pay")
	public String pay(Model model) {
		List<Card> cards = cardDao.getcardbyuser(user.getU_Id());
		model.addAttribute("cards", cards);
		model.addAttribute("card", new Card());
		return "Payment";
	}

	@RequestMapping("/paymet")
	public String paymet(@RequestParam("payb") String str, @ModelAttribute("card") Card c, Model model) {
		int a;
		System.out.println(str);
		if (str.equalsIgnoreCase("Start Subscription")) {
			a = 2;
		} else {
			a = Integer.parseInt(str);
		}
		System.out.println(a);
		switch (a) {
		case 1:
			pay.setPay_may("COD");
			pay.setStatus("no");

			break;
		case 2:
			pay.setPay_may("card");
			pay.setStatus("yes");
			payDao.Saveorupdate(pay);
			cardDao.Saveorupdate(c);

			break;
		case 3:
			pay.setPay_may("Internate Banking");
			pay.setStatus("yes");

		}

		return "redirect:/orderconformation";
	}

	@RequestMapping("/orderconformation")
	public String orderconformation(HttpSession session) {
		order.setBillingAddress(billingAddress);
		order.setShippingAddress(shippingAddress);
		order.setPay(pay);
		order.setUser(user);
		if(cartItems==null ||cartItems.isEmpty())
		{
			System.out.println(1234);
			order.setGrand_total(product.getPrice());
			orderItems.setOrder(order);
			orderItems.setProduct_id(product.getP_id());
			orderItemsDao.Saveorupdate(orderItems);
			cart.setGrandtotal(cart.getGrandtotal() - cartItem.getPrice());
			cart.setTotalItems(cart.getTotalItems() - 1);
			session.setAttribute("items", cart.getTotalItems());
			cartDao.Save(cart);
			cartItemDao.delete(cartItemDao.getlistall(cart.getCartId(),product.getP_id()).getCartItem_Id());
		}
		else 
		{
			order.setGrand_total(cart.getGrandtotal());
			orderDao.Saveorupdate(order);
			for(CartItem c:cartItems)
			{
				System.out.println(c.getProduct().getP_id());
				orderItems.setOrder(order);
				orderItems.setProduct_id(c.getProduct().getP_id());
				orderItemsDao.Saveorupdate(orderItems);
				cartItemDao.delete(c.getCartItem_Id());
			}
			cart.setGrandtotal(0.0);
			cart.setTotalItems(0);
			session.setAttribute("items", cart.getTotalItems());
			cartDao.Save(cart);	
		}
				return "orderconformationpage";
	}
 }
