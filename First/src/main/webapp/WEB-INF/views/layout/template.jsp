<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


</head>
<body>
	<!-- <tiles:insertAttribute name="header" />
	<div id="container">
		<tiles:insertAttribute name="body" />
	</div>
	<tiles:insertAttribute name="footer" /> 
	
	-->
	<table width="100%">
		<tr>
			<td colspan="2"><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td width="20%" nowrap="nowrap"><tiles:insertAttribute
					name="left" /></td>
			<td width="80%">
				<div id="container">

					<tiles:insertAttribute name="body" />
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2"><tiles:insertAttribute name="footer" /></td>
		</tr>
	</table>




</body>

</html>
