<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<div class="panel panel-default" style="width: 300px;" >
		<div class="panel-heading" style="text-align:center" >
			로그인
			</div>
			<div class="panel-body">
				<form:form role="form" commandName="loginCommand" action="/login"
					method="post">
					<fieldset>
						<div class="form-group">
							<form:input type="text" class="form-control" placeholder="ID"
								path="id" />
						</div>
						<div class="form-group">
							<form:password class="form-control" placeholder="Password"
								path="pw" />
						</div>
						<div class="checkbox">
							<label> <form:checkbox path="rememberId" />아이디 기억
							</label>
						</div>
						<button type="submit" class="btn btn-lg btn-success btn-block">로그인</button>
					</fieldset>
				</form:form>
			</div>
	</div>
</body>
</html>