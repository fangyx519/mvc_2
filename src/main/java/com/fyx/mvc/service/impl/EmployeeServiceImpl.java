package com.fyx.mvc.service.impl;

import com.fyx.mvc.annotation.OutLog;
import com.fyx.mvc.dao.EmployeeDao;
import com.fyx.mvc.entity.Employee;
import com.fyx.mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service(value = "employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao ed;
	
	@Override
	@OutLog
	public boolean addEmployee(Employee emp) {
		return ed.insert(emp) > 0 ? true : false;
	}

	@Override
	@OutLog
	public boolean removeEmployee(Integer id) {
		return ed.deleteByPrimaryKey(id) > 0 ? true : false;
	}

	@Override
	@OutLog
	public boolean modifyEmployee(Employee emp) {
		return ed.updateByPrimaryKey(emp) > 0 ? true : false;
	}

	@Transactional(propagation= Propagation.SUPPORTS , readOnly=true)
	@Override
	@OutLog
	public List<Employee> selectByName(String name) {
		List<Employee> emp = ed.selectByName(name);
		return emp;
	}

	@Transactional(propagation= Propagation.SUPPORTS , readOnly=true)
	@Override
	@OutLog
	public Employee selectById(Integer id) {
		Employee emp = ed.selectById(id);
		return emp;
	}

	@Transactional(propagation= Propagation.SUPPORTS , readOnly=true)
	@Override
	@OutLog
	public List<Employee> selectAllEmplyee() {
		List<Employee> emps = ed.selectAllEmp();
		return emps;
	}

}
