<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.springboot.model.User"%>
<% 
User user = (User) session.getAttribute("user"); 
if (user == null) { 
    response.sendRedirect("usersessionexpiry"); 
    return; 
} 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #f4f4f9;
            line-height: 1.6;
            color: #333;
        }

        .dashboard-container {
            display: flex;
            min-height: 100vh;
        }

        .content {
            flex-grow: 1;
            margin-left: 280px;
            padding: 30px;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .motivational-section {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            text-align: center;
        }

        .motivational-section h2 {
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .motivational-section p {
            font-size: 1.1rem;
            margin-bottom: 15px;
        }

        .certificates-container, .achievements-container {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .certificate-card, .achievement-card {
            width: 250px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px;
            text-align: center;
        }

        .certificate-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 5px;
        }

        .btn {
            display: inline-block;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-motivate {
            background-color: #28a745;
        }

        .btn-motivate:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <%@ include file="usersidebar.jsp" %>

        <div class="content">
            <!-- Welcome Card -->
            <div class="card">
                <h1>Welcome back, ${user.fullName}!</h1>
                <p>Track and manage your certificates and achievements here.</p>
                <a href="uploadCertificate.jsp" class="btn">Upload Certificate</a>
            </div>

            <!-- Motivational Section -->
            <div class="motivational-section">
                <h2>Your Achievements Matter!</h2>
                <p>Every certificate and achievement is a step toward your success. Store them here to keep track of your progress and showcase your accomplishments.</p>
                <p>Remember, small steps lead to big results. Keep going!</p>
                <a href="uploadachievement" class="btn btn-motivate">Upload Your Certificate Now</a>
            </div>
</div>
</body>
</html>