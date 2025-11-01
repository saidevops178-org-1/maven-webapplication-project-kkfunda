<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fresh Sip - Fruit Juice Shop</title>
<link href="images/juice-logo.jpg" rel="icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #fff7e6, #fff0f5, #e6faff);
        font-family: "Poppins", sans-serif;
        animation: fadeIn 1s ease-in-out;
    }

    header {
        background: linear-gradient(90deg, #ff6600, #ffcc00, #ff6699);
        color: white;
        padding: 30px;
        text-align: center;
        animation: slideDown 1s ease;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
    }

    header h1 {
        font-weight: 700;
        font-size: 2rem;
        text-shadow: 2px 2px #b34700;
    }

    h3 {
        margin-top: 10px;
        font-weight: 400;
    }

    .info-card {
        background: linear-gradient(145deg, #ffffff, #fff2e6);
        border-left: 6px solid #ff6600;
        border-radius: 15px;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.15);
        padding: 25px;
        margin: 25px auto;
        max-width: 750px;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .info-card:hover {
        transform: translateY(-5px);
        box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
    }

    .info-card h3 {
        color: #ff6600;
        font-weight: 600;
    }

    footer {
        margin-top: 40px;
        background: linear-gradient(90deg, #ff6600, #ff9900, #ff3300);
        color: #fff;
        padding: 20px;
        text-align: center;
        box-shadow: 0px -3px 6px rgba(0,0,0,0.3);
    }

    footer a {
        color: #fff799;
        text-decoration: none;
        font-weight: 500;
    }

    footer a:hover {
        color: #ffe680;
    }

    .btn-custom {
        background: linear-gradient(90deg, #ff6600, #ff9900);
        border: none;
        color: white;
        font-weight: 600;
        border-radius: 25px;
        padding: 10px 25px;
        transition: 0.3s;
    }

    .btn-custom:hover {
        background: linear-gradient(90deg, #ff3300, #ff6600);
        transform: scale(1.05);
    }

    .btn-success {
        background: linear-gradient(90deg, #00cc66, #00e699);
        border: none;
        font-weight: 600;
        border-radius: 25px;
        padding: 10px 25px;
    }

    .btn-success:hover {
        background: linear-gradient(90deg, #00994d, #00cc66);
        transform: scale(1.05);
    }

    @keyframes fadeIn {
        from {opacity: 0;}
        to {opacity: 1;}
    }

    @keyframes slideDown {
        from {transform: translateY(-100px);}
        to {transform: translateY(0);}
    }
</style>
</head>

<body>

<header>
    <h1>🍓 Welcome to Fresh Sip Fruit Juice Corner Eluru Santhi nagar🍊</h1>
    <h3>Pure | Fresh | Healthy | Delicious</h3>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h3>🌐 Server Information</h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("<p><b>Server Host Name:</b> " + inetAddress.getHostName() + "</p>");
            out.println("<p><b>Server IP Address:</b> " + ip + "</p>");
        %>
    </div>

    <!-- Client Info -->
    <div class="info-card">
        <h3>💻 Client Information</h3>
        <hr>
        <p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host Name:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Shop Info -->
    <div class="info-card text-center">
        <img src="images/juice-logo.jpg" alt="Fresh Sip Logo" width="130" class="mb-3 rounded-circle shadow">
        <h4 style="color:#ff6600;">Fresh Sip Juice Corner</h4>
        <p><b>Address:</b> #123, Orchard Street, Bangalore</p>
        <p><b>Phone:</b> <span style="color:#00b300;">+91-9876543210</span></p>
        <p><b>Email:</b> <a href="mailto:contact@freshsip.com">contact@freshsip.com</a></p>
        <a href="mailto:contact@freshsip.com" class="btn btn-custom mt-2">📧 Mail to Fresh Sip</a>
    </div>

    <!-- Services -->
    <div class="info-card text-center">
        <h4 style="color:#ff3366;">🍹 Our Special Juices</h4>
        <div class="d-flex flex-wrap justify-content-center mt-3">
            <a href="menu.jsp" class="btn btn-success m-2">🍊 Orange Delight</a>
            <a href="menu.jsp" class="btn btn-success m-2">🥭 Mango Magic</a>
            <a href="menu.jsp" class="btn btn-success m-2">🍉 Watermelon Splash</a>
            <a href="menu.jsp" class="btn btn-success m-2">🍍 Pineapple Paradise</a>
        </div>
    </div>

</div>

<footer>
    <p>© 2025 Fresh Sip Juice Corner | Taste the Freshness Everyday 🍍</p>
    <p><small>Powered by <a href="https://google.com/">Fresh Sip</a></small></p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
