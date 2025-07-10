<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventify - Packages</title>
    <!-- Fixed Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <!-- Fix CSS path to ensure it works correctly -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Packages/packagesInterface.css">
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
    <section class="section1">
        <h2>Select Your Choice Now!</h2>
        <div class="section1-div1">
        
        <c:forEach var="pack" items="${packages}" varStatus="loop">
            <div class="section1-div1-item">
                <!-- Fixed image path using JSTL expression -->
                <img src="${pageContext.request.contextPath}/Packages/images/image${loop.index + 2}.svg" alt="${pack.name} package">
                <div class="section1-div1-item-name">${pack.name}</div>
                <div class="section1-div1-item-paragraph">${pack.description}</div>
                
                <div class="guests-count">No of Guests: ${pack.noOfGuests}</div>
                <div class="section1-div1-item-price">$${pack.price}</div>
                
                <div class="section1-div1-item-paragraph">Location: ${pack.location}</div>
                
                <form method="post" action="${pageContext.request.contextPath}/Payment/addNewpayment.jsp" class="section1-form">
                    <input value="${pack.price}" type="hidden" name="price">
                    <button type="submit" class="section1-div1-item-button">Get Now</button>
                </form>
            </div>
        </c:forEach>
            
        </div>
    </section>
    
    <jsp:include page="/User/UserFooter.jsp" />
</body>
</html>