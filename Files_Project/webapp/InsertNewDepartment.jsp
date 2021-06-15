<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<table align=center>
		<%
		String s2 = request.getParameter("pwd");
		String s3 = request.getParameter("dname");		
		String s5 = request.getParameter("dhname");
		Integer s4=null;
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int duid = 0;			
			ResultSet rs1 = st.executeQuery("select count(eid) from employees where deptid in( select deptid from departmentlogin where deptname='"+s3+"')");
			if(rs1.next())
			{
				s4=rs1.getInt(1);
				if(s4==0)
				{
					s4=null;
				}
			}
			ResultSet rs = st.executeQuery("select nvl(max(deptid),0)+1 from departmentlogin");
			if (rs.next()) {
				duid = rs.getInt(1);
			
			int no = st.executeUpdate("insert into departmentlogin values(" + duid+ ",'" + s2 + "','" + s3 + "'," + s4 + ",'" + s5 + "')");
			out.println("<center><h1>Success</h1><br><p>New Department added successfully</p><p>Want to add another?<a href='NewDepartmentAdd.jsp'>Click here!</a></p><p><a href='ManageDepartments.jsp'>GO back</a></p>");
		}
		} catch (Exception e) {
			out.println(e);
		}
		%>
	</table>
</body>
</html>