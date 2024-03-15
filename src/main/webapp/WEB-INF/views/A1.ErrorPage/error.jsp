<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="/css/global.css">
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>

    <title>Error 404</title>
    <style>
        html{position:relative;}
        body{background: #FFFFFF}
        .container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1{font-size: 24px; margin-bottom: 30px}
        .error-message{display: flex; gap: 5px;}
        .error-message .link {text-decoration:none; color:#0062DF; !important;}


        @media (max-width: 547px) { .error-message{flex-direction: column; text-align: center; gap: 15px;} }

    </style>

</head>

<body>
<%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<div class="container">

    <h1>Sorry, this page isn’t available.</h1>
    <div class="error-message">
        <p>We can’t seem to find the page you are looking for.</p>
        <a class="link" href="/index">Go back to Lesson Korea.</a>
    </div>
</div>

</body>
</html>