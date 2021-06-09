<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>
	<%!
		// static int timeout = 0;
	%>
	<%
	    String userName = "guest";
		// getSession(false) - don't create if it doesn't exist
		// false to return null if there's no current session
		HttpSession newSession = request.getSession(false);
	
		if(newSession != null) {
			userName = (String)newSession.getAttribute("userName");
		}
	%>
		<p>Hello, <%= userName %>!!!</p>
	<% 	
		int timeout = newSession.getMaxInactiveInterval();		
		out.print(timeout + " sec left");
	%>
		<p>${userName}, after <%= timeout %> seconds the page will be redirected to the index.jsp </p>
	<% 
		response.setHeader("Refresh", timeout + "; URL = index.jsp");	
	%>
</body>
</html>