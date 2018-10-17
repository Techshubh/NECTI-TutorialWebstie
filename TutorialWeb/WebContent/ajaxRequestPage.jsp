<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.text.SimpleDateFormat"%>
<%@ include file="ConnectionDatabase.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>AJAX REQUEST</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<div class="container-fluid">
		<%
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String topic = request.getParameter("topic");
			String comment = request.getParameter("comment");
			String category = request.getParameter("Category");
		%>
		<div class="panel-primary">
			<div class="panel-heading" style="background-color: #DE2D3A"
				id="comm">
				<h4 class="panel-title">COMMENTS</h4>
			</div>

			<div class="panel-body" id="display" style="display: none;height:250px;overflow-y:scroll">
				<%
					String message = "";
					try {
						if (comment != "") {
							PreparedStatement ps = con
									.prepareStatement("INSERT INTO USERDETAILS VALUES(?,?,?,?,systimestamp,?)");
							ps.setString(1, username);
							ps.setString(2, email);
							ps.setString(3, topic);
							ps.setString(4, comment);
							ps.setString(5, category);
							ps.executeUpdate();
						}
						Statement stmt = con.createStatement();
						ResultSet rs = stmt
								.executeQuery("select * from userdetails where topic='" + topic + "' order by t1 desc");

						while (rs.next()) {
				%>

				<div class="col-sm-2 text-center">
					<img src="images/contact.png" class="img-circle" height="45"
						width="45" alt="Avatar">
				</div>
				<div class="col-sm-10">
					<h4  style="margin: 0px">
						<strong> <%=rs.getString(1)%> 
						<small>
								<%
								java.sql.Timestamp t = rs.getTimestamp(5);
               
                                  SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy hh:mm a");  
                        out.print("<h5 style='float:right'>"+formatter.format(t)+"</h5>");
											
								%>
						</small>
						</strong>
					</h4>
					<h5 style="margin: 0px"><%=rs.getString(6)%></h5>
					<p style="margin-bottom: 0px"><%=rs.getString(4)%>.
					</p>
					<br>
				</div>




				<%
					}

						con.close();
					} catch (Exception e) {
						System.out.println(e);
					}
				%>
			</div>
		</div>
	</div>
	<script src="jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script>
		
	</script>
</body>
</html>