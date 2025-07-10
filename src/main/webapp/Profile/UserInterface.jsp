<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ page import="java.util.*, Model.Payment,Services.PaymentService" %>
    <%@ page import= "Model.Customer,Services.CustomerService" %>
    
    <%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*, Utils.DBConnect" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard | Eventify</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Profile/userDashboard.css">
    <link rel="stylesheet" href="index2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <!-- Menu Toggle Button -->
    <div class="toggle" onclick="toggleMenu()">
        <ion-icon name="menu-outline"></ion-icon>
    </div>
    
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="title-head">Eventify</span>
                    </a>
                </li>

                <li>
                    <a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp" class="nav-link">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Home</span>
                    </a>
                </li>

                <li>
                    <a href="<%= request.getContextPath() %>/Profile/Profile.jsp" class="nav-link">
                        <span class="icon">
                            <ion-icon name="person-circle-outline"></ion-icon>
                        </span>
                        <span class="title">My Profile</span>
                    </a>
                </li>
                
                <li>
                    <form class="form-new" method="post" action="<%= request.getContextPath() %>/AllPackages">
                        <button class="form-buttons" type="submit" style="margin-left: 20px;">
                            <span class="icon">
                                <ion-icon name="shield-checkmark-outline"></ion-icon>
                            </span>
                            <span class="title">Purchase Package</span>
                        </button>
                    </form>
                </li>

                <li>
                    <form class="form-new" method="post" action="<%= request.getContextPath() %>/AllShoppingCartItemCustomer">
                        <button type="submit" class="form-buttons">
                            <span class="icon">
                                <ion-icon name="cart-outline"></ion-icon>
                            </span>
                            <span class="title">Shopping Cart</span>
                        </button>
                    </form>
                </li>
                
                <li>
                    <form class="form-new" method="post" action="<%= request.getContextPath() %>/SingleCustomerPaymentDetails">
                        <button class="form-buttons" type="submit">
                            <span class="icon">
                                <ion-icon name="card-outline"></ion-icon>
                            </span>
                            <span class="title">My Payments</span>
                        </button>
                    </form>
                </li>
                
                <li>
                    <form class="form-new" method="get" action="<%= request.getContextPath() %>/UservieRead">
                        <button type="submit" class="form-buttons">
                            <span class="icon">
                                <ion-icon name="man-outline"></ion-icon>
                            </span>
                            <span class="title">Event Planners</span>
                        </button>
                    </form>
                </li>

                <li>
                    <form class="form-new" method="post" action="<%= request.getContextPath() %>/ViewRatings">
                        <button type="submit" class="form-buttons">
                            <span class="icon">
                                <ion-icon name="cloud-upload-outline"></ion-icon>
                            </span>
                            <span class="title">Feedbacks</span>
                        </button>
                    </form>
                </li>

                <li>
                    <a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp" class="nav-link">
                        <span class="icon">
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="main">
            <div class="cardBox">
                <% 
                    int customerCount = 0;
                    try {
                        Connection con = DBConnect.getConnection();
                        String sql = "SELECT * FROM customer";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while(rs.next()) {
                            customerCount ++;
                        }
                        rs.close();
                        stmt.close();
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    
                    int packageCount = 0;
                    try {
                        Connection con = DBConnect.getConnection();
                        String sql = "SELECT * FROM package";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while(rs.next()) {
                            packageCount ++;
                        }
                        rs.close();
                        stmt.close();
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    
                    double earnings = 0;
                    try {
                        Connection con = DBConnect.getConnection();
                        String sql = "SELECT total FROM payment";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while (rs.next()) {
                            earnings += rs.getDouble("total"); 
                        }
                        rs.close();
                        stmt.close();
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>     
                           
                <div class="card">
                    <div class="card-info">
                        <div class="numbers"><%= customerCount %></div>
                        <div class="cardName">Customer base</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="eye-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div class="card-info">
                        <div class="numbers"><%= packageCount %></div>
                        <div class="cardName">Packages</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="cart-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div class="card-info">
                        <div class="numbers">284</div>  
                        <div class="cardName">Comments</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="chatbubbles-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div class="card-info">
                        <div class="numbers">$<%= earnings %></div>
                        <div class="cardName">Our Sales</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="cash-outline"></ion-icon>
                    </div>
                </div>
            </div>

            <section class="services-section">
                <h1>Explore Our Services</h1>
                <div class="services-container">
                    <div class="service-item">
                        <div class="service-image">
                            <img src="<%= request.getContextPath() %>/Homepage/images/undraw_projections_fhch.svg" alt="Event Scheduling"> 
                        </div>
                        <h3>Event Scheduling</h3>
                        <p>Plan and organize events with customizable timelines.</p>
                    </div>
                    <div class="service-item">
                        <div class="service-image">
                            <img src="<%= request.getContextPath() %>/Homepage/image5.svg" alt="Vendor Management"> 
                        </div>
                        <h3>Vendor Management</h3>
                        <p>Connect with trusted vendors for every event need.</p>
                    </div>
                    <div class="service-item">
                        <div class="service-image">
                            <img src="<%= request.getContextPath() %>/Homepage/images6.svg" alt="Guest Invitations">
                        </div>
                        <h3>Guest Invitations</h3>
                        <p>Send custom invitations and track RSVP responses.</p>
                    </div>
                </div>
            </section>
            
            <footer class="footer">
                <div class="footer-container">
                    <div class="footer-row">
                        <div class="footer-col">
                            <h4>My Details</h4>
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/Profile/Profile.jsp">My Profile</a></li>
                                <li>
                                    <form method="post" action="<%= request.getContextPath() %>/SingleCustomerPaymentDetails">
                                        <button type="submit" class="footer-btn">My Payments</button>
                                    </form>
                                </li>                      
                            </ul>
                        </div>

                        <div class="footer-col">
                            <h4>Services</h4>
                            <ul>
                                <li>
                                    <form method="post" action="<%= request.getContextPath() %>/AllPackages">
                                        <button type="submit" class="footer-btn">Packages</button>
                                    </form>
                                </li>
                                <li>
                                    <form method="post" action="<%= request.getContextPath() %>/AllShoppingCartItemCustomer">
                                        <button type="submit" class="footer-btn">Items</button>
                                    </form>
                                </li>
                                <li>
                                    <form method="get" action="<%= request.getContextPath() %>/UservieRead">
                                        <button type="submit" class="footer-btn">Event Planners</button>
                                    </form>
                                </li>
                                <li>
                                    <form method="post" action="<%= request.getContextPath() %>/ViewRatings">
                                        <button type="submit" class="footer-btn">Feedbacks</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="footer-col">
                            <h4>Go back</h4>
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp">Home</a></li>
                                <li><a href="<%= request.getContextPath() %>/Profile/UserInterface.jsp">Dashboard</a></li>
                            </ul>
                        </div>
                        
                        <div class="footer-col">
                            <h4>follow us</h4>
                            <div class="social-links">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    
    <script>
        // Toggle menu function
        function toggleMenu() {
            let navigation = document.querySelector('.navigation');
            let main = document.querySelector('.main');
            navigation.classList.toggle('active');
            main.classList.toggle('active');
        }
        
        // Add active class on menu item click
        let list = document.querySelectorAll('.navigation li');
        function activeLink() {
            list.forEach((item) => 
                item.classList.remove('hovered'));
            this.classList.add('hovered');
        }
        list.forEach((item) => 
            item.addEventListener('mouseover', activeLink));
    </script>
</body>
</html>