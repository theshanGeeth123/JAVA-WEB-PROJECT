<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/AdminControl/AdminLogin.css">

</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <form method="post" action="../AdminLogin">
            <div class="form-group">
                <input type="email" name="email" id="email" placeholder=" " required>
                <label for="email">Email</label>
            </div>
            
            <div class="form-group">
                <input type="password" name="password" id="password" placeholder=" " required>
                <label for="password">Password</label>
            </div>
            
            <button type="submit">Login Admin</button>
        </form>
    </div>
</body>
</html>