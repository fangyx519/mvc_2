package com.fyx.mvc.service;

import com.fyx.mvc.entity.Manager;

public interface ManagerService {

	boolean register(Manager mgr);

	Manager login(String name, String pwd);

	Manager selectByPrimaryKey(int mgrid);

	boolean insert(Manager record);

	boolean deleteByPrimaryKey(int mgrid);

	boolean updateByPrimaryKey(Manager record);
}
