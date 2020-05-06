
$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {

	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation-------------------
	var status = validateDoctorForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	var type = ($("#hidDoctorIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "DoctorAPI",
		type : type,
		data : $("#doctorFome").serialize(),
		dataType : "text",
		complete : function(response, status) {
			console.log(response)
			onDoctorSaveComplete(response.responseText, status);
		}
	});
});

function onDoctorSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divDoctorGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidDoctorIDSave").val("");
	$("#D_Id")[0].reset();
}

//UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{
			$("#hidDoctorIDSave").val($(this).closest("tr").find('td:eq(0)').text());
			$("#fName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#lNmae").val($(this).closest("tr").find('td:eq(2)').text());
			$("#gender").val($(this).closest("tr").find('td:eq(3)').text());
			$("#age").val($(this).closest("tr").find('td:eq(4)').text());
			$("#docNIC").val($(this).closest("tr").find('td:eq(5)').text());
			$("#docEmail").val($(this).closest("tr").find('td:eq(6)').text());
			$("#passwod").val($(this).closest("tr").find('td:eq(7)').text());
			$("#phoneNumber").val($(this).closest("tr").find('td:eq(8)').text());
		});



	
	//Remove
	$(document).on("click", ".btnRemove", function(event)
			{
			 	$.ajax(
			{
				url : "DoctorAPI",
				type : "DELETE",
				data : "D_Id=" + $(this).val(),
				dataType : "text",
				complete : function(response, status)
				{
					onDoctorDeleteComplete(response.responseText, status);
				}
			 });
			});

	
		function onDoctorDeleteComplete(response, status)
		{
			if (status == "success")
		{
				var resultSet = JSON.parse(response);
				if (resultSet.status.trim() == "success")
		{
				$("#alertSuccess").text("Successfully deleted.");
				$("#alertSuccess").show();
				$("#divDoctorGrid").html(resultSet.data);
		} 
		else if (resultSet.status.trim() == "error")
		{
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
		}
		}
		else if (status == "error")
		{
			$("#alertError").text("Error while deleting.");
			$("#alertError").show();
		} 
		else
		{
			$("#alertError").text("Unknown error while deleting..");
			$("#alertError").show();
		}
}
		// CLIENT-MODEL================================================================
		function validateDoctorForm() {
			// First name
			if ($("#fName").val().trim() == "") {
				return "Insert First Name";
			}

			// Last name
			if ($("#lNmae").val().trim() == "") {
				return "Insert Last Name.";
			}
			// Gender
			if ($("#gender").val().trim() == 0 ) {
				return "Insert Gender.";
			}
			// Age
			if ($("#age").val().trim() == "") {
				return "Insert Age.";
			}

			// NIC
			if ($("#docNIC").val().trim() == "") {
				return "Insert NIC.";
			}
			// email
			if ($("#docEmail").val().trim() == "") {
				return "Insert Email.";
			}
			// Password
			if ($("#passwod").val().trim() == "") {
				return "Insert Password.";
			}
			// phone number
			if ($("#phoneNumber").val().trim() == "") {
				return "Insert Phone number.";
			}
			return true;
		}
