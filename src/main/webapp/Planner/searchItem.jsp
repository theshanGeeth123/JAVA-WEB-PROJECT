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
            background-color: Blue;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 5px;
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

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Event Type</th>
                <th>Location</th>
                <th>Experience (Years)</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="allPlaner" items="${allT}" >
            <tr>
            	<td>${allPlaner.name}</td>
            	<td>${allPlaner.contact}</td>
            	<td>${allPlaner.mail}</td>
            	<td>${allPlaner.eventType}</td>
            	<td>${allPlaner.locate}</td>
            	<td>${allPlaner.experience}</td>
            	<td>${allPlaner.descrip}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="UservieRead"><button>Back</button></a>
</body>
</html>