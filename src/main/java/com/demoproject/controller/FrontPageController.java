package com.demoproject.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demoproject.dao.EmployeeDao;
import com.demoproject.model.Employee;

@Controller
public class FrontPageController {
	@Autowired
	private EmployeeDao employeeDao;
	
	//showing the 
	@RequestMapping("/")
	public String show_firstPage() {
		return "home";
	}
//	**********    Handling the buttons on the first page  *****
	
	//handling the list of users
	@RequestMapping("/handle_list_of_users")
	public String show_listOfUsers(Model m) {
		List<Employee> employees = employeeDao.getEmployees();
		m.addAttribute("employees" , employees);
		return "list_users";
	}
	
	@RequestMapping("/home")
	public String showHomePage(Model m) {
		return "home";
	}
	//handling the register button
	@RequestMapping("/open_register_page")
	public String addUsers() {
		return "register";
	}
	
	//show login page on clicking
		@RequestMapping("/loginPage")
		public String show_loginPage() {
			return "login";
		}
		
		
		@RequestMapping("/handle_success_button")
		public String handle_success_button() {
			return "home";
		}
}
