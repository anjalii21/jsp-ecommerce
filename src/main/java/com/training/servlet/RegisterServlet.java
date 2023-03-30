package com.training.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.Registration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.training.dao.*;
import com.training.model.*;
import com.training.connection.*;
/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/registerservlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Register register = new Register();
			register.setName(request.getParameter("name"));
			register.setEmail(request.getParameter("email"));
			register.setPassword(request.getParameter("password"));
			register.setAddress(request.getParameter("address"));
			register.setCity(request.getParameter("city"));
			register.setState(request.getParameter("state"));
			register.setPincode(request.getParameter("pincode"));
			register.setMobile(request.getParameter("mobile"));
			RegistrationDao registrationDao= new RegistrationDao(DbCon.getConnection());
			
			registrationDao.insertUser(register);
			
			response.sendRedirect("login.jsp");
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	}		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}

