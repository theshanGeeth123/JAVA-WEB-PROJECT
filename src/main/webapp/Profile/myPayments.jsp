<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment History</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/Profile/myPayments.css">
</head>

<body>

<header class="app-header">
        <div class="header-container">
            <div class="branding">
                <h1 class="app-name">Eventify</h1>
            </div>
            <nav class="main-nav">
                <a href="${pageContext.request.contextPath}/Homepage/HomePage.jsp" class="nav-link">
                    <i class="fas fa-home"></i> Home
                </a>
                <a href="${pageContext.request.contextPath}/Profile/UserInterface.jsp" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </a>
            </nav>
        </div>
    </header>


    <div class="payment-container" style="margin-bottom: 30px;">
        <h1 class="payment-header">Payment History</h1>
        <div class="payment-table-wrapper">
            <table class="payment-table">
                <thead>
                    <tr>
                        <th>Payment ID</th>
                        <th>Package Price</th>
                        <th>Customer ID</th>
                        <th>Date & Time</th>
                        <th>Tax</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="payment" items="${payments}">
                    <tr>
                        <td>${payment.paymentId}</td>
                        <td>${payment.packagePrice}</td>
                        <td>${payment.cusomerId}</td>
                        <td>${payment.timestamp}</td>
                        <td>${payment.tax}</td>
                        <td>${payment.total}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    
    <jsp:include page="/User/UserFooter.jsp" />
    
</body>
</html>