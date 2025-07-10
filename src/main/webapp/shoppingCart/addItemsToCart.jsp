<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Items to Cart | Eventify</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/shoppingCart/addItemsToCart.css">
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

    <main class="form-container">
        <form class="item-form" action="<%= request.getContextPath() %>/addItemToCart" method="post" enctype="multipart/form-data">
            <h1 class="form-title"><i class="fas fa-plus-circle"></i> Add Items to Cart</h1>
            
            <div class="form-group">
                <label class="form-label">Item Name</label>
                <input class="form-input" name="itemName" id="itemName" type="text" >
                <label class="name-input-status" id="statusLabel"></label>
            </div>
            
            <div class="form-group">
                <label class="form-label">Item Description</label>
                <textarea class="form-input" name="itemDescription" id="itemDescription" rows="3" ></textarea>
                <label id="statusLabel-description"></label>
            </div>
            
            <div class="form-group">
                <label class="form-label">Brand Name</label>
                <input class="form-input" name="itemBrand" id="itemBrand" type="text" >
                <label id="brandNameLabel-status"></label>
            </div>
            
            <div class="form-group">
                <label class="form-label">Status</label>
                <select class="form-input" name="itemStatus" >
                    <option value="">Select Status</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                    <option value="Pending">Pending</option>
                </select>
            </div>

            <div class="form-group">
                <label class="form-label">Price ($)</label>
                <input class="form-input" id="price-input" name="itemPrice" type="number" step="0.1" min="0" max="1000" >
                <label id="price-status"></label>
            </div>
            
            <div class="form-group">
                <label class="form-label">Item Image</label>
                <div class="file-upload">
                    <label class="file-upload-label">
                        <i class="fas fa-cloud-upload-alt"></i> Choose File
                        <input type="file" name="image" accept="image/*" class="image-input">
                    </label>
                    <span class="file-name">No file chosen</span>
                </div>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-submit">
                    <i class="fas fa-plus"></i> Add Item
                </button>
                <a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp" class="btn btn-cancel">
                    <i class="fas fa-arrow-left"></i> Go Back
                </a>
            </div>
        </form>

        
    </main>

    
	<jsp:include page="/Admin/adminFooter.jsp" />

    
    <script src="<%= request.getContextPath() %>/shoppingCart/addItemsToCart.js"></script>
</body>
</html>