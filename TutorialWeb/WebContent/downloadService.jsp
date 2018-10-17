<%   
  if(session.getAttribute("username")==null){
  
  %>
	 <script>
	 alert("Please login to download projects");
	 window.location.assign("http://localhost:8080/TutorialWeb/projects.jsp");
	 </script>
  <% 
  }else{
	  String filename = request.getParameter("name");   
	  String filepath = "D:\\uploadedFiles\\";   
	  response.setContentType("APPLICATION/OCTET-STREAM");   
	  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 
	  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
	            
	  int i;   
	  while ((i=fileInputStream.read()) != -1) {  
	    out.write(i);   
	  }   
	  fileInputStream.close(); 
  }
%> 
