<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/AdminPackageControl/AdminPackagesInterface.css">
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

	<h2 class="title">Change The Details</h2>

    <section class="section1">
        

        <div class="section1-div1">
        
        <c:forEach var="pack" items="${packages}" varStatus="loop">
        
            <div class="section1-div1-item">

                
                <img src="<%= request.getContextPath() %>/Packages/images/image${loop.index + 2}.svg">

                <div class="section1-div1-item-name">${pack.name}</div>

                <div class="section1-div1-item-paragraph">${pack.description}</div>
                
                <div class="section1-div1-item-price">No Of Guests = ${pack.noOfGuests}</div>

                <div class="section1-div1-item-price">$${pack.price}</div>
                
                  <div class="section1-div1-item-price">${pack.location}</div>

                <div class="section1-div1-item-button-container">
                
                	<form class="section1-button1-form"  method="post" action="<%= request.getContextPath() %>/SinglePackage">
                		
                		<input type="hidden" value="${pack.id}" name="package-id">
                		
                    	<button type="submit" class="section1-button1">Edit</button>
                    	
                   	</form>
                   	
                   	
                   	<form class="section1-button1-form" method="post" action="<%= request.getContextPath() %>/DeleteSinglePackage"
					      onsubmit="return confirm('Are you sure you want to delete this package?');">
					    <input type="hidden" value="${pack.id}" name="package-id">
					    <button style="background-color:red" type="submit" class="section1-button1">Delete</button>
					</form>

                    
                </div>

            </div>
            
            </c:forEach>

            
        </div>

    </section>
</body>
</html>