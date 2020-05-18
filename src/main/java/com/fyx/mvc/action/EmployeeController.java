package com.fyx.mvc.action;

import com.alibaba.fastjson.JSONObject;
import com.fyx.mvc.entity.Employee;
import com.fyx.mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/emp")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@GetMapping("showAllEmp")
	public @ResponseBody List<Employee> showAllEmp(){
		List<Employee> empAll = employeeService.selectAllEmplyee();
		
		return empAll;
	}
	
	@DeleteMapping("delete/{id}")
	@ResponseBody
	public JSONObject removeEmp(@PathVariable("id") Integer id){
		boolean result = employeeService.removeEmployee(id);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result",result);

		return jsonObject;
	}
	
	@GetMapping("queryByName/{name}")
	public @ResponseBody List<Employee> queryByName(@PathVariable("name") String name){
		List<Employee> empSelect = employeeService.selectByName(name);

		return empSelect;
	}

	@GetMapping("{id}")
	public @ResponseBody Employee showModifyEmp(@PathVariable("id") Integer id){
		Employee empSelect = employeeService.selectById(id);

		return empSelect;
	}
	
	@PutMapping("update")
	@ResponseBody
	public JSONObject modifyEmp(@RequestBody Employee employee){
		boolean result = employeeService.modifyEmployee(employee);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result",result);

		return jsonObject;
	}
	
	@PostMapping("insert")
	@ResponseBody
	public JSONObject addEmp(@RequestBody Employee employee){
		boolean result = employeeService.addEmployee(employee);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result",result);

		return jsonObject;
	}

}
