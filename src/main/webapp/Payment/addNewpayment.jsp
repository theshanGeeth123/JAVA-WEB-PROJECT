<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/Payment/addNewpayment.css">
</head>
<body>

<form method="post" action="<%= request.getContextPath() %>/AddNewPayment">

	<% 
        String price = request.getParameter("price"); 
		Customer loginCus = (Customer) session.getAttribute("customer");
    
    %>
    
    
    Price without Tax : <input value=<%= price %> id="package-price" name="package-price">
    
    
    Customer ID: <input value=<%= loginCus.getId() %> name="customer-id">
	
	
	Payment Timestamp: <input id="current-date-and-time" type="text" name="timestamp"> 
	
	
	Tax value (10%): <input id="tax" name="tax">
	
	Total: <input id="total" name="total">
	
	<button type="submit">Confirm the Order</button>
	
	<button style="background-color:red;"><a href="<%= request.getContextPath() %>/Profile/UserInterface.jsp" style="text-decoration: none">Cancel the Order</a></button>
	
</form>
	
</body>




<script src="<%= request.getContextPath() %>/Payment/addNewpayment.js"></script>

	
</html>



