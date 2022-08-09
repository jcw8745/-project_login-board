package com.ezen.dto;

import java.sql.Timestamp;

public class MemberVO {

private String id;
private String pwd;
private String name;
private String phone;
private String email;
private int gender;
private String age;
private int admin;
private Timestamp enter;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getGender() {
	return gender;
}
public void setGender(int gender) {
	this.gender = gender;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public int getAdmin() {
	return admin;
}
public void setAdmin(int admin) {
	this.admin = admin;
}
public Timestamp getEnter() {
	return enter;
}
public void setEnter(Timestamp enter) {
	this.enter = enter;
}
@Override
public String toString() {
	return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", email=" + email
			+ ", gender=" + gender + ", age=" + age + ", admin=" + admin + ", enter=" + enter + "]";
}

}
