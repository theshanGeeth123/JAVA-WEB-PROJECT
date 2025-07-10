<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedbacks-Eventify</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Ratings/ratings.css">
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
<div class="rate-cont">
	<h1 class="allFedName">Share Your Experience!</h1>

	<div class="all">
	<form action="<%= request.getContextPath() %>/Ratings/ratings.jsp">
		<button class="btn-add" type="submit">Add Feedbacks</button>
	</form>
	
	<form action="<%= request.getContextPath() %>/viewMyRatings" method="post"  class="btn-myfeed">
		<button type="submit">My feedbacks</button>
	</form>
	</div>
<!-- 
	<table class="table" border="1">
  <thead>
    <tr>
      <th scope="col">Hotel / Event-Management-team Name</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Ratings</th>
      <th scope="col">Comment</th>
    </tr>
  </thead>
  <tbody>

   		<c:forEach var="vRate" items="${review}"> 
    <tr style="height:10px;"> 
        <td>${vRate.hotelevent}</td>
        <td>${vRate.name}</td>     
        <td>${vRate.email}</td>
        <td>${vRate.ratings}</td>  
        <td>${vRate.comm}</td>  
    </tr>
</c:forEach>

  </tbody>
</table>
 -->
<div class="display1">
<c:forEach var="vRate" items="${review}"> 
    <div class="allfeed">
        <div class="items"><h4>${vRate.hotelevent}</h4></div>
        <div class="items"><h6>Name: ${vRate.name}</h6></div>  
        <div class="items"><h6>Email: ${vRate.email}</h6></div>
        <div class="items"><h6>Ratings: ${vRate.ratings}</h6></div>
        <div class="items"><h6>Comment: ${vRate.comm}</h6></div>
    </div>
</c:forEach>

</div>
</div>	
<jsp:include page="/User/UserFooter.jsp" />
	
</body>
</html>