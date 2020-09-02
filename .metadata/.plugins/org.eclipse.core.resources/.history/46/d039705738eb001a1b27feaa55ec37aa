package com.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/FeedBack_Viewer")
public class FeedBack_Viewer extends HttpServlet {
	
	
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("num", id);
		RequestDispatcher rd=req.getRequestDispatcher("FeedBack_Viewer.jsp");
		rd.forward(req, res);
		
	}

}
