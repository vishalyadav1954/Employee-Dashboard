package com.employee.repository;

import java.util.List;

import com.employee.entity.Employee;

public interface EmployeeRepository 
{
	List<Employee> getEmployeeList();
	void saveEmployee(Employee employee);
	void deleteEmployee(int eid);
}
