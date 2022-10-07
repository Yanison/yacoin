package com.yanison.infra.modules.ezenboard;

import java.util.Date;

import com.yanison.infra.modules.codegroup.CodeGroup;
import com.yanison.infra.modules.ezenboard.vo.EzenBoardVO;

public class EzenBoardGroup extends EzenBoardVO {
	private Integer empid;
	private Integer dept;
	private String ename;
	private Integer salary;
	private Date workdate;
//	private String dname;
	
	
	
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

	CodeGroup cg = new CodeGroup();
	private Integer deptid = cg.getDeptid();
	private String dname = cg.getDname();


	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}

	
	
	
			

}
