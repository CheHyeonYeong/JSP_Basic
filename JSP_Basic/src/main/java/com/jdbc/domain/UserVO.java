package com.jdbc.domain;

public class UserVO {
	// vo class DB column을 자바변수로 동일하게 선언, 은닉 선언
	
    private String id;
    private String pw;
    private String name;
    private String phone1;
    private String phone2;
    private String gender;
    
    
	public UserVO() {
		super();
	}
	public UserVO(String id, String pw, String name, String phone1, String phone2, String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return String.format("UserV)[id= %s, pw= %s, name= %s, phone1= %s, phone2= %s, gender= %s]",id,pw, name, phone1, phone2,gender);
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
    
    
}
