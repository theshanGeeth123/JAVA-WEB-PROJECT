<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/register/register.css">
    <script src="https://kit.fontawesome.com/02018abdbc.js" crossorigin="anonymous"></script>
</head>
<body>

    <a href="../Homepage/HomePage.jsp"><button class="Home-button">Home</button></a>
    

    <section class="section">

        <div class="form-container">

            <div class="form-elements-container">

                

                <div class="sign-up-bar">
                    <div class="sign-up-text">
                        Already have an acount . <a href="../login/Login.jsp"><span>CLICK NOW</span></a>
                    </div>
                    <a href="../login/login.html" class="sign-in-text-ancor"><div class="sign-in-text">SIGNIN NOW</div></a>
                    <a class="images-ancor-tag" href="../login/login.html"><img src="manager.png"></a>
                </div>


                <div class="form">
                
                    <form method="post" action="../AddCustomer">
    
                        <h1>Sign up</h1>

                        <input placeholder="Email" class="form-input" name="email" > 
                        <div id="email-status"></div>
                        <input placeholder="Name" class="form-input" name="name"> 
                        <div id="name-status"></div>

                        <select class="select-age" name="age"></select> 
                        <div id="age-status"></div>
                        
                        <select class="select-gender" name="gender">
				            <option value="" disabled selected>Select Gender</option>
				            <option value="Male">Male</option>
				            <option value="Female">Female</option>
				        </select>

                        <input placeholder="Password" class="form-input" name="password">  
                        <div id="password-status"></div>

                        <div class="checkbox-container">

                            <input type="checkbox">
                            <label>Check me out</label>
                        </div>

                        <button class="signup-button" type="submit" disabled>SIGNUP</button>
    
                    </form>
                </div>



            </div>


            

        </div>


        <div class="image-container">
            <div class="circle-container">
                
            </div>
            <img src="register.svg">
        </div>

    </section>

</body>

<script src="<%= request.getContextPath() %>/register/script.js"></script>

</html>