<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Omikuji</title>
    <style>
    	h1{
    	text-align:center
    	}
        .fortune-box {
            width: 200px;
            height: 200px;
            background-color: #ADD8E6;
            color: black;
            text-align: center;
            padding: 20px;
            margin: 20px auto;
            border: solid black 2px;
        }
    </style>
</head>
<body>
    <h1>Here is your Omikuji!</h1>
    <div class="fortune-box">
        <p>In ${number} years, you will live in ${city} with ${person} as your roommate, ${endeavor} for a living. The next time you see a ${livingThing}, you will have good luck. Also ${niceMessage}. </p>
    </div>
    <a href="/omikuji">Back to Form</a>
</body>
</html>

