<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="ConnectionDatabase.jsp"%>
<%!String msg = "";%>
<!doctype html>
<html>
<head>
<script type="text/javascript">
	//document.getElementById("side").style.height = document.getElementById("content").style.height;
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NEC Training Tutorial</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css" type="text/css" />
</head>
<body>
	<div id="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid" style="color: white;">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">NEC Training Tutorials</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="projects.jsp">Projects</a></li>
					<li><a href="about.jsp">About Us</a></li>
					<%   
  if(session.getAttribute("username")!=null){
  
  %>
					 <li><a href="quiz1.jsp">Quiz</a></li>
					 <%} %>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%
						if (session.getAttribute("username") == null) {
					%>
					<li><a href="#" data-toggle="modal" data-target="#myModal2"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<%
						} else {
					%>
					<li><a>Welcome <%=session.getAttribute("username")%></a></li>
					<li><a href="logout.jsp"> Logout</a></li>
					<%
						}
					%>


				</ul>
			</div>
		</nav>

		<!-- Login modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">

					<div class="modal-body">
						<%
							ResultSet rs;

							if (request.getParameter("btnlogin") != null) {
								ps = con.prepareStatement("select * from users where username=? and pass=?");
								ps.setString(1, request.getParameter("username"));
								ps.setString(2, request.getParameter("userpass"));
								rs = ps.executeQuery();
								if (rs.next()) {
									session.setAttribute("username", request.getParameter("username"));
									response.sendRedirect("index.jsp");
								} else {
						%>

						<%
							msg = "";
						%>
						<script type="text/javascript">
							alert("Your are not a valid user")
						</script>
						<%
							}
								rs.close();
							}
						%>
						<form method="post">


							<div class="row">


								<div class="col-sm-12">
									<div class="panel panel-primary">

										<div class="panel-heading">Login Here</div>
										<div class="panel-body">
											<div class="form-group">
												<label>Username</label> <input class="form-control"
													placeholder="Enter UserName" type="text" name="username" />
											</div>
											<div class="form-group">
												<label>Password</label> <input class="form-control"
													placeholder="Enter Password" type="password"
													name="userpass" />
											</div>
											<div class="checkbox">
												<label><input type="checkbox"> Remember me</label>
											</div>
											<div class="form-group">
												<input class="btn btn-danger" type="submit" name="btnlogin"
													value="Login" />
											</div>
											<div class="form-group"></div>
											<%=msg%>
										</div>
										<div class="panel-footer"></div>

									</div>

								</div>


							</div>


						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

		<!-- Reg modal -->
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">

					<div class="modal-body">
						<%
							if (request.getParameter("btnsave") != null) {
								try {
									ps = con.prepareStatement("select * from users where username=?");
									ps.setString(1, request.getParameter("usern"));
									rs = ps.executeQuery();
									if (rs.next()) {
						%>
						<script type="text/javascript">
							alert("Username is already existing..");
						</script>
						<%
							msg = "Username is already existing..";

									} else {
										ps = con.prepareStatement("insert into users(username,pass,email)values(?,?,?)");
										ps.setString(1, request.getParameter("usern"));
										ps.setString(2, request.getParameter("psw"));
										ps.setString(3, request.getParameter("usern") + "@india.nec.com");
										ps.executeUpdate();
										msg = "Your account has been created";
						%><script type="text/javascript">
	alert("Your account has been created");
</script>

						<%
							}
								} catch (Exception ex) {
									msg = ex.getMessage();
								}
							}
						%>
						<form method="post">

							<div class="row">

								<div class="col-sm-12">
									<div class="panel panel-info">
										<div class="panel-heading">Register</div>
										<div class="panel-body">
											<div class="form-group">
												<label>UserName</label> <input required
													pattern="^[a-zA-Z0-9]*$" class="form-control"
													placeholder="Enter UserName" type="text" name="usern" />
											</div>
											<div class="form-group">
												<label>Password</label> <input class="form-control"
													placeholder="Enter Password" type="password" name="psw" />
											</div>
											<div class="form-group">
												<label>Confirm Password</label> <input class="form-control"
													placeholder="Enter Password" type="password" name="txtcpsw" />
											</div>
											<div class="form-group">
												<label>Gender</label> Male<input type="radio" value="Male"
													name="gen" />Female<input type="radio" value="Female"
													name="gen" />
											</div>
											<div class="form-group">
												<label>Mobile</label> <input required pattern="[+]91\d{10}"
													class="form-control" placeholder="Enter Mobile" type="text"
													name="txtmobile" />
											</div>

											<div class="form-group">
												<input class="btn btn-danger" type="submit" name="btnsave"
													value="Submit" />
											</div>
											<div class="form-group"></div>
										</div>


									</div>
								</div>

							</div>

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>