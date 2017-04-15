package com.niit.chalangeFrontend.ForntController;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.chalange.Dao.UserDao;
import com.niit.chalange.model.User;
import com.niit.chalangeFrontend.otp.Otpganarater;

import sun.net.www.protocol.http.HttpURLConnection;

@Controller
public class SendEmailController {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	User user;
	@Autowired
	UserDao  userDao;
	
	@RequestMapping(value="/Email")
	public String Email()
	{
		
	return "Emailform";	

}
	@RequestMapping(value="/SendEmail",method=RequestMethod.GET)
	public String doSendEmail(HttpServletRequest request)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		if(!(authentication instanceof AnonymousAuthenticationToken))
		{ 	
			
			Otpganarater o=new Otpganarater();
			System.out.println(321);
			String currentUserName = authentication.getName();
		    user=(User)userDao.getUseremail(currentUserName);
		    String recipientAddress=user.getU_email();    
		    String subject="OTP";
		    String message="Your one time Password is"+o.Otpga();
		    System.out.println("To:"+recipientAddress);
			System.out.println("Subject: " + subject);
		    System.out.println("Message: " + message);
		    SimpleMailMessage email=new SimpleMailMessage();
		    email.setTo(recipientAddress);
		    email.setText(message);
		    mailSender.send(email);
		}
		 return "Result";
	}
	
}