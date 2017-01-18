package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
public String doHome(){
	return SUCCESS;
}

private String myName;

public String getMyName() {
	return myName;
}

public void setMyName(String myName) {
	this.myName = myName;
}

@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
