<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!-- read about core -->>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url var="addAction" value="/customers" ></c:url>
<h3>Welcome  <%=session.getAttribute("firstName") %>  <%=session.getAttribute("lastName") %></h3>
<!-- this will be our Customer Dashboard -->
<!-- for testing -->

card ID:<%=session.getAttribute("cardID") %>
<br>Customer name: <%=session.getAttribute("firstName") %>  <%=session.getAttribute("lastName") %>
<br>Validity Date:<%=session.getAttribute("validDate") %>
<br>Card Type:<%=session.getAttribute("cardType") %>
<br>Card Status?Active/not:<%=session.getAttribute("activated2") %>

<br>total credits: <%=session.getAttribute("credits") %>
<br>used credits: <!-- iska kya karu -->
<br>remaining credits:<%=session.getAttribute("remaingCredits") %>

<br>balance:<%=session.getAttribute("balance") %>

<br>Amount Due:
<br>On Date:
<br> Card Valid: <%=session.getAttribute("validDate") %>

<br><a href="Logout">Logout</a>

</body>
</html>