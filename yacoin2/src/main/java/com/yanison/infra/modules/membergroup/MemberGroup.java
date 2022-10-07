package com.yanison.infra.modules.membergroup;

import java.util.Date;

import com.yanison.infra.modules.codegroup.CodeGroup;

public class MemberGroup extends CodeGroup{
	
	private Integer empid;
	private Integer dept;
	private String ename;
	private Integer salary;
	private Date workdate;
	
	
	public Date getWorkdate() {
		return workdate;
	}
	public void setWorkdate(Date workdate) {
		this.workdate = workdate;
	}
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
