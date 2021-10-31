
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
	<head>
		<title>Todos</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<style>
			.invalid-msg{
				color: red;
			}
			.container{
				margin-left: 40px;
			}
			.footer {
				position: absolute;
				bottom: 0;
				width: 100%;
				height: 60px;
				background-color: #f5f5f5;
			}
		</style>
	</head>

<body>

	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a href="/" class="navbar-brand">Brand</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarText">
	  
	    <ul class="navbar-nav mr-auto nav navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	      </li>
	      
	      <li class="nav-item">
	        <a class="nav-link" href="/list-todo.do">Todos</a>
	      </li>
	      
	      <li class="nav-item">
	        <a class="nav-link" href="https://github.com/Ashutosh-Dubey18">Profile</a>
	      </li>
	    </ul>
	    
	    <span class="navbar-text">
	      <ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		  </ul>
	    </span>
	    
	  </div>
	</nav>
		
	<br>
	<div class="input-group mb-3 container">
		<form action="/login.do" method="post">
			<p class="invalid-msg">${invalid}</p>
			Name: <input class="form-control" type="text" name="name" /> 
			Password: <input class="form-control" type="password" name="password" /> 
			<button type="submit" value="login" class="btn btn-primary btn-sm">Submit</button>
		</form>
	</div>
	

	<footer class="footer">
		<div>footer content<form action="/todo.do" method="post">
		</form></div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>


