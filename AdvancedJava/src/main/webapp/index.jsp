<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   tr,td{
       padding: 10px;
       font-size:25px;
       font-weight:bold;
   }
   
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body> 
<center>
<h1>Student Information</h1>
</center>
<hr>
<form name="frm" method="post" action="StudentController"> 
<table>
   <tr>
       <td>First Name</td>
       <td><input type="text" name="fname"></td>
   </tr>
   <tr>
       <td>Last Name</td>
       <td><input type="text" name="lname"></td>
   </tr>
   <tr>
       <td>Email</td>
       <td><input type="text" name="email"></td>
   </tr>
   <tr>
       <td>Mobile</td>
       <td><input type="text" name="mobile"></td>
   </tr>
   <tr>
       <td>Address</td>
       <td><textarea rows="5" cols="21" name="address"></textarea></td>
   </tr>
   <tr>
       <td>Gender</td>
       <td><input type="radio" name="gender" value="male">Male
       <input type="radio" name="gender" value="female">Female
       </td>
   </tr>
   <tr>
   <td colspan="2" align="center">
   <input type="Submit" name="action" value="INSERT">
   </td>
   </tr>
</table>
</form>
<a href="show.jsp">Show All Student</a>
</body>
</html>