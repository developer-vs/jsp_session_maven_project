<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>
	<% String userName = (String)request.getSession().getAttribute("userName"); %>
	<p>Hello, <%= userName %></p>
	<% 
		// getSession(false) - don't create if it doesn't exist
		HttpSession newSession = request.getSession(false);
	
		int timeout = newSession.getMaxInactiveInterval();	
	
		out.print(timeout + " sec left");
		response.setHeader("Refresh", timeout + "; URL = index.jsp");		
	%>
</body>
</html>