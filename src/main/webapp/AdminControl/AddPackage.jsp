<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/AdminControl/AddPackage.css">
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

    <h2 class="title">Add New Packages</h2>

    <div class="container">

        <div class="section1">
            <div class="paragraph-div">
            <p>Welcome to Eventify's Package Management page! Here, you can effortlessly add new event packages tailored
                to your customers' needs. Simply provide the package name, a brief description, the number of guests,
                and the package price to create a customized event package. This ensures a seamless experience for both
                organizers and attendees. If you change your mind, you can cancel the process and return to the admin
                dashboard. Make event planning easy with Eventify!</p>
            </div>
            <div>
                <img src="<%= request.getContextPath() %>/AdminPackageControl/images/image1.svg" class="section1-img">
            </div>
        </div>

        <div class="section2">

            <form method="post" action="../AddPackage" class="form" id="form">

                <label class="form-labels">Package Name :</label>
                <input class="name" name="name" id="name" type="text" >
                <label id="name-status"></label>

                <label class="form-labels">Package Description :</label>
                <textarea name="description" id="description" class="description" rows="4" cols="50" ></textarea>
                <label id="description-status"></label>

                <label class="form-labels">Number of Guests :</label>
                <input name="noOfGuests" id="noOfGuests" type="number" class="noOfGuests" >
                <label id="noOfGuests-status"></label>

                <label class="form-labels">Package Price :</label>
                <input name="price" id="price" type="number" class="price" >
                <label id="price-status"></label>
                
                 <label class="form-labels">Location :</label>
                <input name="location" id="location" type="text" class="location" >
                <label id="location-status"></label>
                

                <button type="submit" class="add-new-pkg-btn">Add New Package</button>
                <button class="cancel-btn"><a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp">Cancel the
                        Package</a></button>


            </form>

        </div>

    </div>
    
    

    <script src="<%= request.getContextPath() %>/AdminControl/AddPackage.js"></script>
    

</body>


</html>