<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eventify - Online Event Planning System</title>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/Homepage/Homepage.css">

<link rel="stylesheet" href="<%= request.getContextPath() %>/Homepage/animation.css">

</head>

<body>
    <header class="header">
        <div class="logo-and-name">
            <p>Eventify</p>
        </div>
        <div class="links">
            <div class="signin"><a href="<%= request.getContextPath() %>/login/Login.jsp" id="signin-link">SIGN IN</a></div>
            <div class="signup"><a href="<%= request.getContextPath() %>/register/Register.jsp" id="signup-link">SIGN UP</a></div>
        </div>
    </header>

    <a href="<%= request.getContextPath() %>/AdminControl/AdminLogin.jsp"><button class="admin-btn">Admin</button></a>

    <section class="section1">
        <img src="Homepage/images/undraw_personal-goals_f9bb.svg" class="responsive-img" onerror="this.onerror=null; this.src='images/undraw_personal-goals_f9bb.svg';">
        <div class="section1-div1">
            <div class="text-container">
                <div class="title-div">
                    <h1>PLAN EVENTS</h1>
                    <h1>EFFORTLESSLY</h1>
                </div>
                <button class="text-container-button">Explore More</button>
            </div>
        </div>
        <div class="section1-div2">
            <div class="circle-container"></div>
            <img class="main-img" src="images/undraw_personal-goals_f9bb.svg" onerror="this.onerror=null; this.src='Homepage/images/undraw_personal-goals_f9bb.svg';">
        </div>
    </section>

    <section class="section2" id="section2">
        <h1>Explore Our Services</h1>
        <div class="section2-item-container">
            <div class="section2-item-container-div">
                <div class="iem1">
                    <center><img src="<%= request.getContextPath() %>/Homepage/images/undraw_projections_fhch.svg"></center> 
                    <h3>Event Scheduling</h3>
                    <p>Plan and organize events with customizable timelines.</p>
                   
                </div>
                <div class="iem2">
                    <center><img src="<%= request.getContextPath() %>/Homepage/image5.svg"></center> 
                    <h3>Vendor Management</h3>
                    <p>Connect with trusted vendors for every event need.</p>
                  
                </div>
                <div class="iem3">
                    <center><img src="<%= request.getContextPath() %>/Homepage/images6.svg"></center>
                    <h3>Guest Invitations</h3>
                    <p>Send custom invitations and track RSVP responses.</p>
                    
                </div>
            </div>
        </div>
    </section>

    <section class="section3">
        <div class="section3-text">
            <h2>Who Are We?</h2>
            <p>At Eventify, we empower you to create, plan, and manage memorable events effortlessly. From birthday parties to corporate conferences, our platform connects you with professional services and tools to handle scheduling, vendors, guest lists, and more.</p>
            
        </div>
        <div class="section3-img">
            <img src="<%= request.getContextPath() %>/Homepage/image2.png">
        </div>
    </section>

 
    

    <script src="<%= request.getContextPath() %>/Homepage/Homepage.js"></script>
    
</body>
</html>
