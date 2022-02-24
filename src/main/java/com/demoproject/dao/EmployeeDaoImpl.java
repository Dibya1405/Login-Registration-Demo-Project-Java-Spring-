package com.demoproject.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.model.Employee;
import com.demoproject.model.Login;

@Component
public class EmployeeDaoImpl implements EmployeeDao{
	@Autowired
	private HibernateTemplate temp;
	
	@Transactional
	public void register(Employee employee) {
		this.temp.saveOrUpdate(employee);
	}

	public List<Employee> getEmployees() {
		List<Employee> employees = temp.loadAll(Employee.class);
		return employees;
	}
	
	//delete a single product
		@Transactional
		public void deleteEmployee(int pid) {
			Employee product = this.temp.load(Employee.class, pid);
			this.temp.delete(product);
		}
		
		//get single item
		public Employee getEmployees(int pid) {
			Employee product = this.temp.get(Employee.class, pid);
			return product;
		}


}
