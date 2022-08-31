package com.yanison.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {

		private String Seq;
		private String pw;
		private String nickname;
		private String email;
		private String tel;
		private Date regDateAt;
		private String regDateBy;
		private Date modDateAt;
		private String modDateBy;
		private Integer userActive;
		
		
//-------------------------------------------		
		public String getSeq() {
			return Seq;
		}
		public void setSeq(String seq) {
			Seq = seq;
		}
		public String getPw() {
			return pw;
		}
		public void setPw(String pw) {
			this.pw = pw;
		}
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public Date getRegDateAt() {
			return regDateAt;
		}
		public void setRegDateAt(Date regDateAt) {
			this.regDateAt = regDateAt;
		}
		public String getRegDateBy() {
			return regDateBy;
		}
		public void setRegDateBy(String regDateBy) {
			this.regDateBy = regDateBy;
		}
		public Date getModDateAt() {
			return modDateAt;
		}
		public void setModDateAt(Date modDateAt) {
			this.modDateAt = modDateAt;
		}
		public String getModDateBy() {
			return modDateBy;
		}
		public void setModDateBy(String modDateBy) {
			this.modDateBy = modDateBy;
		}
		public Integer getUserActive() {
			return userActive;
		}
		public void setUserActive(Integer userActive) {
			this.userActive = userActive;
		}

}
