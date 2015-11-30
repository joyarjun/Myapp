<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<title>Insert title here</title>
<style>
.table1{
  
    margin-left: 300px;
    margin-right: 360px;
}

body{
background-size: cover;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
}
</style>
</head>
<body  background="images/blue-watermelon-wide.jpg">
<center><h1>Drive Details</h1></center>
<div class="table">


<table border="1" align="center" style="margin-top:20px">
<thead>
<tr>
<th> SL.NO</th>
<th> NAME</th>
<th> POST </th>
<th> JOB_DETAILS</th>
<th> SALARY</th>
</tr>
<tbody>
<tr>
<%
try
{
 Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "admin");
  Statement statement = connection.createStatement();

  ResultSet resultSet = statement.executeQuery("SELECT * FROM INTERVIEW_SCH ORDER BY company_name ASC");
  int i=0;
  while (resultSet.next())
  {
	  	i=i+1;
       String x = resultSet.getString("COMPANY_NAME");
       String y = resultSet.getString("POST");
       String z = resultSet.getString("JOB_DETAILS");
       String w = resultSet.getString("SALARY");

      %>
      <td> <%=i  %> </td>
      <td><b> <%=x  %></b> </td>
      <td> <%=y  %> </td>
      <td> <%=z  %> </td>
      <td> <%=w  %> </td>
      
      </tr>
	
 <%
 }
  %>
  
  </tbody>
</table>
</div>
<div>

<a style="margin-left:450px;margin-top: 25px;" href="view.jsp" class="btn btn-success">Back</a>
</div>
<%--<div>

<a style="margin-left: 610px; margin-top: -30px;" href="view.jsp" class="btn btn-warning">Edit</a>
</div>
<div>

<a style="    margin-left: 765px; margin-top: -30px;" href="view.jsp" class="btn btn-warning">Delete</a>
</div>----%>
<% }





catch(Exception e)
{
    System.out.println("Exception : " + e.getMessage() + "");
}
%>
</body>
</html>