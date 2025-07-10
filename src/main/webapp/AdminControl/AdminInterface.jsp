<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*, Utils.DBConnect" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ page import="java.util.*, Model.Payment,Services.PaymentService" %>
    <%@ page import= "Model.Customer,Services.CustomerService" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Eventify</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/AdminControl/AdminDashboard.css">
    <link rel="stylesheet" href="index.css">
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
                    <a href="#" >
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
      				<form   class="form-new" method="post" action="<%= request.getContextPath() %>/getAllCustomers">
      				<button class="form-buttons" type="submit">
                    <a href="#" class="form-nav-link">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Customers</span>
                    </a>
                    </button>
					</form>
                </li>
                
	
               

                <li>
                
                <form class="form-new" method="post" action="<%= request.getContextPath() %>/adminAllPackages"><button type="submit" class="form-buttons">
                    <a href="#" class="form-nav-link" class="form-nav-link">
                        <span class="icon">
                           <ion-icon name="bag-handle-outline"></ion-icon>
                        </span>
                        <span class="title">Packages</span>
                    </a>
                    </button></form>
                </li>
                
                
				
                <li>
                <form class="form-new" method="post" action="<%= request.getContextPath() %>/AdminControl/AddPackage.jsp"><button class="form-buttons" type="submit">
                    <a href="" class="form-nav-link">
                        <span class="icon">
                            <ion-icon name="add-circle-outline"></ion-icon>
                        </span>
                        <span class="title">Add new Package</span>
                    </a>
                    </button></form>
                </li>

                <li>
                <form class="form-new" method="post" action="<%= request.getContextPath() %>/AllShoppingCartItem"><button class="form-buttons" type="submit">
                    <a href="#" class="form-nav-link">
                        <span class="icon">
                            <ion-icon name="cart-outline"></ion-icon>
                        </span>
                        <span class="title">Cart Items</span>
                    </a>
                    
                     </button></form>
                </li>
                
                
                <li>
                <form class="form-new" method="get" action="<%= request.getContextPath() %>/ReadPlnner"><button class="form-buttons" type="submit">
                    <a href="#" class="form-nav-link">
                        <span class="icon">
                            <ion-icon name="man-outline"></ion-icon>
                        </span>
                        <span class="title">Planner Details</span>
                    </a>
                    
                     </button></form>
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
                <div class="card">
                
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
                	           
                    <div>
                        <div class="numbers"><%= customerCount %></div>
                        <div class="cardName">Customer base</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="eye-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers"><%= packageCount %></div>
                        <div class="cardName">Packages</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="cart-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">284</div>  
                        <div class="cardName">Comments</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="chatbubbles-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">$<%= earnings %></div>
                        <div class="cardName">Earning</div>
                    </div>

                    <div class="iconBx">
                        <ion-icon name="cash-outline"></ion-icon>
                    </div>
                </div>
            </div>



            <div class="details">
                <div class="recentOrders">
                   <div class="cardHeader">
	    		<h2>Recent Orders</h2>
			    <form method="post" action="<%= request.getContextPath() %>/AllPayments">
			        <button type="submit" class="btn">View All</button>
			    </form>
			</div>
                    

<%

PaymentService service = new PaymentService();

ArrayList<Payment> paymentList = service.getAllPayments();

request.setAttribute("paymentList",paymentList);

%>

                    

                    <table>
                        <thead>
                             <tr>
						        <td>Payment ID</td>
						   
						        <td>Total</td>
						        <td>Estimated Tax</td>
						        <td>Date Time</td>
						    </tr>
                        </thead>

                        <tbody>
                        
                        	<c:forEach var="payment" items="${paymentList}">
                            <tr>
                                <td>${payment.paymentId}</td>
                                
                                <td>$${payment.total}</td>
                                <td>$${payment.tax}</td>
                                <td>${payment.getTimestamp()}</td>
                               
                            </tr>
                            
                              </c:forEach>
                         	
                        </tbody>
                    </table>
                </div>



                <div class="recentCustomers">
                    <div class="cardHeader">
                        <h2>Recent Customers</h2>
                    </div>

                    <table>
                    
                   
 <%
 
 CustomerService services = new CustomerService();
	
ArrayList<Customer> customerList = services.getAllCustomers();
	
request.setAttribute("customers",customerList);
 
 
 
 %>                   	 <c:forEach var="cus" items="${customers}">
                        <tr>
                        
                        
                            <td style="display: flex;padding-left: 45px;">
                                <h4>${cus.name}</h4>
                            </td>
                            
                             
                        </tr>
                        </c:forEach>
                        
                    </table>
                </div>
            </div>
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