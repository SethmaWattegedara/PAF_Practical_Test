$(document).ready(function()
{
if ($("#alertSuccess").text().trim() == "")
{
$("#alertSuccess").hide();
}
$("#alertError").hide();
});

//SAVE ============================================
$(document).on("click", "#btnSave", function(event)
{
	// Clear status msges-------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation----------------
	var status = validatePatientForm();
	
	// If not valid-------------------
	if (status != true)
	{
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	// If valid-----------------------
	
	var type = ($("#hidPatientIDSave").val() == "") ? "POST" : "PUT";
	
/*	if ($("#hidPatientIDSave").val().trim() =="")
		type = "POST";
	else
    	type = "PUT";*/
	
	$.ajax(
			{
			url : "PatientServlet",
			type : type,
			data : $("#formPatient").serialize(),
			dataType : "text",
			complete : function(response, status)
			{
			onPatientSaveComplete(response.responseText, status);
			}
			});
	
			
});


function onPatientSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
			
		} else if (resultSet.status.trim() == "error")
		{
			
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error")
	{
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	
	$("#hidPatientIDSave").val("");
	$("#formPatient")[0].reset();
}





//Update

$(document).on("click", ".btnUpdate", function(event)
{
	
	$("#hidPatientIDSave").val($(this).closest("tr").find('#hidPatientIDUpdate').val());
	$("#name").val($(this).closest("tr").find('td:eq(0)').text());
	$("#dob").val($(this).closest("tr").find('td:eq(1)').text());
	$("#gender").val($(this).closest("tr").find('td:eq(2)').text());
	$("#homeadd").val($(this).closest("tr").find('td:eq(3)').text());
	$("#homephone").val($(this).closest("tr").find('td:eq(4)').text());
	$("#mobile").val($(this).closest("tr").find('td:eq(5)').text());
	$("#email").val($(this).closest("tr").find('td:eq(6)').text());
	$("#password").val($(this).closest("tr").find('td:eq(7)').text());

});



//REMOVE==========================================

/*
$(document).on("click", ".remove", function(event)
{
$(this).closest(".patient").remove();
$("#alertSuccess").text("Removed successfully.");
$("#alertSuccess").show();
});

*/

$(document).on("click", ".btnRemove", function(event)
	{
		$.ajax(
		{
			url : "PatientServlet",
			type : "DELETE",
			data : "patientID=" + $(this).data("pid"),
			dataType : "text",
			complete : function(response, status)
			
		{
				onPatientDeleteComplete(response.responseText, status);
		}
	});
});



function onPatientDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			
			$("#divItemsGrid").html(resultSet.data);
			
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}










//client

function validatePatientForm()
{
// NAME
if ($("#name").val().trim() == "")
{
return "Insert patient name.";
}

//DATE OF BIRTH 
if ($("#dob").val().trim() == "")
{
return "Insert Date Of Birth.";
}


//GENDER


if ($("#gender").val().trim() == "")
{
return "Select Gender.";
}



//if ($('input[name="gender"]:checked').length === 0)
//{
//return "Select Gender.";
//}



//Home Address
if ($("#homeadd").val().trim() == "")
{
return "Insert Home Address.";
}

//Home Telephone number
if ($("#homephone").val().trim() == "")
{
return "Insert Home Telephone number.";
}

//Mobile Phone Number
if ($("#mobile").val().trim() == "")
{
return "Insert Mobile Phone Number.";
}


//Email Address
if ($("#email").val().trim() == "")
{
return "Insert Email Address.";
}


//Password
if ($("#password").val().trim() == "")
{
return "Insert Password.";
}


return true;
}//end checking form data
















