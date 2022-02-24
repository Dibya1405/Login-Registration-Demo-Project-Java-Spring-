package com.demoproject.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demoproject.dao.EmployeeDao;
import com.demoproject.model.Employee;
import com.demoproject.model.Login;

@Controller
public class LoginController {
	
	@Autowired
	public EmployeeDao employeedao;
		
	@RequestMapping(value="/index", method=RequestMethod.POST)
	public String loginUSer(@ModelAttribute Login login, Model model)
	{
		List<Employee> employees=employeedao.getEmployees();
		model.addAttribute("employees", employees);
		for(Employee e:employees)
		{
			System.out.println(e);
			String e1=e.getEmail(), e2=login.getEmail();
			String p1=e.getPassword(), p2=login.getPassword();
			if(e1.equals(e2)&&p1.equals(p2))
			{	
				model.addAttribute("name", e1);
				return "index";
			}
		}
		return "login";
	}
}
