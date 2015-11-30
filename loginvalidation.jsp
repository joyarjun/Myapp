<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String username=request.getParameter("username"); 
String password = request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	Connection  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
  Statement statement = connection.createStatement();

  ResultSet resultSet = statement.executeQuery("SELECT * FROM admin_table");
  while (resultSet.next())
  {
	  	
	
	String x = resultSet.getString("username");
    String y = resultSet.getString("password");
    if(username.equals(x) && password.equals(y))
	{
		session.setAttribute("username", username);
		response.sendRedirect("home.html");
	}
    
	
}

  ResultSet resultSet1 = statement.executeQuery("SELECT * FROM COLLEGE_LIST");
  while(resultSet1.next())
  {
  	String a = resultSet1.getString("COLLEGE_ID");
      String b = resultSet1.getString("PASSWORD");
  	if(username.equals(a) && password.equals(b))
  	{
  		session.setAttribute("username", username);
  		response.sendRedirect("college_home.jsp");
  	}
  }
  response.sendRedirect("login.jsp");

}


catch(Exception e)
{
    System.out.println("Exception : " + e.getMessage() + "");
}
%>
</body>
</html>