<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	<div id="content">
		<div class="container">
			<table class="table">
				<tbody>
					<tr>
						<th scope="row">번호</th>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<c:choose>
						<c:when test="${fn:length(list) > 0 }">
							<c:forEach items="${list }" var="bList">
								<tr>
									<th scope="row">${bList.IDX }</th>
									<td><a
										href='<c:url value='/board/boardDetail?idx=${bList.IDX }'/>'
										class="text-dark">${bList.TITLE }</a></td>
									<td>${bList.CREA_ID }</td>
									<td>${bList.CREA_DATE }</td>
									<td>${bList.HIT_CNT }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>

		</div>

		<a href='<c:url value='/board/boardWrite'/>' role="button"
			class="btn btn-outline-info">글쓰기</a> <a
			href='<c:url value='/board/boardDetail?idx=${bList.IDX }'/>'
			class="text-dark">${bList.TITLE }</a>
	</div>

</body>
</html>

