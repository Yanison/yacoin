package com.yanison.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup extends CodeGroupVo {
//Dept
	private Integer deptid;
	private Integer pid;
	private String dname; 
	private Date workdate;
	private Integer captain;
	
	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Date getWorkdate() {
		return workdate;
	}
	public void setWorkdate(Date workdate) {
		this.workdate = workdate;
	}
	public Integer getCaptain() {
		return captain;
	}
	public void setCaptain(Integer captain) {
		this.captain = captain;
	}
	
	
	

	
	
	
//Emp
	private Integer empid;
	private Integer dept;
	private String ename;
	private Integer salary;
	
	public Integer getEmpid() {
		return empid;
	}
	public void setEmpid(Integer empid) {
		this.empid = empid;
	}
	public Integer getDept() {
		return dept;
	}
	public void setDept(Integer dept) {
		this.dept = dept;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	
	
////vo
//	private String dnameUdpt;
//	private Integer pidUdpt;
//	private Integer captainUdpt;
//	private Integer eodcnt;
//
//	public Integer getEodcnt() {
//		return eodcnt;
//	}
//	public void setEodcnt(Integer eodcnt) {
//		this.eodcnt = eodcnt;
//	}
//	public String getdnameUdpt() {
//		return dnameUdpt;
//	}
//	public void setdnameUdpt(String dnameUdpt) {
//		this.dnameUdpt = dnameUdpt;
//	}
//	public Integer getPidUdpt() {
//		return pidUdpt;
//	}
//	public void setPidUdpt(Integer pidUdpt) {
//		this.pidUdpt = pidUdpt;
//	}
//	public Integer getCaptainUdpt() {
//		return captainUdpt;
//	}
//	public void setCaptainUdpt(Integer captainUdpt) {
//		this.captainUdpt = captainUdpt;
//	}
//	
//// cg
//	private Integer activeNy;
//
//	public Integer getActiveNy() {
//		return activeNy;
//	}
//	public void setActiveNy(Integer activeNy) {
//		this.activeNy = activeNy;
//	}
//	
}
