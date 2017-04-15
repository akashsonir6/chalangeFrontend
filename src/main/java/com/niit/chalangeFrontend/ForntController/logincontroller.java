
package com.niit.chalangeFrontend.ForntController;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.niit.chalange.Dao.UserDao;
import com.niit.chalange.model.User;

@Controller
public class logincontroller
{
	@Autowired
	UserDao userDao;
	
	@Autowired
	User user;
	
//	@Autowired
//	HttpSession session;
	

	@RequestMapping("/loginRes")
	public String login(@RequestParam(value="error",required=false)String error,
			@RequestParam(value="logout",required=false)String logout,Model model){
	if(error!=null)
		model.addAttribute("error","invalid User name or password");
	if(logout!=null)
		model.addAttribute("logout", "login seccessfull");
	return "redirect:/";
	}
	
	
	@RequestMapping(value="/j_spring_security_check")
     public String processRegistration(@RequestParam("j_username")String E,@RequestParam("j_password")String P ,
    		 Model model,HttpSession session )
     {
    	 User u=(User) userDao.isValidated(E, P);
    	 
    	 if (u==null)
    	 {
    		 model.addAttribute("msg","Invalid user name and password");
    		return "redirect:/"; 
    	 }
    	 else
    	 {
    		 session.setAttribute("user", u);
    		 session.setAttribute("name",u.getU_fname());
    		 session.setAttribute("items",u.getCart().getTotalItems());
    		 return "redirect:/"; 
    	 }
     }

	
	
	@RequestMapping(value= "/logout")
	public String logout(HttpServletRequest request, HttpSession Session, Model model){
		Session.invalidate();
		Session =request.getSession(true);
		model.addAttribute("logout", "logout successful");
		return "redirect:/";
	}
}
