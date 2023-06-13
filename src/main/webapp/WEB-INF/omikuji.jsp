<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Omikuji Form</title>
    <style>
    	h1{
    	text-align:center
    	}
        .dorm {
            width: 200px;
            color: black;
            text-align: center;
            padding: 20px;
            margin: 20px auto;
            border: solid black 2px;
        }
    </style>
</head>
<body>
    <h1>Send an Omikuji!</h1>
<form action="/omikuji/process" method="post" class="dorm">
    <label for="number">Pick a number from 5 to 25:</label>
    <input type="number" id="number" name="number" min="5" max="25" required>
    <br>
    <br>
    <label for="city">Enter the name of any city:</label>
    <input type="text" id="city" name="city" required>
    <br>
     <br>
    <label for="person">Enter the name of any real person:</label>
    <input type="text" id="person" name="person" required>
    <br>
     <br>
    <label for="endeavor">Enter professional endeavor or hobby:</label>
    <input type="text" id="endeavor" name="endeavor" required>
    <br>
     <br>
    <label for="livingThing">Enter any type of living thing:</label>
    <input type="text" id="livingThing" name="livingThing" required>
    <br>
     <br>
    <label for="niceMessage">Say something nice to someone:</label>
    <textarea id="niceMessage" name="niceMessage" rows="10"  required></textarea>
    <br>
     <br>
    <p>Send and show a friend</p>
    <input type="submit" value="Send">
</form>

</body>
</html>

