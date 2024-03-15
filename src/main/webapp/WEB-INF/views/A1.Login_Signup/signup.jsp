<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<html>
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>Sign Up</title>
    <style>
        html{position:relative;}
        body{width:400px; height:fit-content; position:absolute; left:50%; top:50%; transform:translate(-50%, -50%);}
        h1{text-align:center; font-size:30px; font-weight:bold; margin-bottom:60px;}
        input, select {width:100%; height:48px; border-radius:10px; border:1px solid #afafaf; margin-bottom:10px; padding:10px;}
        label{font-weight:500; line-height:32px;}
        select{width:100%; height:48px; border-radius:10px; border:1px solid #afafaf; margin-bottom:10px; padding:10px; color: #757575;   background-image: url('../images/down.png'); /* Replace 'path/to/your/arrow-icon.png' with the actual path to your arrow icon image */
            background-position: right 10px center;
            background-size: 15px;
            background-repeat: no-repeat;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none; }
        .sign_up_btn{height:52px; border-radius:10px; font-size:18px; text-align:center;
            font-weight:500; cursor:pointer; background-color:#4981c0; color:#ffffff; border:none; margin-top:24px;}
        a{text-decoration:none; color:#000000;}

        @media (max-width: 440px) {body{width:90%;}}
        @media (max-width: 300px) {input{font-size:11px;}}
        @media (max-height: 700px) {body{top:0; transform:translate(-50%, 5%);}}

    </style>
</head>
<body>
<h1>Sign Up</h1>
<form id="sign-up-form" style="display: flex; flex-direction: column;">

    <c:if test="${userEmail == null}">
        <label for="user-email">Email (ID)</label>
        <input type="text" id="user-email" name="USER_EMAIL" placeholder="이메일을 입력해 주세요." onchange="onEmailChange()">

        <span class="my-1" onclick="sendVerificationCode()" style="text-align: right; cursor: pointer">이메일 인증 요청</span>

        <div id="email-verification" class="my-1" style="display: none">
            <label for="verification-code"></label>
            <input id="verification-code" type="text" maxlength="4" placeholder="인증번호를 입력해 주세요.">
            <button type="button" onclick="verifyCode()" class="btn" style="background-color: #4981c0; color: white;">확인</button>
        </div>

        <label for="user-name">User Name</label>
        <input type="text" id="user-name" name="USER_NAME" placeholder="이름을 입력해 주세요.">
    </c:if>

    <c:if test="${userEmail != null}">
        <label for="user-email">Email (ID)</label>
        <input type="text" id="user-email" name="USER_EMAIL" placeholder="이메일을 입력해 주세요." disabled value="${userEmail}">

        <label for="user-name">User Name</label>
        <input type="text" id="user-name" name="USER_NAME" placeholder="이름을 입력해 주세요." value="${userName}">
    </c:if>

    <label for="user-pw">Password</label>
    <input type="password" id="user-pw" name="USER_PW" placeholder="영문, 숫자, 특수문자 조합, 6~12자로 입력하세요.">
    <input type="password" id="confirm_user-pw" name="CONFIRM_USER_PW" placeholder="비밀번호 재확인">

    <label for="user-tel">Phone number</label>
    <input type="text" id="user-tel" name="USER_TEL" placeholder="휴대폰 번호를 입력해 주세요.">    
    
    <label for="user-member-code">Member type</label>
    <select id="user-member-code" name="USER_MEMBER_CODE">
        <option value="IND001">개인 회원</option>
        <option value="TCHR001">선생님</option>
    </select>

    <input type="button" disabled value="Sign Up" class="sign_up_btn" onclick="saveUser()">
</form>

<script src="/js/default/jquery.min.js"></script>
<script src="/js/A0.common/common.js"></script>
<script type="text/javascript" src="/js/A1.Login_Signup/signUp.js"></script>
</body>
</html>
