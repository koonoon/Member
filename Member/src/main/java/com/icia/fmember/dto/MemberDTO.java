package com.icia.fmember.dto;

public class MemberDTO {

	private String fId;
	private String fPw;
	private String fName;
	private String fBirth;
	private String fGen;
	private String fPhone;
	private String fAddr;
	private String fEmail;
	
	public String getfId() {
		return fId;
	}
	public void setfId(String fId) {
		this.fId = fId;
	}
	public String getfPw() {
		return fPw;
	}
	public void setfPw(String fPw) {
		this.fPw = fPw;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfBirth() {
		return fBirth;
	}
	public void setfBirth(String fBirth) {
		this.fBirth = fBirth;
	}
	public String getfGen() {
		return fGen;
	}
	public void setfGen(String fGen) {
		this.fGen = fGen;
	}
	public String getfPhone() {
		return fPhone;
	}
	public void setfPhone(String fPhone) {
		this.fPhone = fPhone;
	}
	public String getfAddr() {
		return fAddr;
	}
	public void setfAddr(String fAddr) {
		this.fAddr = fAddr;
	}
	public String getfEmail() {
		return fEmail;
	}
	public void setfEmail(String fEmail) {
		this.fEmail = fEmail;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [fId=" + fId + ", fPw=" + fPw + ", fName=" + fName + ", fBirth=" + fBirth + ", fGen=" + fGen
				+ ", fPhone=" + fPhone + ", fAddr=" + fAddr + ", fEmail=" + fEmail + "]";
	}
	
	
}
