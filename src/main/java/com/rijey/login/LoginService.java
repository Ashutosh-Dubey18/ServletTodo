package com.rijey.login;

public class LoginService {
	
	public boolean isValid(String user,String pass) {
		
		if (user.equals("admin") && pass.equals("admin")) {
			return true;
		}
		return false;
	}

}
