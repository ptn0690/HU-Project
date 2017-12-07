package com.it.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.it.spring.common.AppConstant;
import com.it.spring.model.Login;
import com.it.spring.model.Userz;
import com.it.spring.service.UserzService;

@Controller
public class LoginController {

	@Autowired
	private UserzService userzService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)

	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("login");

		mav.addObject("login", new Login());

		return mav;

	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpSession session, HttpServletRequest request,

			@ModelAttribute("login") Login login) {

		ModelAndView mav = null;

		Userz userz = userzService.login(login.getUsername(), login.getPassword());

		if (null != userz && userz.getIsAdmin() == 0) {
			session.setAttribute("users", userz);
			mav = new ModelAndView("index");

		} else if (null != userz && userz.getIsAdmin() == 1) {
			
			session.setAttribute("users", userz);
			mav = new ModelAndView("admin");

		} else {
			mav = new ModelAndView("login");

			mav.addObject("message", AppConstant.Login_error_message);

		}
		return mav;

	}
	
	@RequestMapping(value = "/logout") 
    public String logout(HttpSession session) {
        session.invalidate();
        return "index";
    }
}
