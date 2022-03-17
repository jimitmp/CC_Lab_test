package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
		Integer id = Integer.parseInt(request.getParameter("id"));

		String firstname = request.getParameter("firstname");

		String lastname = request.getParameter("lastname");
		String dob = request.getParameter("dob");
		String number = request.getParameter("number");


		response.sendRedirect("registration.jsp");
		RequestDispatcher dispatcher= null;
		Connection con=null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/jimitpanditputra_111915082","root","Jimit4321#"); 
			PreparedStatement pst = con.prepareStatement("insert into employee(id, firstname, lastname, dob, number) values(?,?,?,?,?) "); 
			pst.setInt(1, id);
			pst.setString(2, firstname);
			pst.setString(3, lastname);
			pst.setString(4, dob);
			pst.setString(5, number);
		
			int rowCount =pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount>0) {
				request.setAttribute("status", "Success");
			}
			else {
				request.setAttribute("status", "Failed");

			}
		} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
	}

}