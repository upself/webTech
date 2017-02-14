package com.action;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CounterAction extends ActionSupport{
	
	private String username;
	private String password;
	
	
	public String excute() throws Exception{
		
		ActionContext context=ActionContext.getContext();
		Map countersession = context.getSession();
		Map session = context.getSession();
		Map counterapplication =context.getApplication();
		Map request =(Map)context.get("request");
		countersession.put("username1", username);
		countersession.put("password1", password);
		countersession.put("counter","Test user");
		request.put("welcome", "hi Struts2!");
    	session.put("hello", "hi,banseon welcome!");
		
		Integer count =(Integer)countersession.get("count");
	       if (null == count) {         
	    	   count =1;
	    	   }else
	    	 count++;
	       
	       	counterapplication.put("count", count);
	    	
	
		return SUCCESS;
	}

	

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}
