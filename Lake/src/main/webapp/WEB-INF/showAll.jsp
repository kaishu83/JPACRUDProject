<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lakes Found</title>
</head>
<body>

	<c:forEach var="l" items="${lakes}">

		<a href="find.do?id=${l.id}">${l.name}</a>
		<br>


	</c:forEach>



</body>
</html>