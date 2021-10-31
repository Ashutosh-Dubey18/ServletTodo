package com.rijey.logout;


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


@WebServlet(urlPatterns = "/logout.do")
public class LogoutServlet extends HttpServlet {
	
	
	  @Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException{
		  			
		  		  request.getSession().invalidate();
				  response.sendRedirect("/login.do");
			  }
	

}
