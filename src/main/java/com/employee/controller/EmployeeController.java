package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.employee.entity.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/")
	public String getDashboard(Model model)
	{
		List<Employee> empList=employeeService.getList();
		model.addAttribute("elist",empList);
		return "list";
	}
	@RequestMapping("add-employee")
	public String getAddEmployeeView()
	{
		return "add";
	}
	@PostMapping("add-record")
	public String addEmployeeRecord(Employee employee)
	{
		employeeService.saveRecord(employee);
		return "redirect:/";
	}
	@RequestMapping("delete-record")
	public String deletEmployeeRecord(int eid)
	{
		employeeService.deleteRecord(eid);
		return "redirect:/";
	}
}
