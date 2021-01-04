<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.js" 
		integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" 
		crossorigin="anonymous">
</script>


<script>
var data;
	$(document).ready(function(){
		$('#btnClick').click(function(){
			$.ajax({
				url:"/getUserByID/"+$('#uid').val(),
			//	data:$('#uid').val(),
				type:"POST,"
				contentType:"application/json",
				dataType:"json",
				success:function(r){
					data=r;
					alert(r)
				}
			})
			
		})
	})
</script>

</head>
<body>
	<h1>Operation From</h1>
	
	<!-- <form action="operation">
	    User By ID : <input id="uid" name="UId"><br>
	   	<select name="ddlFlag">
	   		<option value="select">Select Records</option>
	   		<option value="delete">Delete Records</option>
	   		<option value="update">Update Records</option>
	   		<option value="custom">Custom</option>
	   	</select>
	   	
	   
	    <input type="submit" value="Click Now">
 -->
 	
 	<form>
	    User By ID : <input id="uid" name="UId"><br>
	   	<select name="ddlFlag">
	   		<option value="select">Select Records</option>
	   		<option value="delete">Delete Records</option>
	   		<option value="update">Update Records</option>
	   		<option value="custom">Custom</option>
	   	</select>
	   	
	   
	    <input id="btnClick" type="button" value="Click Now">
 	
 
 	</form>

</body>
</html>