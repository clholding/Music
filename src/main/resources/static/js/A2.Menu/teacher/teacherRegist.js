function saveTeacher() {
    let form = new FormData();

    form.append("USER_PK", $('#user-pk').val());
    form.append("NAME", $('#user-name').val());
    form.append("SELF_INTRO", $('#user-about-me').val());
    form.append("TEL", $('#user-tel').val());
    form.append("EMAIL", $('#user-email').val());
    form.append("EXPERTISE", $('#user-specialized-field').val());
    form.append("EDUCATION", $('#user-education').val());
    form.append("LESSON_TYPE", $('#user-teaching-method').val());
    form.append("LESSON_PRICE", $('#user-salary').val());
    form.append("LESSON_DETAIL", $('#user-class-info').val());
    form.append( "file", $("#profile-img-file")[0].files[0]);

    ajaxPostMulti('/api/saveTeacher', form, function (data) {
        if(data.returnCode == 200){
            $("#sign-up-form").trigger("reset");
            window.location.assign("/teacherList");
            alert('쌤 프로필 등록 완료');
        } else {
            alert('쌤 프로필 등록 실패');
        }
    });
}

$(document).ready(function () {

    let reader = new FileReader();
    reader.onload = function (e) {
        $('#profile-img').attr('src', e.target.result);
    }

    $('#profile-img-file').change(function () {
        if (this.files && this.files[0]) {
            reader.readAsDataURL(this.files[0]);
        }
    });
});