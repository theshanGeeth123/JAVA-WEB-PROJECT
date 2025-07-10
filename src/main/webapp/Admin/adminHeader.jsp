<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>


@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap');

/* Header start */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    transition: all 0.3s ease-in-out; 
}

body {
    font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
    line-height: 1.6;
    color: #212529;
    background-color: #f5f7fa;
    margin: 0;
    padding: 0;
}

/* ===== Header Styles ===== */
.app-header {
    background-color: #000000;
    color: #ffffff;
    padding: 1rem 0;
    box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.header-container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.branding {
    display: flex;
    align-items: center;
    gap: 0.75rem;
}

.logo-icon {
    font-size: 1.75rem;
}

.app-name {
    font-size: 1.5rem;
    font-weight: 600;
}

.main-nav {
    display: flex;
    gap: 1.5rem;
}

.nav-link {
    color: #ffffff;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 1rem;
    border-radius: 0.375rem;
    transition: all 0.3s ease;
}

.nav-link:hover {
    background-color: rgba(255, 255, 255, 0.15);
}

/* Header end */

</style>

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
                <a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </a>
            </nav>
        </div>
    </header>
</body>
</html>