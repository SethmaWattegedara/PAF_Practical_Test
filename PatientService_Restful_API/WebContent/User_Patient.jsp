<%@page import="model.PatientReg"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/patient.js"></script>

<title>Patient Management</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1 class="m-3">Patient details</h1>

				<!-- Form -->
				<form id="formPatient" name="formPatient"> 

					<!-- NAME -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Name: </span>
						</div>
						<input type="text" id="name" name="name" class="form-control form-control-sm">
					</div>

					<!-- DATE OF BIRTH -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Date of Birth:
							</span>
						</div>
						<input type="date" id="dob" name="dob" class="form-control form-control-sm">
					</div>

					<!-- GENDER -->
					
						<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender:
							</span>
						</div>
						<input type="text" id="gender" name="gender" class="form-control form-control-sm" placeholder="Male or Female">
					</div>
					
									
			<!-- 	<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="rdoGenderMale"
							name="gendefgbfr" value="Male" > &nbsp;&nbsp;Female <input
							type="radio" id="rdoGenderFemale" name="gendefgver" value="Female">
					</div>
					 -->
					 
					 
					<!-- Home Address -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Home Address:
							</span>
						</div>
						<input type="text" id="homeadd" name="homeadd" class="form-control form-control-sm">
					</div>

					<!-- Home Telephone number -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Home Telephone
								Number: </span>
						</div>
						<input type="text" id="homephone" name="homephone" class="form-control form-control-sm">
					</div>

					<!-- Mobile Phone Number -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Mobile Phone
								Number: </span>
						</div>
						<input type="text" id="mobile" name="mobile" class="form-control form-control-sm">
					</div>

					<!-- Email Address -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Email Address:
							</span>
						</div>
						<input type="email" id="email" name="email"  class="form-control form-control-sm">
					</div>

					<!-- Password -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Password: </span>
						</div>
						<input type="password" id="password" name="password" class="form-control form-control-sm">
					</div>

					

					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
					
					 <input type="hidden" id="hidPatientIDSave" name="hidPatientIDSave" value="">
					 
				
				</form>
			
					 	
				<div id="alertSuccess" class="alert alert-success"></div>
					
				<div id="alertError" class="alert alert-danger"></div>
				
				<br>
				<div id="divItemsGrid">
				<%
				
				PatientReg PatientObj = new PatientReg();
				out.print(PatientObj.viewRegPatients());
				
							
				%>
				</div>
								 
				
				
				
			</div>
		</div>
		<br>

		
	</div>




</body>
</html>