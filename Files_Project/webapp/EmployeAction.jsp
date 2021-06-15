<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Grievance</title>
<style>
.statuscenter {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<h1 style="text-align: center;">Select Grievance</h1>
	<br>
	<form action="StatusUpdate.jsp" method="post">
		<div class="statuscenter">
			<table>
				<tr>
					<td>Enter the Grievance Id :</td>
					<td><input name="gid" value="" /></td>
				<tr class="blank_row">
					<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>