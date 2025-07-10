<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/Profile/Profile.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link rel="stylesheet" href="test7.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <a href="<%= request.getContextPath() %>/Profile/UserInterface.jsp" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </a>
            </nav>
        </div>
    </header>

<div class="profile-container">
    <div class="profile-card">
        <div class="profile-header">
            <h2><i class="fas fa-user-edit"></i> Edit Profile</h2>
        </div>
        
        <c:set var="cus" value="${customer}" />
        
        <form method="post" id="form" action="<%= request.getContextPath() %>/UpdateCustomerByCustomer" class="profile-form">
            <input value="${cus.id}" type="hidden" name="id">
            
            <div class="form-group">
                <label for="name"><i class="fas fa-user"></i> Full Name</label>
                <input type="text" id="name" name="name" id="name" value="${cus.getName()}" >
                <label id="name-status"></label>
            </div>
            
            <div class="form-group">
                <label for="age"><i class="fas fa-birthday-cake"></i> Age</label>
                <input type="number" id="age" name="age" value="${cus.age}"  >
                <label id="age-status"></label>
            </div>
            
            <div class="form-group">
                <label for="email"><i class="fas fa-envelope"></i> Email Address</label>
                <input type="email" id="email" name="email" value="${cus.email}" >
                <label id="email-status"></label>
            </div>
            
            <div class="form-group">
                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <div class="password-input">
                    <input type="password" id="password" name="password" value="${cus.password}" >
                    <button type="button" class="toggle-password" aria-label="Show password">
                        <i class="fas fa-eye"></i>
                    </button>
                </div>
                <label id="password-status"> </label>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn-update">
                    <i class="fas fa-save"></i> Update Profile
                </button>
                
                <a href="<%= request.getContextPath() %>/Profile/UserInterface.jsp" class="btn-cancel">
        		<i class="fas fa-times"></i> Cancel
    		</a>
            </div>
        </form>
    </div>
</div>

<script src="<%= request.getContextPath() %>/Profile/Profile.js"></script>

</body>
</html>