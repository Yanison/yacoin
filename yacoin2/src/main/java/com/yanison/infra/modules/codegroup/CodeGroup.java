package com.yanison.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	private Integer cgseq;
	private String cgname;
	private String cgnameEng;
	private Integer ccgseq;
	private String ccgname;
	private Integer cg_cg;
	private Date ccgregDateAt;
	private Date ccgregDateBt;
	private Date ccgmodDateAt;
	private Date ccgmodDateBt;
	private Integer shOption;
	private String shValue;
	
	
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Date getCcgregDateAt() {
		return ccgregDateAt;
	}
	public void setCcgregDateAt(Date ccgregDateAt) {
		this.ccgregDateAt = ccgregDateAt;
	}
	public Date getCcgregDateBt() {
		return ccgregDateBt;
	}
	public void setCcgregDateBt(Date ccgregDateBt) {
		this.ccgregDateBt = ccgregDateBt;
	}
	public Date getCcgmodDateAt() {
		return ccgmodDateAt;
	}
	public void setCcgmodDateAt(Date ccgmodDateAt) {
		this.ccgmodDateAt = ccgmodDateAt;
	}
	public Date getCcgmodDateBt() {
		return ccgmodDateBt;
	}
	public void setCcgmodDateBt(Date ccgmodDateBt) {
		this.ccgmodDateBt = ccgmodDateBt;
	}
	public Integer getXcnt() {
		return xcnt;
	}
	public void setXcnt(Integer xcnt) {
		this.xcnt = xcnt;
	}
	private Integer xcnt;
	public String getCgnameEng() {
		return cgnameEng;
	}
	public void setCgnameEng(String cgnameEng) {
		this.cgnameEng = cgnameEng;
	}
	public Integer getxcnt() {
		return xcnt;
	}
	public void setxcnt(Integer xcnt) {
		this.xcnt = xcnt;
	}
	public Integer getCgseq() {
		return cgseq;
	}
	public void setCgseq(Integer cgseq) {
		this.cgseq = cgseq;
	}
	public String getCgname() {
		return cgname;
	}
	public void setCgname(String cgname) {
		this.cgname = cgname;
	}
	public Integer getCcgseq() {
		return ccgseq;
	}
	public void setCcgseq(Integer ccgseq) {
		this.ccgseq = ccgseq;
	}
	public String getCcgname() {
		return ccgname;
	}
	public void setCcgname(String ccgname) {
		this.ccgname = ccgname;
	}
	public Integer getCg_cg() {
		return cg_cg;
	}
	public void setCg_cg(Integer cg_cg) {
		this.cg_cg = cg_cg;
	}
	
	
	
	
////////////////////////vo table s////////////////////////////
/////////////////////////////////////////////////////////////////

	private String shValueName;
	private String shValueSeq;


	public String getShValueName() {
		return shValueName;
	}
	public void setShValueName(String shValueName) {
		this.shValueName = shValueName;
	}
	public String getShValueSeq() {
		return shValueSeq;
	}
	public void setShValueSeq(String shValueSeq) {
		this.shValueSeq = shValueSeq;
	}
	
	
////////////////////////vo table e/////////////////////////////
/////////////////////////////////////////////////////////////////
	
}
