<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/shoppingCart/shoppingCartCustomer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  
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

    <center>
        <h1 class="title">Select Your Items</h1>
    </center>


    <div class="sections-container">

        


        <section class="section1">


            <c:forEach var="item" items="${itemList}">

                <div class="cart-item">


                    <input value="${item.itemId}" type="hidden">


                    <div style="width: 100%; height: 70px;text-align: center;"><h2 class="class-item-name">${item.itemName}</h2></div>    

                    <div style="width: 100%;height: 120px;overflow: hidden;"><p class="class-item-description">${item.itemDescription}</p>
                    </div>

                    <div style="width: 100%;height: 30px;"><h4 class="class-item-brand">${item.brandName}</h4></div>

                    <div style="width: 100%;height: 30px;margin-bottom: 10px;"><h4 class="class-item-status" >${item.status}</h4></div>





                    <img class="class-item-img" src="<%= request.getContextPath() %>/cartItemImages/${item.imageUrl}">

                    <h2 class="class-item-price">$${item.itemPrice}</h2>

                    <div style="margin-top: 20px;width: 100%;">
                        <c:choose>
                            <c:when test="${item.status == 'Active'}">
                                <button class="add-to-cart" onclick="calculateTotal(${item.itemPrice});func()">Add to cart</button>
                            </c:when>
                            <c:otherwise>
                                <button class="add-to-cart" disabled style="cursor: not-allowed;">Unavailable</button>
                            </c:otherwise>
                        </c:choose>
                    </div>

                </div>

            </c:forEach>


        </section>

        <section class="section2">

            <form method="post" action="<%= request.getContextPath() %>/Payment/addNewpayment.jsp">

                <div class="inputs-labels-container">
                    <div class="input-div">Total Amount($) : <input name="price" id="totalAmount" readonly value=0></div>
                    <div class="input-div">Item Count : <input id="itemCount" readonly value=0></div>
                    <div class="input-div">Tax Value(10%)($) : <input id="tax" readonly value=0></div>

                    <button type="submit" class="section1-div1-item-button" disabled style="cursor: not-allowed; opacity: 0.6;">Get Now</button>

                    <button type="reset" class="section2-reset-button">Reset</button>

                </div>

            </form>

        </section>

    </div>
    

    <script src="<%= request.getContextPath() %>/shoppingCart/shoppingCartCustomer.js"></script>
 
 	<jsp:include page="/User/UserFooter.jsp" />

</body>

</html>