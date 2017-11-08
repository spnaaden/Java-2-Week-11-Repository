<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule Page</title>
</head>
<body>
	<h2>Schedule Page</h2>
	
	<h3>View Your Personal Schedule Below:</h3>
	
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Event Number:</td>
				<td>${item.eventid}</td>
			</tr>
			<tr>
				<td>Event Name:</td>
				<td>${item.eventName}</td>
			</tr>
			<tr>
				<td>Event Description:</td>
				<td>${item.eventDescription}</td>
			</tr>
			<tr>
				<td>Event Date:</td>
				<td>${item.eventDate}</td>
			</tr>
			<tr>
				<td>Is it a Daytime Event:</td>
				<td>${item.eventDuringDaytime}</td>
			</tr>
			<tr>
				<td>Event Start Time:</td>
				<td>${item.eventStartTime}</td>
			</tr>
			<tr>
				<td>Event Hour Length:</td>
				<td>${item.eventLastingHours}</td>
			</tr>
			<tr>
				<td>Event Address:</td>
				<td>${item.eventAddress}</td>
			</tr>
			<tr>
				<td>Event State:</td>
				<td>${item.eventState}</td>
			</tr>
			

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add an Event to your Schedule</a>
</body>
</html>