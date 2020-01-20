<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

	<form action="updated.do" method="post">

		Name of Lake:<input type="text" name="name" size="25" value="${lake.name}"required /><br>
		Located in County: <input type="text" name="county" value="${lake.county}" size="25" /> <br>
		Size in Acer: <input type="number" name="size" value="${lake.size}" size="25" /> <br>
		Elevation: <input type="number" name="elevation" value="${lake.elevation}" size="25" /> <br>
		Entry Fee: <input type="number" name="fee" value="${lake.fee}" size="25" /> <br>
		Allow Ice fishing? 
		<input type="radio" name="canIceFishing" value="true">Yes
		<input type="radio" name="canIceFishing" value="false" checked="checked">No  
		 <br>
		 Fish Species:<input type="text"
			name="fishSpecies" size="50" value="${lake.fishSpecies}" /><br> Notes about this Lake:<input
			type="text" name="notes" size="500" value="${lake.notes}" /><br> 
			<input type="hidden" value="${lake.id}" name="id" />
			<input type="submit" value="UPDATE" /><br>
	</form>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>