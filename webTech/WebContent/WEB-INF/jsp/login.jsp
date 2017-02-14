<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Test</title>
</head>
<body>

user name:${username }<br>
pass word:${password }<br>
session counter:${count }

<s:property value="#request.welcome"/><BR>
<s:property value="#session.hello"/><BR>
<s:property value="#counterapplication.count"/><BR>
<s:property value="#countersession.counter"/><BR>
<s:debug></s:debug>


</body>