<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/AdminControl/singleCustomerDetails.css">
    <link rel="stylesheet" href="test8.css">
</head>
<body>

    <header class="app-header">
        <div class="header-container">
            <div class="branding">
                <h1 class="app-name">Eventify</h1>
            </div>
            <nav class="main-nav">
                <a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp" class="nav-link">
                    <i class="fas fa-home"></i> Home
                </a>
                <a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </a>
            </nav>
        </div>
    </header>

    <main class="form-container">
        <c:set var="cus" value="${customer}" />

        <form id="form" action="UpdateCustomerByAdmin2" method="post" class="customer-form">
            <div class="form-group">
                <label for="id">Customer ID</label>
                <input type="text" id="id" name="id" value="${cus.id}" readonly>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input  id="email" name="email" value="${cus.email}">
            </div>

            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" value="${cus.name}">
                <label id="name-status"></label>
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" value="${cus.age}">
                <label id="age-status"></label>
            </div>
            
            <label for="age">Gender</label>
            <select class="select-gender" name="gender" style="background-color: #eaeaea;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-radius: 5px	">
			    <option value="" disabled <c:if test="${empty cus.gender}">selected</c:if>>Select Gender</option>
			    <option value="Male" <c:if test="${cus.gender == 'Male'}">selected</c:if>>Male</option>
			    <option value="Female" <c:if test="${cus.gender == 'Female'}">selected</c:if>>Female</option>
			</select>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" id="password" name="password" value="${cus.password}">
                <label id="password-status"></label>
            </div>

            <div class="form-buttons">
                <button type="submit" class="btn primary-btn">Update</button>
            </div>
        </form>

        <form action="getAllCustomers" method="post" class="customer-form">
            <div class="form-buttons">
                <button type="submit" class="btn secondary-btn">Cancel & Return</button>
            </div>
        </form>
    </main>

    <script src="<%= request.getContextPath() %>/AdminControl/singleCustomerDetails.js"></script>
</body>
</html>
