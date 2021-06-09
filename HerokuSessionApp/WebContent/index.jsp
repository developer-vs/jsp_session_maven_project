<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
	
  <!-- Font Awesome CSS -->
  <script defer src="https://use.fontawesome.com/releases/v5.9.0/js/all.js"
	integrity="sha384-7Gk1S6elg570RSJJxILsRiq8o0CO99g1zjfOISrqjFUCjxHDn3TmaWoWOqt6eswF" crossorigin="anonymous">
  </script>
  <title>Login</title>
  <style>
    html, body {
      height: 100vh;
    }
  </style>
</head>
<body class="bg-light">
  <div class="container h-100">
	<div class="row h-100 align-items-center">
	  <div class="col-12 col-sm-9 col-md-6 col-lg-4 mx-auto my-auto">
	    <div class="card p-3 shadow">		
			<%
				Object validatorResponse = request.getAttribute("validator_response");
				if(validatorResponse != null) {
					out.println("<br><p style=\"color:red;\">" + validatorResponse + "</p>");
				}
			%>
			<h4 class="text-center">Sign In</h4>
			<form class="needs-validation" novalidate action="<%= request.getContextPath()%>/SiteController" method="post">
				<!-- User Name -->
            	<div class="form-group mt-3">
			      <label for="userName">User Name</label>
			      <div class="input-group">
				    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
				    <input type="text" name="userName" id="userName" class="form-control" placeholder="name" required>
				    <div class="invalid-feedback">
                      Please enter a valid user name.
                    </div>
				  </div>
				  
				  <!-- Password -->
                  <div class="form-group mt-3">
				    <label for="password">Password</label>
				    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                      </div>				    
				      <input type="password" id="password" class="form-control" name="password" placeholder="********" required><br>
				      <div class="invalid-feedback">
                        Please enter your password.
                      </div>
				    </div>
				  </div>
				  
				  <!-- Checkbox -->
	              <div class="custom-control custom-checkbox mt-3">
	                <input type="checkbox" class="custom-control-input" id="remember-me" />
	                <label class="custom-control-label" for="remember-me">Remember me</label>
	              </div>
				
				  <!-- Button Sign In -->
				  <input type="submit" value="Sign In" class="btn btn-block btn-info mt-3">
				
				  <!-- Register -->
              	  <p class="mt-2 text-center">
                    <small>Not a member? <a href="#">Register</a></small>
                  </p>
			  </div>
			</form>
	      </div>
	    </div>
	  </div>
	</div>

  <!-- Optional JavaScript -->
  
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
  </script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>

  <!-- Script to validate the form -->
  <script src="https://getbootstrap.com/docs/4.3/examples/checkout/form-validation.js" crossorigin="anonymous">
  </script>
</body>
</html>