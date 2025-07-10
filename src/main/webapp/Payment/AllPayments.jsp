<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/Payment/AllPayments.css">
</head>
<body>

	<a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp">Go back</a>
	
	<table border=1>
        <thead>
            <tr>
                <th>Payment ID</th>
                <th>Price without Tax</th>
                <th>Customer ID</th>
                <th>Timestamp</th>
                <th>Tax</th>
                <th>Total</th>
                <th>Customize</th>
            </tr>
        </thead>
        <c:forEach var="payment" items="${paymentList}">
        <tbody>
           
           
           
           		<td>${payment.paymentId}</td>
           		<td>${payment.packagePrice}</td>
           		<td>${payment.cusomerId}</td>
           		<td>${payment.timestamp}</td>
           		<td>${payment.tax}</td>
           		<td>${payment.total}</td>
           		
           		<td>
           		
           		
           			<form action="<%= request.getContextPath() %>/SinglePayment" method="post">
           			
           				<input value="${payment.paymentId}" type="hidden" name="paymentId">       				
           				<button clas="editbtn" type="submit">Edit</button>
           				
           			</form>
 		          		
 		          	<form method="post" action="<%= request.getContextPath() %>/DeleteSinglePayment">
 		          	
 		          		<input value="${payment.paymentId}" type="hidden" name="paymentId">       
          				<button clas="deletebtn"  type="submit">Delete</button>
          				
          			</form>
 		          		
           		</td>
            
        </tbody>
        </c:forEach>
    </table>
	
</body>
</html>