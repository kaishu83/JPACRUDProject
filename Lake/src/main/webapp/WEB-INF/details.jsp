<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${lake.name }</title>
</head>
<body>
	<ul>
		<li>Name of Lake: ${lake.name}</li>
		<li>Located in ${lake.county } County</li>
		<li>Size in Acer: ${lake.size }</li>
		<li>Elevation: ${lake.elevation }</li>
		<li>Entry Fee: ${lake.fee}</li>
		<li>Allow Ice fishing? <c:choose>
				<c:when test="${lake.canIceFishing==true }"> YES</c:when>
				<c:when test="${lake.canIceFishing==false }"> NO</c:when>
			</c:choose>
		</li>
		<li>Fish Species: ${lake.fishSpecies }</li>
		<li>Notes about this Lake: ${lake.notes }</li>

	</ul>

	<a href="home.do">Home!</a>
	<br>


	<form action="update.do" method="get">
		<input type="hidden" value="${lake.id}" name="id" /> <input type="submit"
			value="Update">
	</form>
	
	<form action="delete.do" method="get">
		<input type="hidden" value="${lake.id}" name="id" /> <input type="submit"
			value="Delete">
	</form>
</body>
</html>