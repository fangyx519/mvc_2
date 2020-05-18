package com.fyx.mvc.service;

import com.fyx.mvc.entity.Employee;

import java.util.List;

public interface EmployeeService {

	boolean addEmployee(Employee emp);

	boolean removeEmployee(Integer employeeId);

	boolean modifyEmployee(Employee emp);

	Employee selectById(Integer id);

	List<Employee> selectByName(String name);

	List<Employee> selectAllEmplyee();

}
