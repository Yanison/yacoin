package com.yanison.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
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
}
