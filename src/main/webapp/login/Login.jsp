<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="login.css">
    <script src="https://kit.fontawesome.com/02018abdbc.js" crossorigin="anonymous"></script>
</head>
<body>

    <a href="../Homepage/HomePage.jsp"><button class="Home-button">Home</button></a>
    
    
    <section>
        <div class="div1">
            <div class="container">
            </div>

            <div class="sign-up-text">
                <h2>New here ?</h2>
                <p>Join with us to start new journey</p>
                

                <a href="../register/Register.jsp">
                    <button>SIGN UP</button>
                </a>
            </div>

            <img src="log.svg">
        </div>

        <div class="div2">    

            <form method="post" action="../Login">

                <h1>Sign in</h1>

                <input placeholder="Email" class="input" type="text" name="email">
                <input placeholder="Password" class="input" type="password" name="password">

                <input type="submit" value="login" class="signin-btn">

                <P>Or Sign in with social platforms</P>

                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-linkedin"></i>
                    </a>
                </div>

            </form>

        </div>
    </section>
    

</body>
</html>