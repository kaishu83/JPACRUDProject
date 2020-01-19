<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		 
		 Fish Species:<input type="text"
			name="fishSpecies" size="50" value="${lake.fishSpecies}" /><br> Notes about this Lake:<input
			type="text" name="notes" size="500" value="${lake.notes}" /><br> 
			<input type="hidden" value="${lake.id}" name="id" />
			<input type="submit" value="UPDATE" /><br>
	</form>

</body>
</html>