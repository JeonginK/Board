<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>

<html>
<head>
<title>Explosion</title>

</head>
<body>

	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">

		<t:insertAttribute name="header" />

	</div>

	<div class="container">

		<t:insertAttribute name="left" />
		<t:insertAttribute name="content" />

	</div>
	<t:insertAttribute name="footer" />
</body>
</html>
