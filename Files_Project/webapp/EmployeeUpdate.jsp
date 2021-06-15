<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
try
{
 String s1=(String)session.getAttribute("s1");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String area=request.getParameter("area");
String sal=request.getParameter("sal");
String phno=request.getParameter("phno");
String did=request.getParameter("did");
String gen=request.getParameter("gender");
String desg=request.getParameter("desg");
String qual=request.getParameter("qual");
   
 Connection con=Connect.getCon();
Statement st=con.createStatement();
   int i=st.executeUpdate("update employees set firstname='"+fname+"',middlename='"+mname+"',lastname='"+lname+"',address='"+area+"',gender='"+gen+"',salary="+sal+",phone="+phno+",deptid="+did+",designation='"+desg+"',qualification='"+qual+"'  where eid="+s1); 
   out.println("<center><h1>Successfully updated  employee information</h1><br><p>Want to update another employee details<a href='SelectEmployees_Update.jsp'>Click here!</a></p><br><p><a style='color:white;border:2px solid black;background:black;text-decoration:none;'href='ManageEmployees.jsp'>Manage Employees</a></p></center> ");

}
catch(Exception e)
{
   out.println(e);
}
%>
</body>
</html>