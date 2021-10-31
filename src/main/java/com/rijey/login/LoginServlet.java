package com.rijey.login;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rijey.todo.TodoService;


@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	
	
	  private LoginService login = new LoginService();
	  
	  private TodoService todo = new TodoService(); 
	
	  @Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException{
		  
				  String name = request.getParameter("name");
				  request.setAttribute("name",name);
				  
				  request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			  }
	  
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException{
		  
				  String name = request.getParameter("name");
				  String password = request.getParameter("password");
				  if(login.isValid(name, password)) {
					  request.getSession().setAttribute("name",name);
					  response.sendRedirect("/list-todo.do");
					  
				  }else {
					  request.getSession().setAttribute("name", null);
					  request.setAttribute("invalid", "Invalid Credentials! Enter rijey and pass");
					  request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
				  }
			  }

	

}
