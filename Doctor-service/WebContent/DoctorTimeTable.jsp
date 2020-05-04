<%@page import="model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="Component/jquery-3.5.0.min.js"></script>
<link href="Views/css/bootstrap.min.css" rel="stylesheet">
<link href="Views/css/style.css" rel="stylesheet">
</head>
<body>

<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Doctor Time Table Details</h1>
				<form id="D_Id" name="doctorId">
				
					Doctor ID: <input id="docId" name="docId" type="text"
						class="form-control form-control-sm"> <br> 
						
					Hospital ID: <input id=hospitalId name="hospitalId" type="text"
						class="form-control form-control-sm"> <br> 
					
					Hospital Available Date: <input id="avaliableDate" name="avaliableDate" type="text"
						class="form-control form-control-sm"> <br> 
						
					Hospital Available Time:<input id="avaliableTime" name="avaliableTime" type="text"
						class="form-control form-control-sm"> <br>
					
				
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			<br>
				<div id="divItemsGrid">
					 <%
					 Doctor doctorObj = new Doctor();
 					// out.print(doctorObj.viewdocTimeDate());
 					  %>
					</div>


			</div>
		</div>
	</div>

</body>
</html>