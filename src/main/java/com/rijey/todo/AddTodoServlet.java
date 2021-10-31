package com.rijey.todo;

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


@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {
	
	  
	  private TodoService todo = new TodoService(); 
	
	  @Override
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException{
		  
				  
				  String todos = request.getParameter("todos");
				  String category = request.getParameter("category");
				  todo.addItem(new Todo(todos,category));
				  System.out.println(todos+" "+category);
				  response.sendRedirect("/list-todo.do");
			  }
	

}
