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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

</head>
<body>
	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title mb-3">${detail.TITLE }</h4>
				<h6 class="card-subtitle text-muted mb-4">
					<i class="far fa-user"></i> ${detail.CREA_ID } �� <i
						class="far fa-clock"></i> ${detail.CREA_DATE } �� <i
						class="fas fa-align-justify"></i> ${detail.HIT_CNT }
				</h6>
				<p class="card-text">${detail.CONTENTS }</p>
			</div>
			<div class="card-body">
				<a href="#" class="btn btn-outline-secondary btn-sm" role="button">����</a>
				<a href="#" class="btn btn-outline-secondary btn-sm " role="button">����</a>
			</div>
			<div class="card-body">


				<a href='<c:url value='/board/boardList'/>' class="btn btn-info"
					role="button">�������</a>

			</div>
		</div>
	</div>

</body>
</html>