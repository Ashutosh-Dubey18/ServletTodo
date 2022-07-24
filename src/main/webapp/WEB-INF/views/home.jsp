
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

<body class="">

	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarText">
	  
	    <ul class="navbar-nav mr-auto nav navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="/home.do">Home <span class="sr-only">(current)</span></a>
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
			<li><a href="/logout.do">Logout</a></li>
		  </ul>
	    </span>
	    
	  </div>
	</nav>
		
	<br>
	<div class="jumbotron home-page d-flex justify-content-center align-items-center" >
         <Container class="text-center" >
             <h2>Welcome To Todo List</h2>
             <br></br>
             <Container>
                 <p1>Manage and view your Todos. Just Click on the button below:</p1>
             </Container>
             <br>
             <Container>
                 <Button class="mt-5" color="bg-secondary rounded" outline><a class="nav-link" href="/list-todo.do">Start Using</a></Button>
             </Container>
         </Container>
     </div>
	

	<footer class="footer">
		<div><form action="/todo.do" method="post">
		</form></div>
	</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>

</html>


