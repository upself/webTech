package com.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
public String doHome(){
	return SUCCESS;
}

public String doRequest(){
	return SUCCESS;
}

private String myRequest;


private String[] habit;

public String[] getHabit() {
	return habit;
}

public void setHabit(String[] habit) {
	this.habit = habit;
}

public String doHabit(){
	return SUCCESS;
}
public String getMyRequest() {
	return myRequest;
}

public void setMyRequest(String myRequest) {
	this.myRequest = myRequest;
}

private String myLanguage;

public String getMyLanguage() {
	return myLanguage;
}

public void setMyLanguage(String myLanguage) {
	this.myLanguage = myLanguage;
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
