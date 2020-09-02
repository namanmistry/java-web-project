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

@WebServlet("/previousPage")
public class Previous extends HttpServlet {
	
	static Next current=new Next();
	
	
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		int current_page=current.getCurrentPageNumber();
		double num_page_temp=1;
		int num_page=(int)num_page_temp;
		
		current.setCurrentPageNumber(current_page-1);
		current_page=current.getCurrentPageNumber();
		
		//To prevent user to get invalid page in negative
		if(current_page==1) {
			
			req.setAttribute("begin_loop", 0);
			req.setAttribute("end_loop", 4);
			
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req,res);
			
			
		}
		else if(current_page!=1) {

		try {
			//connecting to database
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technicalblogs" ,"root" ,"");
			Statement pstm = con.createStatement(); 
			ResultSet rs = pstm.executeQuery("select COUNT(*) from posts");
			rs.next();
			
			
			int num_of_posts=rs.getInt(1);
			num_page_temp=Math.ceil(num_of_posts/5);
			num_page=(int)num_page_temp;
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
		//To prevent user to get invalid page
		if(current_page<=num_page) {
		int begin_loop=5*current_page-5;
		int end_loop=5*current_page-1;
		req.setAttribute("begin_loop", begin_loop);
		req.setAttribute("end_loop", end_loop);
		
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		rd.forward(req,res);
		}
		else {
			current_page=num_page;
			int begin_loop=5*current_page-5;
			int end_loop=5*current_page-1;
			req.setAttribute("begin_loop", begin_loop);
			req.setAttribute("end_loop", end_loop);
			
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req,res);
			
		}
		}
	}

}
