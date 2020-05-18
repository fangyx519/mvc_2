package com.fyx.mvc.entity;

public class Manager {
    private int mgrid;

    private String mgrname;

    private String mgrpwd;

    public Manager() {
    }

    public Manager(int mgrid, String mgrname, String mgrpwd) {
        this.mgrid = mgrid;
        this.mgrname = mgrname;
        this.mgrpwd = mgrpwd;
    }

    public int getMgrid() {
        return mgrid;
    }

    public void setMgrid(int mgrid) {
        this.mgrid = mgrid;
    }

    public String getMgrname() {
        return mgrname;
    }

    public void setMgrname(String mgrname) {
        this.mgrname = mgrname;
    }

    public String getMgrpwd() {
        return mgrpwd;
    }

    public void setMgrpwd(String mgrpwd) {
        this.mgrpwd = mgrpwd;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "mgrid=" + mgrid +
                ", mgrname='" + mgrname + '\'' +
                ", mgrpwd='" + mgrpwd + '\'' +
                '}';
    }
}