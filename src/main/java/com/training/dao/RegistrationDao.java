package com.training.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.training.model.Register;

public class RegistrationDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	
	public RegistrationDao(Connection con) {
		this.con=con;
		
	}
	
	public boolean insertUser(Register register) {
		boolean result = false;
		try {
			query="insert into users(name,email,password,address,city,state,pincode,mobile) values(?,?,?,?,?,?,?,?)";
			pst=this.con.prepareStatement(query);
			pst.setString(1,register.getName());
			pst.setString(2,register.getEmail());
			pst.setString(3,register.getPassword());
			pst.setString(4,register.getAddress());
			pst.setString(5,register.getCity());
			pst.setString(6,register.getState());
			pst.setString(7,register.getPincode());
			pst.setString(8,register.getMobile());
			pst.executeUpdate();
			result=true;
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result; 
		
		
	}
}
