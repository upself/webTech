<%@page import="java.io.OutputStream"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" %> 
<%@ page import="com.domain.*"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <% 

 java.util.ArrayList list = new java.util.ArrayList(); 
User usera=new User(); 
usera.setName("Kate"); 
usera.setPassword("abcd"); 
list.add(usera); 

User userb=new User(); 
userb.setName("Jack"); 
userb.setPassword("hijk"); 
list.add(userb); 

int counter=0;
if (application.getAttribute("counter")==null){
	counter=1
	System.out.println("Please login again");

}
	
else if(application.getAttribute("list.name")=="Jack"){
	
	counter =counter +1;
} 

application.setAttribute("list", list); 
%>  --%>

<%-- <jsp:userBean id="personCount " class="com.domain.home.jsp.bean.Counter" scope="session"/>

<jsp:userBean id="totalCount" class="com.domain.Counter" scope="application"/>
<jsp:getProperty name="personCount" property="count"/>
<jsp:getProperty name="totalCount" property="count"/> --%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The testing page</title>

<script type="text/javascript">
function timedMsg()
{
var t=setTimeout("alert('5 seconds!')",5000)
}
</script>
</head>

<body>
<form action="timedMsg">
<input type="button" value="Display timed alertbox!" onClick="timedMsg()">
</form>
<br>

<s:iterator value="#application.list" id ="u">
user name :<s:property value="#u.name"/><br>
login count:${count}<br>
</s:iterator>

<br>
<s:form action="login">
username:<s:textfield name="username"></s:textfield>
password:<s:textfield name="password"></s:textfield>
<s:submit></s:submit>

</s:form>

<s:iterator value="#session.list" status="stuts" id="user" >
<s:property value="#user.name"></s:property>
</s:iterator><br>
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