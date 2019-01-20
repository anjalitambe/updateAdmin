<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
admin edits customer
<c:url value="/trying" var="url"></c:url>
<form:form method="post" action="${url}" commandName="editCustomerObj"> 
				
					 <form:label path="customerId">Customer Id</form:label>
								<form:input type="number" placeholder=" CustomerId.."
									class="form-control" path="customerId" ></form:input><br> 
									
					<form:label path="firstName">Customer First Name</form:label>
								<form:input type="text" placeholder="Enter Customer Name.."
									class="form-control" path="firstName"></form:input>	<br>
									
					<form:label path="lastName">Customer Last Name</form:label>
								<form:input type="text" placeholder="Enter Last Name.."
									class="form-control" path="lastName"></form:input>	<br>				
									
 					<form:label path="dob">DOB</form:label>
								<form:input type="text" placeholder="Enter DOB.."
									class="form-control" path="dob"></form:input>	<br>		 	
									
					<form:label path="email">Customer email</form:label>
								<form:input type="text" placeholder="Enter email.."
									class="form-control" path="email"></form:input>	<br>					
									
					<form:label path="phoneNumber">Customer Phone Number</form:label>
								<form:input type="text" placeholder="Enter phoneNumber.."
									class="form-control" path="phoneNumber"></form:input>	<br>					
									
					<form:label path="password">Customer password</form:label>
								<form:input type="text" placeholder="Enter password.."
									class="form-control" path="password"></form:input>	<br>					
									
									
					<form:label path="gender">Customer gender</form:label>
								<form:input type="text" placeholder="Enter gender.."
									class="form-control"  path="gender" ></form:input>	<br>					
									
										<form:label path="address.addressId">address Id</form:label>
								<form:input type="number" placeholder=" addressId"
									class="form-control" path="address.addressId" ></form:input><br> 	
									
										
					<form:label path="card.cardID">Card Id</form:label>
								<form:input type="number" placeholder=" Card Id.."
									class="form-control" path="card.cardID" ></form:input><br> 	
					
					<form:label path="card.validDate">Valid Date!</form:label>
								<form:input type="text" placeholder=" Validity Date.."
									class="form-control" path="card.validDate"></form:input><br> 	 
							
					<form:label path="card.credits">Credits</form:label>
								<form:input type="number" placeholder=" Credits.."
									class="form-control" path="card.credits"></form:input><br>
									
					<form:label path="card.remaingCredits">Remaining Credits</form:label>
								<form:input type="number" placeholder=" Remaining Credits.."
									class="form-control" path="card.remaingCredits"></form:input><br>				 										
							
							
							
							
									
									
					<form:label path="card.cardType">Card Type</form:label>
							<form:radiobutton path="card.cardType" value="Gold" />
							Gold
							<form:radiobutton path="card.cardType" value="Titanium" />
							Titanium<br>
							
					<form:label path="activated2">Status of user</form:label>
							<form:radiobutton path="activated2" value="true" />
							Activated
							<form:radiobutton path="activated2" value="false" />
							Inactive<br>
							
						<form:label path="card.activated">Status of card</form:label>
							<form:radiobutton path="card.activated" value="true" />
							Activated
							<form:radiobutton path="card.activated" value="false" />
							Inactive<br>		
					
							
							
					<form:label path="bank.bankId">Bank Id</form:label>
								<form:input type="number" placeholder="Bank ID.."
									class="form-control" path="bank.bankId" disabled="true"></form:input><br>
									<form:label path="bank.bankName">Bank Name</form:label>
									
									
					<form:input type="text" placeholder="Bank ID.."
									class="form-control" path="bank.bankId" disabled="true"></form:input><br>					
					<form:label path="bank.bankName">Bank Name</form:label>
								<form:input type="text" placeholder="Bank Name.."
									class="form-control" path="bank.bankName" disabled="true"></form:input><br>		
							
					<form:label path="bank.savingsAccNo">Account Number</form:label>
								<form:input type="number" placeholder="Account Number.."
									class="form-control" path="bank.savingsAccNo" disabled="true"></form:input><br>
									
					<form:label path="bank.IFSCCode">IFSC Code</form:label>
								<form:input type="number" placeholder="IFSC code.."
									class="form-control" path="bank.IFSCCode" disabled="true"></form:input><br>		
									
					<form:label path="bank.balance">Balance</form:label>
								<form:input type="number" placeholder="Balance.."
									class="form-control" path="bank.balance" disabled="true"></form:input><br>									
							
							
							
					<button type="submit" class="btn btn-lg btn-info">Update</button>		
									

</form:form>
</body>
</html>