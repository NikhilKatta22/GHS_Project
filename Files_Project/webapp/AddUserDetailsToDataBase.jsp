<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="grev.Connect"%>
<%
int userid = 100;
String user = request.getParameter("uname");
String pwd = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String Hno = request.getParameter("hno");
String Sname = request.getParameter("sname");
String zipcode = request.getParameter("zip");
String Address = request.getParameter("address");
double phn = Double.parseDouble(request.getParameter("mobile"));
try {
	Connection con = Connect.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select nvl(max(ID),0)+1 from persons");
	if (rs.next()) {
		userid = rs.getInt(1);
	}
	ResultSet rs1 = st
	.executeQuery("select * from persons where email='" + email + "'");
	ResultSet rs2 = st
	.executeQuery("select * from persons where hno='" + Hno + "'");

	int i = st.executeUpdate(
	"insert into Persons(ID,FirstName,LastName,Email,Hno,Sname,Address,phnno,Uname,Pass,zipcode) values('"
			+ userid + "','" + fname + "','" + lname + "','" + email
			+ "','" + Hno + "','" + Sname + "','" + Address + "','"
			+ phn + "','" + user + "','" + pwd + "','" + zipcode
			+ "')");
	if (i > 0) {
		response.sendRedirect("Welcome.jsp");
	} else {

		response.sendRedirect("RegistrationPage.jsp");
	}

} catch (Exception e) {
	out.println(e);
}
%>
