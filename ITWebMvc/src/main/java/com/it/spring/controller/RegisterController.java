package com.it.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.it.spring.model.Userz;
import com.it.spring.service.UserzService;

@Controller
@RequestMapping("register")
public class RegisterController {
	@Autowired
	private UserzService userzService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showRegisterPage(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("regist");
		return mav;

	}
	
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView registerProcess(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/login");
		String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        
        //insert Userz
        Userz users = new Userz();
        users.setUserName(userName);
        users.setPass(password);
        users.setFirstName(firstName);
        users.setLastName(lastName);
        users.setEmail(email);
        users.setPhoneNumber(phoneNumber);
        users.setAddress(address);
        userzService.insertUsers(users);
		return mav;

	}

}
