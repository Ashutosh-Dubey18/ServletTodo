package com.rijey.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
	
	private static List<Todo> todoList = new ArrayList<Todo>();
	
	static{
		todoList.add(new Todo("Learning servlets and jsp","study"));
		todoList.add(new Todo("Learning Srping MVC","study"));
		todoList.add(new Todo("Learning Srping rest and microservice","study"));
	}
	
	public List<Todo> retrieveList(){
		return todoList;
	}

	public void addItem(Todo todo) {
		todoList.add(todo);
		
	}
	
	public void deleteItem(Todo todo) {
		todoList.remove(todo);
	}
	
	
}
