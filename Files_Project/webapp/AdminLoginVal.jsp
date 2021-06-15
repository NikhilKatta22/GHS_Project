<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="grev.Connect" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLoginVerification</title>
</head>
<body>
 <%
   String id = request.getParameter("adid");
   String pwd= request.getParameter("pass");
   try{
	   Connection con = Connect.getCon();
       Statement st = con.createStatement(); 
       ResultSet rs = st.executeQuery("select * from Admin where Admin_id='" + id + "' and password='" + pwd + "'");
       if(rs.next())
       {
    	       session.setAttribute("id",id);
    	       response.sendRedirect("Adwelcome.html");
       }
       else
       {
    	   response.sendRedirect("adinvalid.html");
       }
   }
   catch(Exception e)
   {
	   out.print(e);
   }
 %>
</body>
</html>