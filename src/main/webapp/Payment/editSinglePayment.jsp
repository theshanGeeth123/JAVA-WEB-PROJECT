<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/Payment/editSinglePayment.css"> 
</head>

<body>

<a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp">Cancel the Update</a>
	
<c:set var="payment" value="${singlePayment}"/>

<form method="post" action="<%= request.getContextPath() %>/EditSinglePayment">
	
PaymentId:<input value="${payment.paymentId}" readonly name="paymentId"> 	

packagePrice :<input value="${payment.packagePrice}" type="number" name="packagePrice">

cusomerId:<input value="${payment.cusomerId}" name="cusomerId">

timestamp:<input value="${payment.timestamp}" name="timestamp">

tax:<input value="${payment.tax}" name="tax">

total:<input value="${payment.total}" name="total">


<button type="submit">Edit Details</button>

</form>

	
</body>
</html>