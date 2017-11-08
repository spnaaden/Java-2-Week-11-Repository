<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event Creation Result Page</title>
</head>
<body>
> <h2>Event Created!</h2>

  <h3>View Your New Event Information Below</h3>
    <table>
        <tr>
            <td>Event Name:</td>
            <td>${e.eventName}</td>
        </tr>
        <tr>
            <td>Event Description:</td>
            <td>${e.eventDescription}</td>
        </tr>
        <tr>
            <td>Event Date</td>
            <td>${e.eventDate}</td>
        </tr>
        <tr>
            <td>Is it a Daytime Event:</td>
            <td>${e.eventDuringDaytime}</td>
        </tr>
        <tr>
            <td>Event Start Time:</td>
            <td>${e.eventStartTime}</td>
        </tr>
        <tr>
            <td>Event Hour Length:</td>
            <td>${e.eventLastingHours}</td>
        </tr>
        <tr>
            <td>Event Address:</td>
            <td>${e.eventAddress}</td>
        </tr>
        <tr>
            <td>Event City:</td>
            <td>${e.eventCity}</td>
        </tr>
        <tr>
            <td>Event State:</td>
            <td>${e.eventState}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Events</a>
<br />
<a href="form.mvc">Add another Event to your Schedule</a>
</body>
</html>