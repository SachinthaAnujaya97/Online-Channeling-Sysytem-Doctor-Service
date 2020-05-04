<%@page import="model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="Components/jquery-3.5.0.min.js"></script>
<link href="Views/css/bootstrap.min.css" rel="stylesheet">
<link href="Views/css/style.css" rel="stylesheet">
<script src="Components/doctor.js"></script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Doctor Details</h1>
				<form id="doctorFome" name="doctorFome">
					
					First Name: <input id="fName" name="D_fname" type="text"
						class="form-control form-control-sm"> <br> 
						
					Last name:<input id="lNmae" name="D_lname" type="text"
						class="form-control form-control-sm"> <br>
					
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="D_gender">
							
					Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="rdoGenderMale"
							name="D_gender" value="Male"> &nbsp;&nbsp;Female <input
							type="radio" id="rdoGenderFemale" name="D_gender" value="Female">
					</div>

						
					Age: <input id="age" name="D_age" type="text"
						class="form-control form-control-sm"> <br> 
						
					NIC: <input id="docNIC" name="D_docNIC" type="text"
						class="form-control form-control-sm"> <br> 
						
					Email: <input id="docEmail" name="D_docEmail" type="text"
						class="form-control form-control-sm"> <br> 
						
					Password:<input id="passwod" name="D_password" type="text"
						class="form-control form-control-sm"> <br> 
						
					Phone Number: <input id="phoneNumber" name="D_phonenumber" type="text"
						class="form-control form-control-sm"> <br> 
						<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> 
						<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">
						
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			<br>
				<div id="divDoctorGrid">
					 <%
					 Doctor docObj = new Doctor();
 					 out.print(docObj.readDoctor());
 					  %>
					</div>


			</div>
		</div>
	</div>

</body>
</html>