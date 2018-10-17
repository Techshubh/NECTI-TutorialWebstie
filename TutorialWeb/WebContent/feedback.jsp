<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- ajax work -->
<div class="container-fluid" id="feed" >
<%if(session.getAttribute("username")!=null){ %>
	<div class="panel-primary">
		<div class="panel-heading"  id="feedback"  style="background-color: #DE2D3A">
			<h1 class="panel-title">Feedback</h1>
		</div>
		<div class="panel-body" id="form1" >
			<!-- <div class="form-group col-md-4">
				<label>YOUR NAME</label> 
				<input class="form-control" type="text" id="username">
			</div>
			<div class="clearfix"></div>
			
			<div class="form-group col-md-4">
				<label>YOUR EMAIL</label> <input class="form-control" type="email"
					name="email" id="email" required="required">
			</div>
			<div class="clearfix"></div>
			-->
			
			<label>Category</label> 
				<select name="Category" id="Category" style="width:150px;"
					class="form-control" required="required">
					
					<option value="">Select</option>
					<option value="Content Size">Content Size</option>
					<option value="Code Quality">Code Quality</option>
					<option value="Concept">Concept</option>
					<option value="Others">Relevance</option>
				</select><br>
			<div class="clearfix"></div>
			
			<div class="form-group ">
				<label>YOUR COMMENT</label>
				<textarea class="form-control" rows="6" cols="50" id="comment"
					required="required"></textarea>
			</div>
			<div class="clearfix"></div>
			<div class="form-group col-md-6" >
				<button class="btn btn-primary" type="button" onclick="loadAjax()"  style="background-color: #DE2D3A">POST</button>
			</div>
		</div>
	</div>
<%} %>
	<p id="print"></p>
</div>
<script src="jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
		loadAjax();

		

	
			
	
		function loadAjax(){
			var username= document.getElementById("username").innerHTML;
			var email= document.getElementById("email").innerHTML;
			var topic= document.getElementById("topic").innerHTML;
			var comment= document.getElementById("comment").value;
			var Category=document.getElementById("Category").value;
			
			
			var url="ajaxRequestPage.jsp?username="+username +"&email="+email+"&topic="+topic +"&comment="+comment+"&Category="+Category;



			if(window.XMLHttpRequest){
				
				request = new XMLHttpRequest();
				
			}else if(window.ActiveXObject){
				
				request = new ActiveXObject("Microsoft.XMLHTTP");
			}			
			try{
				request.onreadystatechange=sendInfo;
				request.open("POST",url,true);
				request.send();
				
			}catch(e){
			document.write(e);
			}			
			document.getElementById("comment").value="";
		}

		function sendInfo(){
			var p =		document.getElementById("print");

			if(request.readyState ==1){
				var text = request.responseText;
				p.innerHTML="Please Wait...";
				console.log("1");
			}

			if(request.readyState ==2){
				var text = request.responseText;
				console.log("2");				
			}
			if(request.readyState ==3){
				var text = request.responseText;
				console.log("3");				
			}
			if(request.readyState ==4){
				var text = request.responseText;
			
				p.innerHTML=""+text;
				$(document).ready(function(){
					
					$("#comm").bind("click",function(){
						$("#display").slideToggle("slow");
					});
				});
			}
		}
		</script>
	
</body>
</html>