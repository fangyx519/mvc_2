package com.fyx.mvc.dao;

import com.fyx.mvc.entity.Employee;

import java.util.List;

public interface EmployeeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Employee record);

    int insertSelective(Employee record);

    List<Employee> selectByName(String name);

    Employee selectById(Integer id);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
    
    List<Employee> selectAllEmp();
}