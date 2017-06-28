<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css\bookappointment.css" rel="stylesheet" />

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
<script src="js\bookappointment.js" type="text/javascript"></script>
<script src="js\back.js"></script>
</head>

<body>

<div class="back">
<button  type="button" id="back" onclick="goBack()" style="background-color: lightgray;color:white;border-radius:8px;">Home</button>
</div>
		
	<div id="tophead">
		<table id="headertable" style="border: none;">
			<tr>
				<th><center>
						<h2 position="relative;">Book Appointment</h2>
					</center></th>
			</tr>
			<tr>
				<th></th>
			</tr>
		</table>
	</div>
	<%@ page import="java.util.*" %>
	<%@ page import="com.application.entity.*" %>
	
	<%
			
			Object appointmentRegisterObject=request.getAttribute("doctorlist");
			List<Doctor> doctorList=(List<Doctor>)appointmentRegisterObject; 
			
			%>
	<div class="loginPage">
		<form id="appointment-form" novalidate="novalidate" method="post"
			action="bookappointment">
			
			<label">Department name</label> 
			<input type="text" id="department" name="department" class="required" value=<%out.println(request.getAttribute("department").toString()); %> >
			
			 <label> Select Appointment date</label> <input type="date" id="date"
				name="date" placeholder="Select Your date">
				
				<label>Select Doctor Name </label> 
				<select type="text" id="doctor" name="doctor" class="required">
				<option>select</option>
				<% for(int doctorNuber=0;doctorNuber<doctorList.size();doctorNuber++){%>
				<option><label><%out.println(doctorList.get(doctorNuber).getDoctorname());%></label></option>
				<%}%>
				</select> 
				
				<label>Select timeslot </label> 
				<select type="text" id="timeslot" name="timeslot"
				class="required" onchange="getVal(this);" required>
				<option value="">select</option>
				<option id="slot01" value="slot01"><label for="slot01">Time Slot-10am-11am</label></option>
				<option id="slot02" value="slot02"><label for="slot02">Time Slot-11am-12pm</label></option>
				<option id="slot03" value="slot03"><label for="slot03">Time Slot-12pm-01pm</label></option>
				<option id="slot04" value="slot04"><label for="slot04">Time Slot-01-02pm</label></option>
				</select> 
			
			
			<input type="submit" value="Book" />
			
		</form>

	</div>
	<script>
	function getVal(value) {
		department = document.getElementById("department").value;
		date = document.getElementById("date").value;
		time = document.getElementById("timeslot").value;
		doctor=document.getElementById("doctor").value;
				$.ajax({
			type : "post",
			url : "/Portal/time",
			data : {
				"department" : department,
				"date" : date,
				"time" : time,
				"doctor":doctor
			}
		}).done(function(result) {
			alert(result);
		});
	}
	</script>

</body>
</html>