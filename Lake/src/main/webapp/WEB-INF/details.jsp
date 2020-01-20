<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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


	<form action="update.do" method="GET">
		<input type="hidden" value="${lake.id}" name="id" /> <input type="submit"
			value="Update">
	</form>
	
	<form action="delete.do" method="POST">
		<input type="hidden" value="${lake.id}" name="id" /> <input type="submit"
			value="Delete">
	</form>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>