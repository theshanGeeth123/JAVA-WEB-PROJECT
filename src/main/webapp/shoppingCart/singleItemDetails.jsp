<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Item | Eventify</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/shoppingCart/singleItemDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

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

    <main class="edit-item-container">
        <h1 class="edit-title"><i class="fas fa-edit"></i> Edit Selected Item</h1>
        
        <div class="edit-content">
            <c:set var="item" value="${itemDetails}"/>
            
            <form class="edit-form" method="post" action="EditShoopingCartItem2" id="itemForm">
                <div class="form-grid">
                    <div class="form-group">
                        <label class="form-label">ID</label>
                        <input class="form-input" value="${item.itemId}" readonly name="itemId">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Name</label>
                        <input class="form-input" value="${item.itemName}" id="itemName" name="itemName" required>
                        <label id="name-input-status"></label>
                    </div>
                    
                    <div class="form-group full-width">
                        <label class="form-label">Description</label>
                        <textarea class="form-input" name="itemDescription" id="itemDescription" required>${item.itemDescription}</textarea>
                        <label id="description-input-status"></label>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Brand Name</label>
                        <input class="form-input" value="${item.brandName}" id="brandName"  name="brandName" required>
                        <label id="brand-input-status"></label>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Status</label>
                        <select class="form-input" name="status" required>
                            <option value="Active" ${item.status == 'Active' ? 'selected' : ''}>Active</option>
                            <option value="Inactive" ${item.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
                            <option value="Pending" ${item.status == 'Pending' ? 'selected' : ''}>Pending</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Price</label>
                        <input class="form-input" value="${item.itemPrice}" id="itemPrice"  name="itemPrice" type="number" step="0.01" min="0" required>
                        <label id="price-input-status"></label>
                    </div>
                </div>
                
                <div class="image-preview">
                    <img src="<%= request.getContextPath() %>/cartItemImages/${item.imageUrl}" alt="${item.itemName}">
                    <p class="image-note">Current item image</p>
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-save">
                        <i class="fas fa-save"></i> Save Changes
                    </button>
                    <a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp" class="btn btn-cancel">
                        <i class="fas fa-times"></i> Discard Changes
                    </a>
                </div>
            </form>
        </div>
    </main>
    
    <jsp:include page="/Admin/adminFooter.jsp" />

    <script src="<%= request.getContextPath() %>/shoppingCart/singleItemDetails.js"></script>
</body>
</html>