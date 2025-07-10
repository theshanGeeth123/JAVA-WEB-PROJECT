<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Planner Registration</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            font-family: 'Roboto';
            box-sizing: border-box;
            transition: all 0.3s ease-in-out;
        }
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #001f3f, #003366);
            display: flex;
            justify-content: center;
            align-items: center; /* Align items at the top */
            height: 100%;
            margin: 0;
        }
        .header {
            height: 90px;
            width: 100%;
            background-color: black;
            display: flex;
            position: fixed;
            top: 0;
            color: aliceblue;
            z-index: 1000; /* Ensure the header stays on top */
        }
        .logo-and-name {
            height: 100%;
            width: 200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-left: 10%;
            border-bottom: 2px solid rgba(180, 174, 251, 0.684);
        }
        .logo-and-name img {
            height: 90%;
        }
        .logo-and-name p {
            font-size: 26px;
            font-weight: 400;
        }
        .links {
            height: 100%;
            flex: 1;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            font-size: 18px;
            border-bottom: 2px solid rgb(180, 174, 251);
            margin-right: 10%;
            color: aliceblue;
            gap:16px;
        }
        .links div a {
            text-decoration: none;
            color: aliceblue;
        }
        .links div a:hover {
            color: rgb(254, 255, 212);
        }
        .form-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 120px; /* Add space below the fixed header */

        }
        .form-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .form-group input[type="checkbox"] {
            width: auto;
        }
        .form-group .checkbox-group {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .form-group .checkbox-group label {
            font-weight: normal;
        }
        .form-group textarea {
            resize: vertical;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function validateExperience() {
            const experience = document.getElementById('experience').value;
            if (experience < 0) {
                alert('Years of Experience cannot be negative.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <header class="header">
        <div class="logo-and-name">
            <p>Eventify</p>
        </div>
        <div class="links">
            <div class="signin"><a href="<%= request.getContextPath() %>/Homepage/HomePage.jsp">HOME</a></div>
            <div class="signup"><a href="<%= request.getContextPath() %>/AdminControl/AdminInterface.jsp">DASHBOARD</a></div>
        </div>
    </header>
    <div class="form-container">
        <h2>Event Planner Registration</h2>
        <form action="<%= request.getContextPath() %>/RegPlanner" method="post" onsubmit="return validateExperience();">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="tel" id="contact" name="contact" placeholder="Enter your contact number" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <label for="company">Company Name (if applicable)</label>
                <input type="text" id="company" name="company" placeholder="Enter your company name">
            </div>
            <div class="form-group">
                <label>Event Types</label>
                <select id="eventTypes" name="eventTypes">
                    <option value="weddings">Weddings</option>
                    <option value="corporate">Corporate Events</option>
                    <option value="birthdays">Birthday Parties</option>
                    <option value="concerts">Concerts</option>
                </select>
            </div>
            <div class="form-group">
                <label for="location">Location/Area</label>
                <input type="text" id="location" name="location" placeholder="Enter your operating area">
            </div>
            <div class="form-group">
                <label for="experience">Years of Experience</label>
                <input type="number" id="experience" name="experience" placeholder="Enter your years of experience" required>
            </div>
            <div class="form-group">
                <label for="services">Services Offered</label>
                <textarea id="services" name="services" rows="4" placeholder="Describe the services you offer"></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
            <div class="form-group">
                <button type ="reset">Clear Form</button>
            </div>
        </form>
    </div>
    
    
</body>
</html>