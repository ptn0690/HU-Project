package com.it.spring.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.it.spring.model.Userz;
import com.it.spring.service.UserzService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserzService userzService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showAddUserPage(HttpServletRequest request, HttpServletResponse response) {	
		ModelAndView mav = new ModelAndView("addNewUser");
		return mav;
	}
	
	@RequestMapping(value = "/addProcess", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView addUserProcess(HttpServletRequest request,HttpServletResponse response) {
		
		String useid = request.getParameter("id");
        String username = request.getParameter("usernametxt");
         String password = request.getParameter("passwordtxt");
         String firstname = request.getParameter("firstnametxt");
         String lastname = request.getParameter("lastnametxt");
         String phonenumber = request.getParameter("phonetxt");
         String address = request.getParameter("addresstxt");
         String email = request.getParameter("emailtxt");
         int role = Integer.parseInt(request.getParameter("role"));
         
         ModelAndView mav = new ModelAndView("redirect:/user/edit");
         String msg = "";
    	 Userz usez = new Userz();
         if(useid != null && !"".equals(useid)) {
             usez.setId(Integer.parseInt(useid));
             usez.setUserName(username);
             usez.setPass(password);
             usez.setFirstName(firstname);
             usez.setLastName(lastname);
             usez.setPhoneNumber(phonenumber);
             usez.setAddress(address);
             usez.setEmail(email);
             usez.setIsAdmin(role);
             userzService.updateUsers(usez);
             msg = "Update successfull";
         } else {
        	 usez.setUserName(username);
             usez.setPass(password);
             usez.setFirstName(firstname);
             usez.setLastName(lastname);
             usez.setPhoneNumber(phonenumber);
             usez.setAddress(address);
             usez.setEmail(email);
             usez.setIsAdmin(role);
             userzService.insertUsersForAdmin(usez);
             msg = "Insert successfull";
         }
         mav.addObject("msg", msg);
	 return mav;
		
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView showUserPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("users");
		List<Userz> users = new ArrayList<Userz>();
		users = userzService.getAllUsers();
		mav.addObject("users", users);
		return mav;
		
	}
	@RequestMapping(value="/detail/{id}")
	public ModelAndView getUser(@PathVariable("id") int userId) throws IOException{
		ModelAndView mav = new ModelAndView("editUser");
		Userz userz = new Userz();
		userz = userzService.findUserzById(userId);
		mav.addObject("user", userz);
		return mav;
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST, headers = "Content-Type=application/x-www-form-urlencoded")
	public ModelAndView deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String[] users = request.getParameterValues("delCheckbox");
		ModelAndView mav = new ModelAndView("redirect:/user/edit");
		userzService.deleteUsers(users);
		return mav;
		
	}

}
