package com.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login_checker")
public class Login_checker extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String passw=request.getParameter("pass");
		
		if(username==null || passw==null) {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		if(username.equals("codethunder") && passw.equals("1234")) {
			HttpSession session1=request.getSession();
			session1.setAttribute("username", username);
			session1.setAttribute("passw", passw);
			RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);
		
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}

}
