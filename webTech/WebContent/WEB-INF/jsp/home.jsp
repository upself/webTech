<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<s:form action="displayName">
	input name:<s:textfield name="myName"></s:textfield	><br>
	
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