
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
	<head>
		<title>Todos</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<style>
			.container{
				margin-left: 40px;
			}
			.footer {
				position: fixed;
				bottom: 0;
				width: 100%;
				height: 50px;
				background-color: #f5f5f5;
			}
			.navbar{
				height: 70px;
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
			<li><a href="/logout.do">Logout</a></li>
		  </ul>
	    </span>
	    
	  </div>
	</nav>
		
	<br>
	<div class="container">
		<p><h2>Welcome ${name}</h2> </p>

		<table class="table table-striped">
		<caption>List Of Todos</caption> <br>
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th>Action</th>
			</thead>
			<tbody>
				<c:forEach items="${todo}" var="item">
					<tr>
						<td>${item.getName()}</td>
						<td>${item.getCategory()}</td>
						<td><a class="btn btn-outline-danger btn-sm" href="delete-todo.do?todos=${item.getName()}">delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
		<button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal">
		  Add Item
		</button>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form method="POST" action="/add-todo.do">
					<fieldset class="form-group">
						<label>Description</label> <input name="todos" type="text"
							class="form-control form-control-sm" />
					</fieldset>
					<fieldset class="form-group">
						<label>Category</label> <input name="category" type="text"
							class="form-control form-control-sm " /> <BR />
					</fieldset>
					<div class="modal-footer">
				        <input type="submit" class="btn btn-secondary btn-sm" data-dismiss="modal" value="Close"/>
				        <input type="submit" class="btn btn-primary btn-sm" value="Add"/>
			        </div>
					<!-- <input name="add" type="submit" class="btn btn-success float-right" value="Add" /> -->
				</form>
		      </div>
		    </div>
		  </div>
		</div>
		
	</div>
	
	<br><br><br><br><br><br>

	<footer class="footer">
		<div><form action="/todo.do" method="post">
		</form></div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>

