function onEmailChange() {
    $('#email-verification').hide();
    $('.sign_up_btn').attr('disabled',true);
}

function saveUser(){

    let newUser = {
        USER_ID: $('#user-email')[0].value,
        USER_NAME: $('#user-name')[0].value,
        USER_EMAIL: $('#user-email')[0].value,
        USER_TEL: $('#user-tel')[0].value,
        USER_PW: $('#user-pw')[0].value,
        USER_MEMBER_CODE: $('#user-member-code').val()
    }

    ajaxPost('/api/registerUser', newUser, function (data) {
        if(data.returnCode == 200){
            $("#sign-up-form").trigger("reset");
            alert('회원가입 완료');
            window.location.assign("/login");
        } else {
            alert('회원가입 실패');
        }
    });
}

function sendVerificationCode() {
    let email = $('#user-email')[0].value;
    if (email && email.trim() !== "") {
        ajaxPost('/api/sendVerificationCode', {email: email}, function (data) {
            if(data.returnCode === "200"){
                alert('인증 코드를 이메일로 발송했습니다');
                $('#email-verification').show();
            } else if (data.returnCode === "9999") {
                alert(data.returnMsg);
            } else {
                alert('인증 코드 발송 실패');
            }
        });
    } else if (!email && email === "") {
        alert("이메일 입력해주세요")
    }
}

function verifyCode() {
    let email = $('#user-email')[0].value;
    let code = $('#verification-code')[0].value;
    let signUpBtn = $('.sign_up_btn');

    if (email && email.trim() !== "" && code && code.length === 4) {
        ajaxPost('/api/verifyEmail', {email: email, code: code}, function (data) {
            if(data.returnCode === "200"){
                alert('이메일 인증 완료되었습니다');
                signUpBtn.attr('disabled', false);
            } else if (data.returnCode === "9999") {
                alert(data.returnMsg);
            } else {
                alert('인증 코드 발송 실패');
            }
        });
    } else if (!email && email === "") {
        alert("이메일 입력해주세요")
    } else if (!code && code === "") {
        alert("인증 코드를 입력해주세요")
    }
}
