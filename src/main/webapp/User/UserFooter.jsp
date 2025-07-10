<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
    
 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
body{
	line-height: 1.5;
	font-family: 'Poppins', sans-serif;
}
*{
	margin:0;
	padding:0;
	box-sizing: border-box;
}


.container{
	max-width: 1170px;
	margin:auto;
}
.row{
	display: flex;
	flex-wrap: wrap;
}
ul{
	list-style: none;
}
.footer{
	background-color: #000000;
    padding: 70px 0;
}
.footer-col{
   width: 25%;
   padding: 0 15px;
}
.footer-col h4{
	font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
}
.footer-col h4::before{
	content: '';
	position: absolute;
	left:0;
	bottom: -10px;
	background-color: #8d0034;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}
.footer-col ul li:not(:last-child){
	margin-bottom: 10px;
}
.footer-col ul li a{
	font-size: 16px;
	text-transform: capitalize;
	color: #ffffff;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}
.footer-col ul li a:hover{
	color: #ffffff;
	padding-left: 8px;
}
.footer-col .social-links a{
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255,255,255,0.2);
	margin:0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
	color: #24262b;
	background-color: #ffffff;
}

/*responsive*/
@media(max-width: 767px){
  .footer-col{
    width: 50%;
    margin-bottom: 30px;
}
}
@media(max-width: 574px){
  .footer-col{
    width: 100%;
}
}   
    
    form button:hover{
    cursor: pointer;
    
    }
    
    </style>
</head>
<body>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>My Details</h4>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/Profile/Profile.jsp">My Profile</a></li>
                        <form method="post" action="<%= request.getContextPath() %>/SingleCustomerPaymentDetails"><button type="submit" style="background-color: black; border: none;margin-bottom: 10px;"><li><a>My Payments</a></li></button></form>                      
                    </ul>
                </div>

                <div class="footer-col">
                    <h4>Services</h4>
                    <ul>
                                           
                        <form method="post" action="<%= request.getContextPath() %>/AllPackages"><button type="submit" style="background-color: black; border: none;margin-bottom: 10px;"><li><a>Packages</a></li></button></form>
                        <form method="post" action="<%= request.getContextPath() %>/AllShoppingCartItemCustomer"><button type="submit" style="background-color: black; border: none;margin-bottom: 10px;"><li><a>Items</a></li></button></form>
                        <form method="get" action="<%= request.getContextPath() %>/UservieRead"><button type="submit" style="background-color: black; border: none;margin-bottom: 10px;"><li><a>Event Planners</a></li></button></form>
                        <form method="post" action="<%= request.getContextPath() %>/ViewRatings"><button type="submit" style="background-color: black; border: none;margin-bottom: 10px;"><li><a>Feedbacks</a></li></button></form>
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
</body>
</html>