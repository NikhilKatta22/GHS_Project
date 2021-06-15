<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Contact Us</title>
    <style>
    .table {
        display: flex;
        justify-content:center;
        align-items:center;
        padding-top:3rem;
      }
      
   table,td{
    border:2px solid black;
    border-collapse:collapse;
    border-radius:5px;
    width:30%;
   }   
      
      
      
    </style>
  </head>
  <body>
    <%@ include file="Navbar.html" %>
    <br><br><br>
    <h2 style="text-align: center">Contact Us</h2><br>
    <div class="table">
      <table align=center>
        <tr>
          <td>Contact Persons  </td>
          <td>
          <p>Mr.Ritin</p>
          
          <p>Mr.Nikhil</p> 
          <p>Ms.Prasuna</p></td>
        </tr>
        <tr>
          <td>Address</td>
          <td><p>Hyderabad</p></td>
        </tr>
        <tr>
          <td>Phone No</td>
          <td><p>9000506101</p></td>
        </tr>

        <tr>
          <td>Location</td>
          <td><p>Telengana</p></td>
        </tr>

        <tr>
          <td>Email</td>
          <td><p>abc@gmail.com</p></td>
        </tr>
      </table>
    </div>
  </body>
</html>