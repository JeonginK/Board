<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><li><a href='<c:url value='/board/boardList'/>'> Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Projects</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<ul class="nav navbar-nav">						
						<c:catch>
							<c:choose>
								<c:when test="${empty authInfo }">
									<li><a href="/login"><span class="glyphicon glyphicon-log-in"></span></i> Login</a></li>
									<li><a href="/register/step1"> 회원가입</a></li>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${authInfo.grade eq '1' }">
											<li>
												<p>관리자 ${authInfo.name }님, 환영합니다.</p>
											</li>
											<li><a href="/logout"><i class="glyphicon glyphicon-log-out"></i>
													로그아웃</a></li>
										</c:when>
										<c:otherwise>
											<li>
												<p>${authInfo.name }님,반갑습니다!</p>
											</li>
											<li><a href="/logout"><i class="glyphicon glyphicon-log-out"></i>
													로그아웃</a></li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:catch>


					</ul>

				</ul>
			</div>
		</div>
	</nav>


</body>
</html>