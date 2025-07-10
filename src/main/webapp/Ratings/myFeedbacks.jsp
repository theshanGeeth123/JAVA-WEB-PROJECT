<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Feedbacks-Eventify</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Ratings/ratings.css">



</head>
<body>


<jsp:include page="/User/userHeader.jsp" />

	<h2 class="myFedName">Your Feedbacks...</h2>
<c:set var ="rate" value="" />
<!--  	<table class="table" border="1">
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

<c:forEach var="myRate" items="${mRatings}"> 
    <tr style="height:10px;">
        <td>${myRate.hotelevent}</td>
        <td>${myRate.name}</td>     
        <td>${myRate.email}</td>  
        <td>${myRate.ratings}</td>  
        <td>${myRate.comm}</td> 
    </tr>
</c:forEach>

  </tbody>
</table>
-->


<div class="display2">
<c:forEach var="myRate" items="${mRatings}"> 
    <div class="feed">
        <div class="items"><h4>${myRate.hotelevent}</h4></div>
        <div class="items"><h6>Name: ${myRate.name}</h6></div>  
        <div class="items"><h6>Email: ${myRate.email}</h6></div>
        <div class="items"><h6>Ratings: ${myRate.ratings}</h6></div>
        <div class="items"><h6>Comment: ${myRate.comm}</h6></div>
        
        
        <form action="Ratings/editRatings.jsp" method="post">
        	<input type="hidden" name="ratingID" value="${myRate.ratingID}">
        	<input type="hidden" name="hotelevent" value="${myRate.hotelevent}">
        	<input type="hidden" name="name" value="${myRate.name}">
        	<input type="hidden" name="email" value="${myRate.email}">
        	<input type="hidden" name="ratings" value="${myRate.ratings}">
        	<input type="hidden" name="comm" value="${myRate.comm}">
        	
        	<input type="submit" value="Update"  class="btn upd">
        </form>
        
        
              
        <form action="deleteRatings" method="post" onsubmit="return confirm('Are you sure about you want to delete this Rating?');"> <!-- onsubmit	is an html event and triggered when a form is submitted-w3Schools -->
    		<input type="hidden" name="ratingID" value="${myRate.ratingID}">
    		<button type="submit" class="btn del">Delete</button>
		</form>
        
        
    </div>
</c:forEach>

</div>
	
<jsp:include page="/User/UserFooter.jsp" />

</body>
</html>