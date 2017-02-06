<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" %> 
<%@ page import="com.domain.*"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
java.util.ArrayList list = new java.util.ArrayList(); 
User usera=new User(); 
usera.setName("white"); 
usera.setPassword("abcd"); 
list.add(usera); 
User userb=new User(); 
userb.setName("mary"); 
userb.setPassword("hijk"); 
list.add(userb); 
session.setAttribute("list", list); 

%> 
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<s:iterator value="#session.list" id ="u">
<s:property value="#u.password"/><br>

</s:iterator>

<s:iterator value="%list" status="stuts" id="user" >
<s:property value="user.name"></s:property>
</s:iterator>
<s:form action="habit">
	input name:<s:textfield name="myName"></s:textfield	><br>
	
	 <s:checkbox  name="habit" label="Run" value="false" fieldValue="Running"/>
	 <s:checkbox  name="habit" label="Jump" value="false" fieldValue="Jumping"/>
	 <s:checkbox  name="habit" label="Swim" value="false" fieldValue="Swimming"/>
	 <s:checkbox  name="habit" label="Skite" value="true" fieldValue="Skiting"/>
	<s:submit></s:submit>
</s:form>


<s:form action="displayLanguage">
input language:<s:textfield name="myLanguage"></s:textfield>
<s:submit></s:submit>
</s:form>


<s:form action="displayRequest">
input request:<s:textfield name="myRequest"></s:textfield>
<s:submit></s:submit>
</s:form>
</body>
</html>