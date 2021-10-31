package com.rijey.login;

public class LoginService {
	
	public boolean isValid(String user,String pass) {
		
		if(user.equals("rijey") && pass.equals("pass")) {
			return true;
		}
		return false;
	}

}
