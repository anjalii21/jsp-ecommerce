package com.training.model;

public class Register {
	private String name;
	private String email;
	private String password;
	private String address;
	private String city;
	private String state;
	private String pincode;
	private String mobile;
	
	
	public Register() {
		super();
		
	}


	public Register(String name, String email, String password, String address, String city, String state, String pincode,
			String mobile) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.mobile = mobile;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getPincode() {
		return pincode;
	}


	public void setPincode(String pincode) {
		this.pincode = pincode;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	@Override
	public String toString() {
		return "Register [name=" + name + ", email=" + email + ", password=" + password + ", address=" + address
				+ ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", mobile=" + mobile + "]";
	}
}


	