<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Take Quiz</title>
<link href="bootstrap.min.css" rel="stylesheet"></link>
<script type="text/javascript" src="bootstrap.min.js"></script>
<script type="text/javascript" src="jquery.min.js"></script>
<style>
p{
font-weight: bold;
}
a{
text-decoration: none;
}
button{
 width: 120px;
  height: 42px;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 1px;
  border-radius: 7px 0 5px 0;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	  
	var parameters = new URL(window.location).searchParams;
	var sub=parameters.get('type');
	var n=0;
	var score=0;
	$('#prev').click(function(){
		n=n-1;
		if(n<1){
			return;}
			$("#question").load(sub+".txt #p"+n);
			$("h2").html("Question "+n);
			$("#l1").load(sub+".txt #p"+n+"1");
			$("#l2").load(sub+".txt #p"+n+"2");
			$("#l3").load(sub+".txt #p"+n+"3");
			$("#l4").load(sub+".txt #p"+n+"4");
			
		});
	
	$('#next').click(function(){
		
		n=n+1;
		
		$("#answer").load(sub+".txt #p"+n+"5",function() {
			var a=document.getElementById("p"+n+"5").innerHTML;
			var b=$("input[name=rad]").filter(":checked").val();
			
			if($("#p"+n+"5").html().toString()===b)
				score++;
		});
		
		if(n>10){
			alert("Your score is: "+score);
			window.location.assign("http://localhost:8080/TutorialWeb/index.jsp");
			return;}
			$("#question").load(sub+".txt #p"+n);
			$("h2").html("Question "+n);
			$("#l1").load(sub+".txt #p"+n+"1");
			$("#l2").load(sub+".txt #p"+n+"2");
			$("#l3").load(sub+".txt #p"+n+"3");
			$("#l4").load(sub+".txt #p"+n+"4");
		}).click();
	});
</script>
<script>
function formatTime(seconds) {
    
   var  m = Math.floor(seconds / 60) % 60,
        s = seconds % 60;
    
    if (m < 10) m = "0" + m;
    if (s < 10) s = "0" + s;
    return m + ":" + s;
}
var count = 900;
var counter = setInterval(timer, 1000);

function timer() {
    count--;
    if (count < 0) return clearInterval(counter);
    document.getElementById('timer').innerHTML = formatTime(count);
}
</script>
</head>
<body background="images/buildings.jpg" style="background-size: cover;">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Quiz</a>
    </div>
    <ul class="nav navbar-nav">
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li id="timer" style="color:white"></li>
      
    </ul>
  </div>
</nav>
<!-- Display the countdown timer in an element -->
<p id="demo"></p>


<div id="div1"><h2></h2><div id="question" style="font-size:20px"></div>
<ul style="list-style-type: none;">
<li><input type="radio" value="1" id="op1" name="rad"/><label style="display: inline-block;font-size:20px" id="l1" for="op1"></label></li>
<li><input type="radio" value="2" id="op2" name="rad"/><label style="display: inline-block;font-size:20px" id="l2" for="op2"></label></li>
<li><input type="radio" value="3" id="op3" name="rad"/><label style="display: inline-block;font-size:20px" id="l3" for="op3"></label></li>
<li><input type="radio" value="4" id="op4" name="rad"/><label style="display: inline-block;font-size:20px" id="l4" for="op4"></label></li>
</ul>
</div>
<button id="prev">Previous</button>
<button id="next">Next</button>
<p id="answer" style="visibility: hidden"></p>
</body>
</html>