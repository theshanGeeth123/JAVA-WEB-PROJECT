<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- External CSS -->
    <link rel="stylesheet" href="footer.css">

    <style>
        body {
            line-height: 1.5;
            font-family: 'Poppins', sans-serif;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container {
            max-width: 1170px;
            margin: auto;
        }
        .row {
            display: flex;
            flex-wrap: wrap;
        }
        ul {
            list-style: none;
        }
        .footer {
            background-color: #000000;
            padding: 70px 0;
        }
        .footer-col {
            width: 25%;
            padding: 0 15px;
        }
        .footer-col h4 {
            font-size: 18px;
            color: #ffffff;
            text-transform: capitalize;
            margin-bottom: 35px;
            font-weight: 500;
            position: relative;
        }
        .footer-col h4::before {
            content: '';
            position: absolute;
            left: 0;
            bottom: -10px;
            background-color: #8d0034;
            height: 2px;
            box-sizing: border-box;
            width: 50px;
        }
        .footer-col ul li:not(:last-child) {
            margin-bottom: 10px;
        }
        .footer-col ul li a, .footer-col form button {
            font-size: 16px;
            text-transform: capitalize;
            color: #bbbbbb;
            text-decoration: none;
            font-weight: 300;
            display: block;
            background: none;
            border: none;
            padding: 0;
            text-align: left;
            width: 100%;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .footer-col ul li a:hover, .footer-col form button:hover {
            color: #ffffff;
            padding-left: 8px;
        }
        .footer-col .social-links a {
            display: inline-block;
            height: 40px;
            width: 40px;
            background-color: rgba(255, 255, 255, 0.2);
            margin: 0 10px 10px 0;
            text-align: center;
            line-height: 40px;
            border-radius: 50%;
            color: #ffffff;
            transition: all 0.5s ease;
        }
        .footer-col .social-links a:hover {
            color: #24262b;
            background-color: #ffffff;
        }
        @media (max-width: 767px) {
            .footer-col {
                width: 50%;
                margin-bottom: 30px;
            }
        }
        @media (max-width: 574px) {
            .footer-col {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <!-- Users Section -->
                <div class="footer-col">
                    <h4>Users</h4>
                    <ul>
                        <li>
                            <form method="post" action="<%= request.getContextPath() %>/getAllCustomers">
                                <button type="submit">Customer</button>
                            </form>
                        </li>
                        <li>
                            <form method="get" action="<%= request.getContextPath() %>/ReadPlnner">
                                <button type="submit">Event Planner</button>
                            </form>
                        </li>
                    </ul>
                </div>

                <!-- Items Section -->
                <div class="footer-col">
                    <h4>Items</h4>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/AdminControl/AddPackage.jsp">Add new Package</a></li>
                        <li>
                            <form method="post" action="<%= request.getContextPath() %>/adminAllPackages">
                                <button type="submit">All Packages</button>
                            </form>
                        </li>
                        <li>
                            <form method="post" action="<%= request.getContextPath() %>/AllShoppingCartItem">
                                <button type="submit">Cart Items</button>
                            </form>
                        </li>
                    </ul>
                </div>

                <!-- Navigation Section -->
                <div class="footer-col">
                    <h4>Go back</h4>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp">Home</a></li>
                        <li><a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp">Dashboard</a></li>
                    </ul>
                </div>

                <!-- Social Section -->
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
</body>
</html>
