<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lakes</title>
</head>
<body>
	<h1>Lake for Fishing in Colorado</h1>
	<form action="find.do" method="GET">
		Search a Lake by ID:<br> <input type="number" name="id"
			size="100" /> <input type="submit" value="Search by ID" />
	</form>
	<br>
	<form action="search.do" , method="GET">
		Search a Lake by Keyword:<br> <input type="text" name="keyword"
			size="100" /> <input type="submit" value=Search keyword />
	</form>
	<br>
	<a href="showAll.do">Show all Lakes!</a>
	<br>


	<a href="create.do">Add the Lake that you Know!</a>

</body>
</html>