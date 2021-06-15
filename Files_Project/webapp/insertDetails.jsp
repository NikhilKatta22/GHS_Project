<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<html>
 <body>
<table align=center>
     <%
       
        String s2=request.getParameter("fname");
        String s3=request.getParameter("mname");
        String s4=request.getParameter("lname");
        String s5=request.getParameter("street");
        String s6=request.getParameter("colony");
        String s7=request.getParameter("area");
      int s8=Integer.parseInt(request.getParameter("did"));
      String s10=request.getParameter("gen");
      double s11=Double.parseDouble(request.getParameter("sal"));
        String s12=request.getParameter("desg");
         String s13=request.getParameter("qual");
         int co=0;
        long s14=Long.parseLong(request.getParameter("phno"));
       
       try
         {           
           Connection con=Connect.getCon();
           Statement st=con.createStatement();
             int eid=-1;
       ResultSet rs1=st.executeQuery("select nvl(max(eid),0)+1 from employees");            
       if(rs1.next())
         {
            eid=rs1.getInt(1);
         }
       ResultSet rs2=st.executeQuery("select TOTAL_EMPLOYEES from departmentlogin where deptid="+s8); 
       if(rs2.next())
		{
			co=rs2.getInt(1);
		}
           ResultSet rs=st.executeQuery("select to_char(Sysdate,'dd-mon-yy')from dual");
           String date="";
           if(rs.next())
           {
                date=rs.getString(1);
          }
           String add=s5+s6+s7; 
           System.out.println(add);
          // int no=st.executeUpdate("insert into employees values("+eid+",'"+s2+"','"+s3+"','"+s4+"',"+s12+"','"+s13+",'"+s8+",'"+s11+"',"+s10+",'"+s14+"',('"+s5+"','"+s6+"','"+s7+"')"+")");
         int no =st.executeUpdate("insert into employees values("+eid+",'"+s2+"','"+s3+"','"+s4+"','"+s12+"','"+s13+"',"+s8+","+s11+",'"+s10+"',"+s14+",'"+add+"')");
         
         int no1= st.executeUpdate("update departmentlogin set TOTAL_EMPLOYEES="+(co+1)+"where deptid="+s8); 
         out.println("<center><h1>Added new  employ information successfully</h1><br><p>Want to add another employee<a href='AddEmployee.jsp'>Click here!</a></p><br><p><a style='color:white;border:2px solid black;background:black;text-decoration:none;'href='ManageEmployees.jsp'>Manage Employees</a></p></center> ");
         
          }
          catch(Exception e)
          {
            out.println(e);
          }
     %>
</table>
 </body>
</html>
 