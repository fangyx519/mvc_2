package com.fyx.mvc.entity;

/**
 * @Author fyx
 * @Time in 1:46 2020/5/7
 * @Despriction
 */
public class Dept {
    String deptId;
    String deptName;

    public Dept() {
    }

    public Dept(String deptId, String deptName) {
        this.deptId = deptId;
        this.deptName = deptName;
    }

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptId='" + deptId + '\'' +
                ", deptName='" + deptName + '\'' +
                '}';
    }
}
