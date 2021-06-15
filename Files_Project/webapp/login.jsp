<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    String hno = request.getParameter("hno");
    Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String uname = "wethree"; 
    String password = "proj"; 
    Connection con = DriverManager.getConnection(url,uname,password);
    Statement st  = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Persons where uname='" + userid + "' and pass='" + pwd + "' and Hno='"+hno+"'");
    if(rs.next())
    {
    	session.setAttribute("userid",userid);
    	response.sendRedirect("success.jsp");
    }
    else
    {
    	out.println("Invalid username/password <a href='index.jsp'><br> Try Again</a>");
    }
  %>  