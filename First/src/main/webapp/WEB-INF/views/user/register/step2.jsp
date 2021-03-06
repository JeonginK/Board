<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="panel panel-default">
	<div class="panel-heading">회원가입</div>
	<div class="panel-body">
		<div class="row">
			<form:form role="form" commandName="registerRequest"
				action="/register/step3" method="post">

				<div class="col-lg-8">
					<div class="form-group input-group"
						style="margint-left: auto; margin-right: auto;">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-plus"></i></span>
						<form:input type="text" class="form-control" placeholder="ID"
							path="id" />
						<form:errors path="id" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span>
						<form:input type="email" class="form-control" placeholder="Email"
							path="email" />

					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span>
						<form:input type="text" class="form-control" placeholder="Name"
							path="name" />
						<form:errors path="name" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span>
						<form:password class="form-control" placeholder="Password"
							path="pw" />
						<form:errors path="pw" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span>
						<form:password class="form-control" placeholder="Password Check"
							path="checkPw" />
						<form:errors path="checkPw" />
					</div>
					<button type="submit" class="btn btn-default">가입하기</button>
					<button type="reset" class="btn btn-default">취소하기</button>
				</div>
			</form:form>
		</div>
	</div>
</div>

