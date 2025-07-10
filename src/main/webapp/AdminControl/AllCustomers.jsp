<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eventify - Customer Management</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/AdminControl/AllCustomers.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<header class="app-header">
    <div class="header-container">
        <div class="branding">
            <h1 class="app-name">Eventify</h1>
        </div>
        <nav class="main-nav">
            <a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp" class="nav-link">
                <i class="fas fa-home"></i> <span class="nav-text">Home</span>
            </a>
            <a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp" class="nav-link">
                <i class="fas fa-tachometer-alt"></i> <span class="nav-text">Dashboard</span>
            </a>
        </nav>
    </div>
</header>

<main class="admin-main-content">
    <div class="container">
        <h1 class="page-title">Customer Management</h1>
        
        <div class="table-responsive">
            <table class="customer-table">
                <thead>
                    <tr>
                        <th class="col-id">ID</th>
                        <th class="col-email">Email</th>
                        <th class="col-name">Name</th>
                        <th class="col-age">Age</th>
                        <th class="col-gender">Gender</th>
                        <th class="col-actions">Actions</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach var="cus" items="${customers}">
                    <tr class="customer-row">
                        <td class="col-id" data-label="ID">${cus.id}</td>
                        <td class="col-email" data-label="Email">${cus.email}</td>
                        <td class="col-name" data-label="Name">${cus.name}</td>
                        <td class="col-age" data-label="Age">${cus.age}</td>
                        <td class="col-age" data-label="Age">${cus.gender}</td>
                        <td class="col-actions" data-label="Actions">
                            <div class="action-buttons">
                            
                                <form method="post" action="UpdateCustomerByAdmin" class="inline-form">
                                    <input value="${cus.id}" type="hidden" name="id">
                                    <button type="submit" class="btn btn-edit">
                                        <i class="fas fa-edit"></i> <span class="btn-text">Edit</span>
                                    </button>
                                </form>
                                
                                <form method="post" action="DeleteCustomerByAdmin" class="inline-form" onsubmit="return confirm('Are you sure you want to delete this customer?');">
								    <input value="${cus.id}" type="hidden" name="id">
								    <button type="submit" class="btn btn-delete">
								        <i class="fas fa-trash-alt"></i> <span class="btn-text">Delete</span>
								    </button>
								</form>

                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</main>

<jsp:include page="/Admin/adminFooter.jsp" />


</body>
</html>