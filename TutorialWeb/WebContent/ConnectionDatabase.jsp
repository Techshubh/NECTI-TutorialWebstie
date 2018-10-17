<%@page import="java.sql.*" %>
<%!
static Connection con;
PreparedStatement ps;
%>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:necti","hr","hr");
}
catch(Exception ex)
{

}
%>