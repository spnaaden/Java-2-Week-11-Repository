<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event Creation Page</title>
</head>

<body>
	<h2>Event Creation Form</h2>
	
	<h3>Use the Form Below to Create a New Event!</h3>
	
	<mvc:form modelAttribute="event" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="eventName">Event Name:</mvc:label></td>
	        <td><mvc:input path="eventName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="eventDescription">Event Description:</mvc:label></td>
	        <td><mvc:textarea path="eventDescription" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="eventDate">Event Date:</mvc:label></td>
	        <td><mvc:input path="eventDate" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="eventDuringDaytime">Is it a Daytime Event:</mvc:label></td>
	        <td><mvc:checkbox path="eventDuringDaytime" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="eventStartTime">Event Start Time:</mvc:label></td>
	        <td><mvc:input path="eventStartTime" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="eventLastingHours">Event Hour Length:</mvc:label></td>
            <td><mvc:select path="eventLastingHours" items="${hours}" /></td>
        </tr>
        <tr>
	        <td><mvc:label path="eventAddress">Event Address:</mvc:label></td>
	        <td><mvc:input path="eventAddress" />
	        	</td>
	    </tr>
            <tr>
            <td><mvc:label path="eventCity">Event City:</mvc:label></td>
            <td><mvc:input path="eventCity"/></td>
        </tr>
        <tr>
            <td><mvc:label path="eventState">Event State:</mvc:label></td>
            <td><mvc:select path="eventState" items="${states}" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Create Event" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View Your Schedule</a>
	
	
</body>
</html>