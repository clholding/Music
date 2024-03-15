<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>Login</title>
    <style>
        body {
            height: 100vh;
            width: 100vw;
            background: #FFFFFF
        }

        .sns-div {
            width: 400px
        }

        h1 {
            text-align: center;
            margin-bottom: 40px;
        }

        @media (max-width: 440px) {
            sns-div {
                width: 90%;
            }
        }

        @media (max-width: 250px) {
            .logo_img {
                width: 100%;
            }
        }
    </style>
</head>

<body>
<div class="d-flex flex-column justify-content-center align-items-center w-100 h-100" style="min-height: 500px">
    <h1><img src="/images/logo.png" alt="C&L 홀딩스 로고 이미지" class="logo_img" style="width: 120px"><%--Log In--%></h1>
    <div class="sns-div">
        <h2 style="text-align: center">SNS 간편 로그인</h2>

        <%
            SecureRandom random = new SecureRandom();
            String state = new BigInteger(130, random).toString();
        %>

        <%-- KAKAO LOGIN--%>
        <button style="margin-top: 30px; cursor: pointer; height: 70px; width: 400px; border: none; border-radius: 8px; background-color: #FEE500;     color: #191919;
    font-size: 22px;
    font-weight: 700;" onclick="onKakaoLogin()"><img src="/images/icon_kakao.png" style="height: 19px;  swidth: 24px;
    margin-right: 30px;">카카오 로그인
        </button>
        <%-- NAVER LOGIN--%>
        <button style="margin-top: 15px; cursor: pointer; height: 70px; width: 400px; border: none; border-radius: 8px; background-color: #02C75A;     color: #FFFFFF;
    font-size: 22px;
    font-weight: 700;"  onclick="onNaverLogin()"><img src="/images/icons_naver.png" style="margin-right: 30px;
    height: 20px;"> 네이버 로그인
        </button>

    </div>
</div>

<script src="/js/default/jquery.min.js"></script>
<script src="/js/A0.common/common.js"></script>
<script>
    function onKakaoLogin() {
        location.href = 'https://kauth.kakao.com/oauth/authorize?client_id=${kakaoClientId}&redirect_uri=${baseUrl}/login/kakao&response_type=code'
    }

    function onNaverLogin() {
        location.href = 'https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=${naverClientId}&redirect_uri=${baseUrl}/login/naver&state=<%=state%>'
    }
</script>
</body>
</html>