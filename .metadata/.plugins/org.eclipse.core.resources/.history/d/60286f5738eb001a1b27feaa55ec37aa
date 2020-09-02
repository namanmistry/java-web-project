package com.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Contact")
public class Contact extends HttpServlet {
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		
		String sql="insert into contact values(?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technicalblogs" ,"root" ,"");
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setNull(1, 0);
			pstm.setString(2, name);
			pstm.setString(3, email);
			pstm.setString(4, subject);
			pstm.setString(5, message);
			int rs = pstm.executeUpdate();
			
			
			
			Mail.sendEmail("adityakansara42@gmail.com","From Technical Blogs: New viewer contacted"
					+"Name: "+name+System.lineSeparator()
					+"Subject: "+subject+System.lineSeparator()
					+"Message: "+message);
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		


}

}
