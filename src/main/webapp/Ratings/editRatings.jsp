<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Ratings-Eventify</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Ratings/addRatings.css?v=1">
</head>
<body>

<jsp:include page="/User/userHeader.jsp" />
	
<script>
    function validateForm() {
        const email = document.getElementById("email").value.trim();
        const name = document.getElementById("name").value.trim();
        const rate = document.getElementById("rate").value;
        const comment = document.getElementById("comment").value.trim();
        const hotelEvent = document.getElementById("hotelevent").value.trim();

        if (!email || !name || !rate || !comment || !hotelEvent) {
            alert("All fields are required. Please fill out every field.");
            return false;
        }

        alert("Thank you for your valuable rating...");
        return true;
    }
</script>

	<div style="display: flex;justify-content: center;align-items: center;padding-top: 30px;padding-bottom: 30px;">
	<div class="wrapper" >
		<h1>Update Your Thought...</h1>
	
	<form method="post" action="<%= request.getContextPath() %>/editRatings" onsubmit="return validateForm();">
		
		<div class="inputs">
 			<input type="hidden" name="ratingID" value="${param.ratingID}" /> 	
		</div>
	
		<div class="inputs">
  			<input type="email" name="email" id="email" placeholder=" Email" value="${param.email}" readonly>
		</div>
	
		<div class="inputs">
  			<input type="text" name ="name" id="name"placeholder=" Name" value="${param.name }">
		</div>
		
		<div class="inputs1">
			<input type="range" class="rate" name="ratings" min="1" max="5" id="rate" placeholder=" Rate this.." value="${param.ratings }">
		</div>
		
		<div  class="inputs">
  			<input type="text" class="comment" id="comment" name="comm" placeholder=" Comments..." value="${param.comm }">
		</div>
		
		<div class="inputs">
  			<input type="text" name ="hotelevent" id="hotelevent" placeholder=" Hotel / Event Management team Name" value="${param.hotelevent }">
		</div>
		<div class="inputs1">
			<button type="submit" class="btnsubmit">Submit</button>
		</div>
	
	</form>
	</div>
	</div>
<jsp:include page="/User/UserFooter.jsp" />

</body>
</html>