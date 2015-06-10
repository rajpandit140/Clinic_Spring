package com.ibm.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





import com.ibm.domain.Login;
import com.ibm.domain.user;
import com.ibm.services.DataService;

@Controller

public class HomeController {
	private static final Logger logger = Logger.getLogger(HomeController.class);
	@Autowired
	DataService dataService;
	
	
	@RequestMapping("/home")
	public ModelAndView getHome() {
		System.out.println("***********************home.do****************");
		logger.info("in home");
		return new ModelAndView("home");
	}
	@RequestMapping("/Registration")
	public ModelAndView getRegister() {
		System.out.println("***********************Registration****************");
		return new ModelAndView("Registration","user1", new user());
	}

	
	@RequestMapping(method=RequestMethod.POST, value="/registerUser")
	public ModelAndView registerUser1(@Valid @ModelAttribute("user1") user user1,BindingResult result) {
		System.out.println("***********************registerUser****************");
		System.out.println("user detais"+user1.getFirst_Name());
		/*if (result.hasErrors()) {
			return new ModelAndView("Registration");
		}*/
		System.out.println("*******date******"+user1.getDOB());
		
		dataService.insertRow(user1);
		return new ModelAndView("home");
	}
	
	
	

	@RequestMapping("/Login")
	public ModelAndView getLogin() {
		System.out.println("***********************Login****************");
		return new ModelAndView("Login","login1",new Login());
	}

	@RequestMapping(method=RequestMethod.POST, value="/loginUser")
	public ModelAndView registerUser1(@ModelAttribute Login login1) {
		System.out.println("***********************LoginUser****************");
		System.out.println("login detais"+login1.getUser_Id());
		
		return new ModelAndView("home");
	}


	@RequestMapping(method=RequestMethod.GET, value="/View")
	public ModelAndView getList() {
		System.out.println("***********************viewUser****************");
		List<user> userList = dataService.getList();	
		for(user u :userList){
	    	System.out.println("**first name"+"-----"+u.getFirst_Name());
	    }
		
		return new ModelAndView("View","employeeList1",userList);
	}

	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam String id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:View");
	}
	
	@RequestMapping("edit")
	public ModelAndView editUser(@RequestParam String id,@ModelAttribute user employee) {
		user employeeObject = dataService.getRowById(id);
		return new ModelAndView("edit","comment",employeeObject);
	}

	@RequestMapping(method=RequestMethod.POST,value="/update")
	public ModelAndView updateUser(@ModelAttribute user employee) {
		dataService.updateRow(employee);
		return new ModelAndView("redirect:View");
	}


}
