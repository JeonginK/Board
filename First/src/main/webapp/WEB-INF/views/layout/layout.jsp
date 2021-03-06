<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 800px;
}

/* Set black background color, white text and some padding */

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

 #box {
            padding:30px;
        
        }

</style>
</head>
<body>

	<t:insertAttribute name="header" />

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav" id= "box">
				<t:insertAttribute name="left" />
			</div>

			<div class="col-sm-8 text-left" >
				<div class="container" id= "box">
					<t:insertAttribute name="content" />
				</div>
			</div>
			
		</div>
	</div>

	<footer class="container-fluid text-center">
		<t:insertAttribute name="footer" />
	</footer>

</body>
</html>