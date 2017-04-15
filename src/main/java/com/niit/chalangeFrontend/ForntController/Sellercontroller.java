package com.niit.chalangeFrontend.ForntController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.chalange.Dao.ProductDao;
import com.niit.chalange.Dao.SellerDao;
import com.niit.chalange.model.Product;
import com.niit.chalange.model.Seller;

@Controller
public class Sellercontroller {
	@Autowired
	SellerDao sellerDao;

	@Autowired
	Seller seller;
	
	@Autowired
	ProductDao productDao;
	@Autowired
	Product product;

	@RequestMapping(value = "/seller")
	public String viewRegistration(Model model) {
		System.out.println(2);
		List<Seller> Se = sellerDao.list();
		Seller seller = new Seller();
		model.addAttribute("seller", seller);
		model.addAttribute("sellers", Se);
		return "Seller";
	}

	@RequestMapping(value = "/sellerRes", method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute("seller") Seller sel) {
		System.out.println("i am coming to sava");

		sellerDao.saveSeller(sel);
		return "redirect:/seller";

	}

	@RequestMapping(value = "/sellEdit/{id}")
	public String catEdit(@PathVariable("id") String id, Model model) {
		List<Seller> Se = sellerDao.list();
		System.out.println("id selected =" + id);
		Seller seller12 = sellerDao.getSeller(id);
		if (seller12 == null) {
			System.out.println("Sorry");
		} else {
			System.out.println("hi");
		}
		model.addAttribute("seller", seller12);
		model.addAttribute("sellers", Se);
		return "Seller";
	}

	@RequestMapping(value = "/sellDelete/{id}")
	public String sellDelete(@PathVariable("id") String id, Model model) {
		List<Product> pro=productDao.list();
		for(Product p:pro)
		{
		
			if(p.getSeller().getId().equals(id))
          
          {
        	  productDao.delete2(p);
          }
		}
	     sellerDao.delete(id);
		return "redirect:/seller";
	}

}


