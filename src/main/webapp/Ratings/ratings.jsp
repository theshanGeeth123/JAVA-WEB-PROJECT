<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<meta charset="UTF-8">
<title>Add Rating-Eventify</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Ratings/addRatings.css">
</head>

<body>

<jsp:include page="/User/userHeader.jsp" />

<script>
    function validateForm() {
        const email = document.getElementById("mail").value.trim();
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

	<div style="display: flex;justify-content: center;align-items: center;margin-top: 20px;
	margin-bottom: 20px;">
	<div class="wrapper">
	
	<h1>Rate Your Experience</h1>
	
	<form method="post" action="../addRatings" onsubmit="return validateForm();">
		<div class="inputs">
  			<input type="email" placeholder=" Email" name ="mail" id="mail">

		</div>
	
		<div class="inputs">
  			<input type="text" placeholder=" Name" name ="name" id="name">
  			
		</div>
		
		<div class="inputs1">
  			
			<input type="range" class="rate" placeholder="Rate this..." name="ratings" min="1" max="5" id="rate">
		</div>
		
		<div class="inputs">
  			<input type="text" class="comment" placeholder="Leave a comment here" id="comment" name="comm">
  			
		</div>
		
		<div class="inputs">
  			<input type="text" placeholder=" Hotel / Event Management team Name" name ="hotelevent" id="hotelevent">
		</div>
		<div class="inputs1">
			<button type="submit" class="btnsubmit">Submit</button>
		</div>
	</form>
	</div>
	
	</div>
	
</body>

<jsp:include page="/User/UserFooter.jsp" />
</html>