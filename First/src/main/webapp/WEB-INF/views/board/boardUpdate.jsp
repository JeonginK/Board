<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>

<body>

	<div class="container col-md-6">
		<form action='<c:url value='/board/boardUpdate'/>' method="post">
			<div class="form-group">
				<label for="exampleFormControlInput1">제목</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="TITLE"
					value="${detail.TITLE }">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">작성자</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="CREA_ID"
					value="${detail.CREA_ID }" readonly>
			</div>
			<div class="form-group">
				<label for="exampleFormControlTextarea1">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="10" name="CONTENTS">${detail.CONTENTS }</textarea>
			</div>
			<input type="hidden" name="IDX" value="${detail.IDX }">
			
			<button type="submit" class="btn btn-info">수정하기</button>
			<button type="button" class="btn btn-secondary">뒤로가기</button>
		</form>
	</div>

</body>
</html>