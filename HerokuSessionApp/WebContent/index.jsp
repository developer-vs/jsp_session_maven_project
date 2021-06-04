<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%
		Object validatorResponse = request.getAttribute("validator_response");
		if(validatorResponse != null) {
			out.println("<br><p style=\"color:red;\">" + validatorResponse + "</p>");
		}
	%>
	<form action="<%= request.getContextPath()%>/SiteController" method="post">
		<label for="userName">User Name *</label><br>
		<input type="text" class="form-control" name="userName" required><br>
		<label for="password">Password *</label><br>
		<input type="password" class="form-control" name="password" required><br>
		<input type="submit" value="Submit" class="btn btn-primary">
	</form>
</body>
</html>