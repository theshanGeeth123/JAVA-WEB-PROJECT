<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Package</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/AdminPackageControl/AdminEditSinglePackage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link rel="stylesheet" href="test5.css">
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

    <main class="edit-package-container">
        <div class="edit-package-header">
            <h2 class="edit-package-title">Edit Selected Package</h2>
        </div>
        
        <c:set var="packet" value="${pack}"/>

        <div class="edit-package-form-container">
        
            <form action="EditSinglePackage" method="post" class="package-edit-form" id="form">
                <div class="form-group">
                    <label class="form-label">ID</label>
                    <input class="form-input" value="${pack.id}" name="id" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Name</label>
                    <input class="form-input" value="${packet.name}" name="name" id="name">
                    <label id="nameStatus-label"></label>
                </div>

                <div class="form-group full-width">
                    <label class="form-label">Description</label>
                    <textarea class="form-input" name="description" rows="4" id="description">${packet.description}</textarea>
                    <label id="descriptionStatus-label"></label>
                </div>

                <div class="form-group">
                    <label class="form-label">Price</label>
                    <input class="form-input" type="number"  value="${packet.price}" id="price" name="price">
                    <label id="pricesStatus-label"></label>
                </div>

                <div class="form-group">
                    <label class="form-label">No of Guests</label>
                    <input class="form-input" type="number" value="${packet.noOfGuests}" id="guests" name="noOfGuests" min="0">
                    <label id="guestsStatus-label"></label>
                    
                </div>

				<div class="form-group">
                    <label class="form-label">Location</label>
                    <input class="form-input" type="text" value="${packet.location}"  name="location" >
                    <label id="guestsStatus-label"></label>
                    
                </div>
                

                <div class="form-actions">
                    
                    <button type="submit" class="submit-button" id="sumit-btn">Update Package</button>
                
                    
                    <form action="adminAllPackages" method="post" class="cancel-form">
                        <button type="submit" class="cancel-button">Cancel Update</button>
                    </form>
                </div>
                
            </form>
        </div>
    </main>

    <script src="<%= request.getContextPath() %>/AdminPackageControl/AdminEditSinglePackage.js"></script>
</body>
</html>