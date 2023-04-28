<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Manage Members</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/members.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/34c5593909.js" crossorigin="anonymous"></script>
</head>
<body style="background-color: #272727;">
    <nav class="navbar navbar-expand-lg navbar-dark ">
  <a class="navbar-brand" href="/src/main/webapp/WEB-INF/index.html">
    <img src="media\PNG\Asset 4@3x.png" height="40"
    loading="lazy"></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Members <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Pending</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Events</a>
      </li>
    </ul>
    
    <div class="dropdown">
        <a
          class="dropdown-toggle d-flex align-items-center hidden-arrow"
          href="#"
          id="navbarDropdownMenuAvatar"
          role="button"
          data-bs-toggle="dropdown"
          aria-expanded="false"
        >
          <img
            src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
            class="rounded-circle"
            height="50"
            
            loading="lazy"
          />
        </a>
        <ul
          class="dropdown-menu dropdown-menu-end"
          aria-labelledby="navbarDropdownMenuAvatar"
          style="color:#272727"
        >
          <li>
            <a class="dropdown-item" href="#">My profile</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">Settings</a>
          </li>
        </ul>
      </div>
        <div class="buttons" >
            
            <a href="/sign-in">
              <button class="signup"> Sign Out </button></a>
          </div>
    
  </div>
</nav>

<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-5">
                        <h2><b>Member Management</b></h2>
                    </div>
                    <div class="col-xs-7">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addMemberModal"><i class="material-icons">&#xE147;</i> <span>Add New Member</span></button>		
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Username</th>
                        <th>Discord Tag</th>						
                        <th>E-mail</th>
                        <th>Departement</th>
                        <th>Score</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody >
					<c:forEach var="user" items="${requestScope.users}">
		                <tr>
		                	<td>${user.iduser}</td>	
		                    <td>${user.username}</td>
		                    <td>${user.discordTag}</td>
		                    <td>${user.email}</td>
		                    <td>${user.dept.deptna}</td>
		                    <td>${user.score}</td>
		                    <td>
                            	<button  class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#editMemberModal" id="edit" onclick="editUser('${user.iduser}', '${user.username}', '${user.name}', '${user.discordTag}',  '${user.email}', '${user.phoneN}', '${user.score}', '${user.dept.iddept }', '${user.profile.idprofile}' , '${user.pending.idpending}')">edit</button>
								<button class="btn btn-primary"   data-bs-toggle="modal" data-bs-target="#deleteMemberModal">delete</button>
                        	</td>
		                </tr>
            		</c:forEach>
             <tr>
                    <td>AAAAAAA</td>
                    <td>hijgoir</td>
                    <td>hfdhdf</td>
                    <td>gfhdshsh</td>
                    <td>fsghsfghs</td>
                    <td>
                        <button  class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#editMemberModal" id="edit">edit</button>
						<button class="btn btn-primary"   data-bs-toggle="modal" data-bs-target="#deleteMemberModal">delete</button>
                     </td>
                </tr>
                </tbody>
            </table>
            
        </div>
    </div>  
          
</div>    
<!-- Create Modal HTML -->
<div id="addMemberModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="editForm">
                <div class="modal-header">						
                    <h4 class="modal-title">Add Member</h4>
                    <button type="button" class="btn btn-default" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>username</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Discord Tag</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Departement</label>
                        <select class="form-control" required> 
                            <option value="Administration">admin</option>
                            <option value="Design">ht</option>
                            <option value="Sponsoring">marketing</option>
                            <option value="Networking">sponsoring</option>
                            <!--  <option value="Marketing">m</option>
                            <option value="HR">h</option>-->
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Score</label>
                        <input type="text" class="form-control" required>
                    </div>					
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div> 
<!-- Edit Modal HTML -->
	<div id="editMemberModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="/getOffTheMatrix/ManageMembers" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Edit Member</h4>
						<button type="button" class="btn btn-default" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<input type="hidden" name="action" value="editMember">
					<div class="modal-body" >
					<div class="form-group">
                            <label for="id">id</label>
                            <input type="text" name="id" for="id" id="id" class="form-control" required>
                        </div>					
						<div class="form-group">
                            <label for="username">username</label>
                            <input type="text" name="username" for="username" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="name">name</label>
                            <input type="text" name="name" for="name" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="discord">Discord Tag</label>
                            <input type="text" name="discord" for="discord" id="discord" class="form-control" required>
                        </div>
						<div class="form-group">
							<label for="email">Email</label>
							<input type="email" name="email" for="email" id="email" class="form-control" required>
						</div>
						<div class="form-group">
							<label for="phone">Phone</label>
							<input type="text" name="phone" for="phone" id="phone" class="form-control" required>
						</div>
						<div class="form-group">
							<label for="score">score</label>
							<input type="text" name="score" for="score" id="score" class="form-control" required>
						</div>
						<!--  <div class="form-group">
	                        <label>Departement</label>
	                        <select class="form-control" required> 
	                            <option value="Administration">admin</option>
	                            <option value="Design">ht</option>
	                            <option value="Sponsoring">marketing</option>
	                            <option value="Networking">sponsoring</option>
	                            <!--  <option value="Marketing">m</option>
	                            <option value="HR">h</option>
	                        </select>
                    	</div>-->
                    	<div class="form-group">
							<label for="profile" >id profile</label>
							<input type="text" name="profile" for="profile" id="profile"  class="form-control">
						</div>
                    	<div class="form-group">
							<label for="dept">id dept</label>
							<input type="text"  name="dept" for="dept" id="dept" class="form-control">
						</div>
						<div class="form-group">
							<label for="pending">id pending</label>
							<input type="text" name="pending" for="pending" id="pending" class="form-control">
						</div>
                    	
											
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-info" value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="mess">You find a message here
	<% if (request.getAttribute("successMessage") != null) { %>
        <p style="color: green;"><%= request.getAttribute("successMessage") %></p>
    <% } else if (request.getAttribute("errorMessage") != null) { %>
        <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
    <% } %></div>
	<!-- Delete Modal HTML -->
	<div id="deleteMemberModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Delete Member</h4>
						<button type="button" class="btn btn-default" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body" style="background: #6c6c6c;">					
						<p>Are you sure you want to delete these Records?</p>
						<p class="text-warning"><small>This action cannot be undone.</small></p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>
    
    <script type="text/javascript">
    	//const editbtn = document.getElementById("edit")
    	
	    function editUser(id, username, name, discord, email, phone, score, deptna, idprofile, idpending) {
	    	<c:set var="action" value="editMember" />
	    		var action = '${action}';
	    		console.log("Action: " + action);
	    		document.getElementById("id").value = id;
		  document.getElementById("name").value = name;
		  document.getElementById("username").value = username;
		  document.getElementById("discord").value = discord;
		  document.getElementById("email").value = email;
		  /*const select =  document.getElementById("dept")
		  for (var i = 0; i < select.options.length; i++) {
			  const option = select.options[i];
			  console.log(option)
			  // If the option's value matches the value you want to select
			  if (option.value === deptna) {
			    // Set the selectedIndex property to select the option
			    select.selectedIndex = i;
			    break;
			  }
		  
			}*/
		  document.getElementById("phone").value = phone;
		  document.getElementById("score").value = score;
		  document.getElementById("dept").value = deptna;
		  document.getElementById("profile").value = idprofile;
		  document.getElementById("pending").value = idpending;
		  messDiv = document.querySelector(".mess")
		  
    	}

	    
    </script>
</body>
</html>