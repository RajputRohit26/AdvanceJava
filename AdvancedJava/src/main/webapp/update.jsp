<%@page import="com.bean.Student"%>
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
   }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body> 
<% 
    Student s=(Student)request.getAttribute("s");
%>
<center>
<h1>Student Information</h1>
</center>
<hr>
<form name="frm" method="post" action="StudentController"> 
<table>
   <tr>
      <td> <input type="hidden" name="id" value="<%=s.getId()%>"></td>
   </tr>
   <tr>
       <td>First Name</td>
       <td><input type="text" name="fname"  value="<%=s.getFname()%>"></td>
   </tr>
   <tr>
       <td>Last Name</td>
       <td><input type="text" name="lname"  value="<%=s.getLname()%>"></td>
   </tr>
   <tr>
       <td>Email</td>
       <td><input type="text" name="email"  value="<%=s.getEmail()%>"></td>
   </tr>
   <tr>
       <td>Mobile</td>
       <td><input type="text" name="mobile"  value="<%=s.getMobile()%>"></td>
   </tr>
   <tr>
       <td>Address</td>
       <td><textarea rows="5" cols="21" name="address"><%=s.getAddress()%></textarea></td>
   </tr>
   <tr>
       <td>Gender</td>
       <td>
       <%
            if(s.getGender().equals("male"))
            {
     %>
                  <input type="radio" name="gender" value="male" checked="checked">Male
                  <input type="radio" name="gender" value="female">Female
     <%      	
            }	
            else
            {
     %>
                  <input type="radio" name="gender" value="male">Male
                  <input type="radio" name="gender" value="female" checked="checked">Female
     <%        	
            }
       %>
      
       </td>
   </tr>
   <tr>
   <td colspan="2" align="center">
   <input type="Submit" name="action" value="UPDATE">
   </td>
   </tr>
</table>
</form>

</body>
</html>