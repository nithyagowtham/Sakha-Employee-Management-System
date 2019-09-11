<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
  
  border: 2px solid black;
  
}
th, td {
  padding: 15px;
  text-align: left;
}

#backgroundimage {
background-image: url("add.jpg");
width: 100vw;
height: 100vh; 
background-size: 100% 100%;
background-repeat: no-repeat;
position: relative;
} 
</style>
</head>
<body id="backgroundimage">
<!-- Employee details:<br> -->
<%-- ${emp }<br> --%>
<!-- <br> -->
 <c:if test="${not empty msg}">
   <h3 class="center-align"> ${msg}</h3>
   </c:if>
  <c:if test="${not empty emp}">
<div class="container" align="center">

<table class="striped" >
<thead>
          <tr>
<!--               <th>Employee ID</th> -->
              <th>Employee Name</th>
              <th>Date of Birth</th>
              <th>Basic Salary</th>
          </tr>
        </thead>
  
    <tr>
<%--       <td><c:out value="${emp.empId}" /></td> --%>
      <td><c:out value="${emp.empName}" /></td>
      <td><c:out value="${emp.dob}" /></td>
      <td><c:out value="${emp.salary}" /></td>
<%--       <td><c:out value="${emp.generatedId}" /></td> --%>
    </tr>

</table>

</div>

  </c:if>
  <div align="center">
<a href="index.jsp">home</a>
</div>
</body>
</html>