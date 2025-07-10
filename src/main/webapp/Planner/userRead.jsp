<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Planner Database</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #d9ebff;
        }
        button {
            background-color:blue;
            color: white;
            border: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            font-size: 16px;
            text-decoration:none;

        }
        button:hover {
            background-color: #cc0000;
        }
        .button-container {
            margin-bottom: 10px;
            display: flex;
            justify-content: flex-start;
            float: right;
            text-decoration:none;
        }
        .button-container i {
            font-size: 18px;
        }
    </style>
</head>
<body>

	<jsp:include page="/User/userHeader.jsp" />
	
    <form action="<%= request.getContextPath() %>/SearchPlanner" method="get">
    	<input type="text" name="searchitem" placeholder="Search Event Type" ><br>
    	<button>Search</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Company Name</th>
                <th>Event Type</th>
                <th>Location</th>
                <th>Experience (Years)</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="allplan" items="${allPlaner}" >
            <tr>
            	<td>${allplan.name}</td>
            	<td>${allplan.contact}</td>
            	<td>${allplan.mail}</td>
            	<td>${allplan.cName}</td>
            	<td>${allplan.eventType}</td>
            	<td>${allplan.locate}</td>
            	<td>${allplan.experience}</td>
            	<td>${allplan.descrip}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <jsp:include page="/User/UserFooter.jsp" />
    
</body>
</html>