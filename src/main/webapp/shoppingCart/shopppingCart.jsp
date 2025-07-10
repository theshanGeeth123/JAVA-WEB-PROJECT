<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/shoppingCart/shoppingCart.css">
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

    <main class="cart-container">
        <div class="cart-header">
            <h2 class="cart-title"><i class="fas fa-shopping-cart"></i> Edit Shopping Cart</h2>
            <a href="<%= request.getContextPath() %>/shoppingCart/addItemsToCart.jsp" class="btn btn-primary">
                <i class="fas fa-plus-circle"></i> Add New Item
            </a>
        </div>

        <div class="cart-items">
            <c:forEach var="item" items="${itemList}">
                <article class="cart-item card">
                    <div class="item-image-container">
                        <img src="<%= request.getContextPath() %>/cartItemImages/${item.imageUrl}" 
                             alt="${item.itemName}" 
                             class="item-image">
                    </div>
                    
                    <div class="item-details">
                        <div class="detail-row">
                            <span class="detail-label">ID:</span>
                            <span class="detail-value">${item.itemId}</span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Name:</span>
                            <span class="detail-value">${item.itemName}</span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Description:</span>
                            <p class="detail-value description">${item.itemDescription}</p>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Brand:</span>
                            <span class="detail-value">${item.brandName}</span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Status:</span>
                            <span class="detail-value status-badge status-${item.status.toLowerCase()}">${item.status}</span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">Price:</span>
                            <span class="detail-value price">$${item.itemPrice}</span>
                        </div>
                    </div>
                    
                    <div class="item-actions">
                        <form method="post" action="EditShoopingCartItem" class="action-form">
                            <input type="hidden" value="${item.itemId}" name="itemID">
                            <button type="submit" class="btn btn-edit">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                        </form>
                        
                        <form method="post" action="DeleteShoppingCartItem" class="action-form"
						      onsubmit="return confirm('Are you sure you want to delete this item?');">
						    <input type="hidden" value="${item.itemId}" name="itemID">
						    <button type="submit" class="btn btn-delete">
						        <i class="fas fa-trash-alt"></i> Delete
						    </button>
						</form>
                    </div>
                </article>
            </c:forEach>
        </div>
        
        <div class="cart-footer">
            <button id="reload-btn" class="btn btn-secondary">
                <i class="fas fa-sync-alt"></i> Refresh Cart
            </button>
        </div>
    </main>

   
   <script src="<%= request.getContextPath() %>/shoppingCart/shoppingCart.js"></script>
   
   <jsp:include page="/Admin/adminFooter.jsp" />
</body>
</html>