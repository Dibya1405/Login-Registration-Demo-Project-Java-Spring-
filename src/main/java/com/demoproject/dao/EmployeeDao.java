package com.demoproject.dao;

import java.util.List;

import com.demoproject.model.Employee;
import com.demoproject.model.Login;

public interface EmployeeDao {
	void register(Employee user);
	List<Employee> getEmployees();
	void deleteEmployee(int pid);
	Employee getEmployees(int pid);
}
