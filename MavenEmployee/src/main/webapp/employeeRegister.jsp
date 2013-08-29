<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration Page</title>

<script type="text/javascript">
function validateForm()
{

	var uName = document.getElementById("un");
	
	var uaddress = document.getElementById("ad");
	
	var uphnno = document.getElementById("ph");
	
	
	if((uName.value == "" || uName.value == null) || (uaddress.value == "" || uaddress.value == null) || (uphnno.value == "" || uphnno.value == null)){
		alert("Enter all fields");
		return false;
	}
	
	 var str = ph.value;
	 var re = /^[-]?\d*\.?\d*$/;
	str = str.toString();
	if (!str.match(re)) {
		alert("Enter only numbers into the field of phone no");
		return false;
	}
	
	document.myForm.submit();
}


</script>
</head>
<body>
<h1 align="center">Register yourself on this page</h1>

<p></p>


<form name="myForm" method="POST" action="inserting.jsp">
<fieldset>
	<legend>Employee registration page</legend>
<table border='1'>

<tr>
<td>Employee Name:</td><td><input type="text" name="un" id="un" maxlength="10"></td></tr>
<tr><td>Employee Address:</td><td><input type="text" name="ad" id="ad" ></td></tr>
<tr><td>Employee PHONE_NUMBER:</td><td><input type="text" name="ph" id="ph" maxlength="10"></td></tr>
</table>
<input type="submit" value="post " onclick="validateForm()" />
<input type="reset" value="reset">

</fieldset>
</form>
</body>
</html>