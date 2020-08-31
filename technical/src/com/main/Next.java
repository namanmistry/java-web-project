package com.main;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/currentPage")
public class Next extends HttpServlet {
	//Variable declaration
	static int current_page=0;
	double num_page_temp=1;
	int num_page=(int)num_page_temp;
	
	//method for get current page number
	public int getCurrentPageNumber() {
		return current_page;
	}
	
	//method to set current page number
	public void setCurrentPageNumber(int current_page) {
		if(current_page<1) {}
		else {
		this.current_page=current_page;
		}
		
	}
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		current_page=current_page+1;
		
		
		try {
			//Connecting to database
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technicalblogs" ,"root" ,"");
			Statement pstm = con.createStatement(); 
			ResultSet rs = pstm.executeQuery("select COUNT(*) from posts");
			rs.next();
			
			
			double num_of_posts=rs.getInt(1);
			num_page_temp=Math.ceil(num_of_posts/(double)5);
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


