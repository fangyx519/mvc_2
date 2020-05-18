package com.fyx.mvc.service.impl;

import com.fyx.mvc.annotation.OutLog;
import com.fyx.mvc.dao.ManagerDao;
import com.fyx.mvc.entity.Manager;
import com.fyx.mvc.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service(value = "managerService")
@Transactional
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDao managerDao;

	@Override
	@OutLog
	public boolean register(Manager mgr) {
		return managerDao.insert(mgr) > 0 ? true : false;
	}

	@Transactional(propagation= Propagation.SUPPORTS , readOnly=true)
	@Override
	@OutLog
	public Manager login(String name, String pwd) {
		Manager mgr = managerDao.selectByName(name);
		if(mgr != null && mgr.getMgrpwd().equals(pwd)){
				return mgr;
		}
		return null;
	}

	@Override
	@OutLog
	public Manager selectByPrimaryKey(int mgrid) {
		return managerDao.selectByPrimaryKey(mgrid);
	}

	@Override
	@OutLog
	public boolean insert(Manager manager) {
		return managerDao.insert(manager) > 0  ? true : false ;
	}

	@Override
	@OutLog
	public boolean deleteByPrimaryKey(int mgrid) {
		return managerDao.deleteByPrimaryKey(mgrid) > 0 ? true : false;
	}

	@Override
	@OutLog
	public boolean updateByPrimaryKey(Manager manager) {
		return managerDao.updateByPrimaryKey(manager) > 0 ? true : false;
	}

}
