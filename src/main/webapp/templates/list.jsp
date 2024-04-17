<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
 <head>
    <style>
     a{
     	text-decoration:underline !important;
     	font-size:1.6vw;
     }
    </style> 
  	<link href="/employee-dashboard/CSS/style.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
	<link href="/employee-dashboard/CSS/bootstrap.min.css" rel="stylesheet">
 </head>
 <body  onload="makeActive('list')">
  <div class='dvv'>
   <label class='lal'>EMPLOYEE DASHBOARD</label>
  </div> 
  <div class='container'>
    <div>
     <a href="add-employee">Add new Employee</a>
    </div>
  	<div class='card col-md-12 mx-auto' style='border:3px solid silver'>
  	  <div class='card-body'>
  	   <div class='table scrollit'>
  	    <table class='table table-hover'>
  	     <thead>
  	      <tr>
  	      	<th>Employee id</th><th>First name</th><th>Last name</th>
  	      	<th>Phone number</th><th>Department</th><th>Salary</th>
  	      	<th style='color:orange'>Action</th>
  	      </tr>
  	     </thead>
  	     <tbody>
  	      <c:forEach var="emp" items="${elist}">
  	       <tr>
  	        <td>${emp.eid}</td>
  	        <td>${emp.firstname}</td>
  	        <td>${emp.lastname}</td>
  	        <td>${emp.phone}</td>
  	        <td>${emp.department}</td>
  	        <td>${emp.salary}</td>
  	        <td>
  	         <a href="#">Edit |</a>
  	         <a href="delete-record?eid=${emp.eid}" onclick="return confirm('Are you sure to delete?')">Delete</a>
  	        </td>
  	       </tr>
  	      </c:forEach>
	     </tbody> 
  	    </table>
  	   </div> 	
  	  </div>
  	</div>
  </div>
 </body>
</html>