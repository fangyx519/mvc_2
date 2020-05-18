package com.fyx.mvc.dao;

import com.fyx.mvc.entity.Manager;

public interface ManagerDao {
    int deleteByPrimaryKey(int mgrid);

    int insert(Manager record);

    int insertSelective(Manager record);

    Manager selectByPrimaryKey(int mgrid);

    Manager selectByName(String mgrname);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
}