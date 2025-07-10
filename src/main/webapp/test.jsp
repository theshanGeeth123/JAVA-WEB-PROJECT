<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/test.css">
</head>
<body>

	<header class="header">

        <div class="logo-and-name">
            <img src="images/images1.svg">
            <p>EventCraft </p>
        </div>

        <div class="links">
            <div class="signin"><a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp">HOME</a></div>
            <div class="signup"><a href="<%= request.getContextPath() %>/Profile/UserInterface.jsp">My Dashboard</a></div>
            
        </div>

    </header>

	<center><h1 class="title">Shopping cart</h1></center>


	<div class="sections-container">

	<section class="section1">
	
	<form method="post" action="<%= request.getContextPath() %>/Payment/addNewpayment.jsp">

		<div class="inputs-labels-container">
         <div class="input-div">Total Amount : <input  name="price" id="totalAmount"></div>
         <div class="input-div">Item Count : <input id="itemCount" ></div>
         <div class="input-div">Tax Value(10%) : <input id="tax"></div>
         
         <center><button type="submit" class="section1-div1-item-button">Get Now</button></center>

		</div>

	</form>

	</section>

	
	<section class="section2">
	
	
		<c:forEach var="item" items="${itemList}">
	
		<div class="cart-item">
			
			
			<input value="${item.itemId}" type="hidden">
			
			
			<h2>${item.itemName}</h2>
			
			<p>${item.itemDescription}</p>
			
			<h4>${item.brandName}</h4>
			
			<h4>${item.status}</h4>
			
			
		
			
			
			<img src="<%= request.getContextPath() %>/cartItemImages/${item.imageUrl}" style="width: 200px; height: auto;" >

			<h2 class="item-price">${item.itemPrice}</h2>
			
			<div>
			
			<button class="add-to-cart" onclick="calculateTotal(${item.itemPrice});func()">Add to cart</button>
			
			</div>
			
		</div>
		
		</c:forEach>
		

		
	

	
	</section>

	</div>
	
	<button id="Reload-btn">Click to Reload</button>



</body>

</html>