package com.yanison.infra.modules.boardservice;

import java.util.Date;

import com.yanison.infra.modules.pagination.PageVo;

public class BoardVo extends PageVo {
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
	
	
	//udpt
		private String dnameUdpt;
		private Integer pidUdpt;
		private Integer captainUdpt;
		private Integer eodcnt;

		public Integer getEodcnt() {
			return eodcnt;
		}
		public void setEodcnt(Integer eodcnt) {
			this.eodcnt = eodcnt;
		}
		public String getDnameUdpt() {
			return dnameUdpt;
		}
		public void setDnameUdpt(String dnameUdpt) {
			this.dnameUdpt = dnameUdpt;
		}
		public Integer getPidUdpt() {
			return pidUdpt;
		}
		public void setPidUdpt(Integer pidUdpt) {
			this.pidUdpt = pidUdpt;
		}
		public Integer getCaptainUdpt() {
			return captainUdpt;
		}
		public void setCaptainUdpt(Integer captainUdpt) {
			this.captainUdpt = captainUdpt;
		}
		
	// shValue
		


		
		private String shValueName;
		private Integer shOption;
		private Integer shValueNY;
		private Integer shValueSeq;
		private Integer shValueInt;
		private String shValueStr;
		private String shValue;
		
		
		public String getShValue() {
			return shValue;
		}
		public void setShValue(String shValue) {
			this.shValue = shValue;
		}
		public Integer getShValueInt() {
			return shValueInt;
		}
		public void setShValueInt(Integer shValueInt) {
			this.shValueInt = shValueInt;
		}
		public String getShValueStr() {
			return shValueStr;
		}
		public void setShValueStr(String shValueStr) {
			this.shValueStr = shValueStr;
		}
		public String getShValueName() {
			return shValueName;
		}
		public void setShValueName(String shValueName) {
			this.shValueName = shValueName;
		}
		public Integer getShOption() {
			return shOption;
		}
		public void setShOption(Integer shOption) {
			this.shOption = shOption;
		}
		public Integer getShValueNY() {
			return shValueNY;
		}
		public void setShValueNY(Integer shValueNY) {
			this.shValueNY = shValueNY;
		}
		public Integer getShValueSeq() {
			return shValueSeq;
		}
		public void setShValueSeq(Integer shValueSeq) {
			this.shValueSeq = shValueSeq;
		}

		
		
		// cgg
		private Integer activeNy;

		public Integer getActiveNy() {
			return activeNy;
		}
		public void setActiveNy(Integer activeNy) {
			this.activeNy = activeNy;
		}
}
