<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
fill form
<form:form method="POST" modelAttribute="admin"  action="AdminForms">
<div>
			Admin Name:<input type="text"  id="adminName" name="adminName" placeholder="Enter username" required>
		</div>      
		<br>
		<div>
			Password:<input type="password" id="password" name="password" placeholder="Enter password" required>
		</div>
		<div>
					<button type="submit"> Submit</button></a>
				</div>
				<a href="AdminDashBoard">Admin Dashboard</a>
</form:form>
</body>
</html>