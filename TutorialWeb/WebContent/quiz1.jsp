<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
.div1{
height:120px;
width:280px;
border:2px solid black;
text-align:center;
float:left;
margin-left:35px;
position:relative;
font-size:20px;
}
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
</head>
<body background="images/buildings.jpg" style="background-size: cover;">
<div style="font-size:20px;margin-bottom:30px;text-align:center">The test contains 10 questions and there is no time limit.<br/>The test is not official, it's just a nice way to see how much you know, or don't know</div>
<div class="div1">
<p>Java<br/><br/><a href="Quiz.jsp?type=java"><button>Start Quiz</button></a></p>
</div>
<div class="div1">
<p>JSP<br/><br/><a href="Quiz.jsp?type=jsp"><button>Start Quiz</button></a></p>
</div>
<div class="div1">
<p>JQuery<br/><br/><a href="Quiz.jsp?type=jquery"><button>Start Quiz</button></a></p>
</div>
<div class="div1">
<p>Advance Java<br/><br/><a href="Quiz.jsp?type=java"><button>Start Quiz</button></a></p>
</div>
</body>
</html>