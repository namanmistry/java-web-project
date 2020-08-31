package com.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/likes")
public class Likes extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num=Integer.parseInt(request.getParameter("id"));
		
		try {
			//Connecting to database
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technicalblogs" ,"root" ,"");
			Statement pstm = con.createStatement(); 
			int rs = pstm.executeUpdate("update posts set likes=likes+1 where id="+num);
			
			
//			RequestDispatcher rd =request.getRequestDispatcher("Post.jsp");
//			rd.forward(request, response);
			
			response.sendRedirect("PostFetcher?num="+num);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
