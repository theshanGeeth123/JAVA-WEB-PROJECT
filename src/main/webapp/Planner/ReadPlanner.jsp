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
    
    	.content{
    		display: grid;
  			place-items: center;
  			padding-top: 2vh;
  			padding-bottom: 2vh;
    	}
    	a{
    		text-decoration: none;
    	}
    	.add-new{
    		margin-top: 5vh;
    		border: solid 2px black;
    		border-radius: 5px;
    		color: black;
    		background-color: white;
    		padding: 10px 15px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 16px;
            text-decoration: none;
            font-weight: bold;
    	}
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15vh;
/*            border: none		*/
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
            place-items: center;
/*            border: none		*/
            
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

       .update{
        	background-color: white;
        	color: black;
        	font-weight: bold;
        	border-radius: 5px;
        	padding: 5px;
        	margin-bottom: 5px;
        	border: solid 2px black;
        }
        .update:hover{
        	transform: scale(1.1);
        	color: white;
        	background-color: blue;
        	border: none;
        }
        .delete{
        	background-color: white;
        	color: black;
        	font-weight: bold;
        	border-radius: 5px;
        	padding: 5px;
        	border: solid 2px black;
        }
        .delete:hover{
        	transform: scale(1.1);
        	color: white;
        	background-color: red;
        	border: none;
        }		
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #d9ebff;
        }
        .add-new:hover {
            background-color: green;
            color: white;
            transform: scale(1.1); 
            border-radius: 8px;
            border: none;
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
	
	<jsp:include page="/Admin/adminHeader.jsp" />
<div class="content">
    <div >
        <a href="<%= request.getContextPath() %>/Planner/Regform.jsp"><button class="add-new">
            <i>&#43;</i> 
            Adding New Planner
        </button></a>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Plan ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Company Name</th>
                <th>Event Type</th>
                <th>Location</th>
                <th>Experience (Years)</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="allplan" items="${allPlaner}" >
            <tr>
            	<td>${allplan.planid}</td>
            	<td>${allplan.name}</td>
            	<td>${allplan.contact}</td>
            	<td>${allplan.mail}</td>
            	<td>${allplan.cName}</td>
            	<td>${allplan.eventType}</td>
            	<td>${allplan.locate}</td>
            	<td>${allplan.experience}</td>
            	<td>${allplan.descrip}</td>
            	<td colspan="2">
            	<form action="<%= request.getContextPath() %>/Planner/UpdateUI.jsp" method="post">
            		<input type="hidden" name="planid" value="${allplan.planid}">
            		<input type="hidden" name="name" value="${allplan.name}">
            		<input type="hidden" name="contact" value="${allplan.contact}">
            		<input type="hidden" name="mail" value="${allplan.mail}">
            		<input type="hidden" name="cName" value="${allplan.cName}">
            		<input type="hidden" name="eventTypes" value="${allplan.eventType}">
            		<input type="hidden" name="locate" value="${allplan.locate}">
            		<input type="hidden" name="experience" value="${allplan.experience}">
            		<input type="hidden" name="descrip" value="${allplan.descrip}">
            	<input type="submit" class="update" value="Update">
            	</form>
            	<form action="DeletePlanner" method="post" onsubmit="return confirm('Are you sure about you want to delete this Planner?');">
            	<input type="hidden" name="planid" value="${allplan.planid}">
            	<input type="submit" class="delete" value="Delete">
            	</form>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    <jsp:include page="/Admin/adminFooter.jsp" />
</body>
</html>