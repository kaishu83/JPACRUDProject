<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Create New</title>
</head>

<body>
	<h1>Please add the lake you know!</h1>

	<form action="created.do" method="post">

		Name of Lake:<input type="text" name="name" size="25" required /><br>
		Located in County: <input type="text" name="county" size="25" /> <br>
		Size in Acer: <input type="number" name="size" size="25" /> <br>
		Elevation: <input type="number" name="elevation" size="25" /> <br>
		Entry Fee: <input type="number" name="fee" size="25" /> <br>
		Allow Ice fishing? 
		<input type="radio" name="canIceFishing" value="true">Yes 
		<input type="radio" name="canIceFishing" value="false" checked="checked">No 
		<br> 
			
			
			Fish Species:<input type="text"
			name="fishSpecies" size="50" /><br> Notes about this Lake:<input
			type="text" name="notes" size="500" /><br> <input type="submit"
			value="Create" /><br>
	</form>
</body>
</html>