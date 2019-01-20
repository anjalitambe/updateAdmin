<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
user list

<table class="table table-hover" id="customerList">
			<thead>
				<tr>
					<th>Customer Name</th>
					<th>Customer Id</th>
					<th>Bank Id</th>
					<th>DOB</th>
					<th>CardType</th>
					<th>Remaining Credits</th>
					<th>Valid Date</th>
					<th>IFSC Code</th>
					<th>Account Number</th>
					<th>Balance</th>
					<th>Status</th>
					
					
					<th>Edit</th>
					<th>Delete</th>
					<th>Activate user</th>
					
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${customers}" var="cust">
				<tr>
						<%--<td style="width: 171px"> <img
							src="<c:url value="D:/EMI Repos/EMICardManagement1/WebContent/resources/img/products/${prod.productId}.jpg"/>"
							style="width: 100px; height: 90px;" ${prod.productName}"  />
							</td> --%> 
						<td>${cust.firstName} ${cust.lastName}</td>
						<td>${cust.customerId}</td>
						
						<td>${cust.bank.bankId}</td>
						<td>${cust.dob}</td>
						<td>${cust.card.cardType}</td>
						<td>${cust.card.remaingCredits}</td>
						<td>${cust.card.validDate}</td>
						<td>${cust.bank.IFSCCode}</td>
						<td>${cust.bank.savingsAccNo}</td>
						<td>${cust.bank.balance}</td>
						<td><%-- <%= session.getAttribute("activated2") %> --%>${cust.activated2} </td>
						
						<!-- enter card type here!!!!! -->
<%-- 						<td>${cust.cardType}</td> --%>
						<td><a href="admin/customer/editCustomer/${cust.customerId}">Edit</a></td>
						<td><a href="admin/customer/delete/${cust.customerId}" >Delete</a></td>
						<td><a href="admin/cardvalid/${cust.activated2}">Verify User</a></td>
						<td><a href="admin/customer/activatethisCustomer/${cust.customerId}">Activate</a></td>
					</tr>
				</c:forEach>
			</tbody>
						
				
				
				
</table>		
</body>
</html>