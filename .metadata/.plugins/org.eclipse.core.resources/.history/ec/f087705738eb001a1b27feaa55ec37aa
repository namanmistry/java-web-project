package com.main;

import java.io.OutputStream;
import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/image")
public class Image extends HttpServlet {
	
	static int times=0;
	
	
	public void service(HttpServletRequest req,HttpServletResponse res) {
		int i=Integer.parseInt(req.getParameter("id"));
		int post=Integer.parseInt(req.getParameter("post"));
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String mysqlUrl = "jdbc:mysql://localhost:3306/technicalblogs";
			 Connection con = DriverManager.getConnection(mysqlUrl, "root", "");
			 Statement st= con.createStatement();
			  ResultSet rs1;
			  rs1 = st.executeQuery("select * from posts where id="+post);
			 rs1.next();
			  
			  
			  
			  
			  
			  byte[] imgData = rs1.getBytes("photo"+i);//Here....... r1.getBytes() extract byte data from resultSet
			 
			  res.setContentType("image/jpg");
			  res.setContentLength(imgData.length);
			  
			  res.getOutputStream().write(imgData);
			  
			  

             
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
