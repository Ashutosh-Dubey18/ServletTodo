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


@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {
	
	  
	  private TodoService todo = new TodoService(); 
	
	  @Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		   
				  
		  todo.deleteItem(new Todo(request.getParameter("todos"),request.getParameter("category")));
		  response.sendRedirect("/list-todo.do");
	  }
	  

}
