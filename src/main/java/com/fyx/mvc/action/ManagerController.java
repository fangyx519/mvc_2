package com.fyx.mvc.action;

import com.alibaba.fastjson.JSONObject;
import com.fyx.mvc.entity.Manager;
import com.fyx.mvc.service.ManagerService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/mgr")
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;

	@PostMapping("/login")
	@ResponseBody
	public JSONObject login(@RequestBody Manager manager){
		JSONObject jsonObject = new JSONObject();
		Manager manager1 = managerService.login(manager.getMgrname(),manager.getMgrpwd());
		if(!StringUtils.isEmpty(manager1)){
			jsonObject.put("result",true);
		}else {
			jsonObject.put("result",false);
		}
		return jsonObject;

	}
	
	@PostMapping("/register")
	@ResponseBody
	public JSONObject register(@RequestBody Manager manager){
		boolean result = managerService.register(manager);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result",result);

		return jsonObject;
	}
}
