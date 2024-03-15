<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>Login</title>
    <style>
        body {height: 100vh; width: 100vw; background: #FFFFFF}
        form {width: 400px}
        h1{text-align:center; margin-bottom:40px;}
        .btn{height:52px; font-weight:500; cursor:pointer;}
        .btn_1{margin-top:24px;}
        .btn_1:hover {background-color: #37679e; color: #FFF}
        .btn_2{text-align:center;}
        @media (max-width: 440px) {form {width:90%;}}
        @media (max-width: 250px) {.logo_img{width:100%;}}
    </style>
</head>

<body>
    <div class="d-flex flex-column justify-content-center align-items-center w-100 h-100" style="min-height: 500px">
        <h1><img src="images/cl_logo.png" alt="C&L 홀딩스 로고 이미지" class="logo_img"><%--Log In--%></h1>
        <form action="/loginSubmit" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <div>
                <label for="username">Email</label>
                <input type="text" id="username" name="username">
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
            </div>
            <input type="submit" value="Log In" class="btn btn-blue btn_1">
            <input type="button" value="Sign Up" class="btn btn-light btn_2" onclick="location.href='/signUp';">
            <div class="d-flex justify-content-between">
                <div class="keep_check">
                    <input type="checkbox" id="keep" name="nvlong" class="input_keep" value="off">
                    <label for="keep" class="keep_text">Remember me</label>
                </div>
                <div class="find_password">
                    <a target="_blank" href="#" class="find_text" style="color: #000000;">Forgot Password?</a>
                </div>
            </div>

            <hr class="divider" style="margin: 60px 0 30px">

            <a href="/loginSns" class="btn" style="width: 100%; line-height: 35px; background: black; color: white;">SNS 간편 로그인</a>

        </form>
    </div>

    <script src="/js/default/jquery.min.js"></script>

    <script src="/js/A0.common/common.js"></script>
    <script type="text/javascript" src="/js/A1.Login_Signup/signUp.js"></script>
</body>
</html>