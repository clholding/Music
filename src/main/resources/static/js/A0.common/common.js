function ajaxGet(url, param, callback) {
    $.ajax({
        type: 'get',
        url: url,
        contentType:"application/json;charset=UTF-8",
        data: param,
        success: function(data, textStatus, xhr) {
            if(data.returnCode == '200') {
                return callback(data);
            } else {
                alert('error get: ' + data.returnCode + " : " + data.returnMsg + ":" + url);
            }
        },
        error: function(data, status, error) {
            alert('ajax Error: ' + data + url);
            // console.log('ajax Error: ' + url);
        }
    });
}
function ajaxPost(url, param, callback) {
    $.ajax({
        type: 'post',
        url: url,
        async: false,
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(param),
        success: function(data, textStatus, xhr) {
            if (data.returnCode == '200') {
                return callback(data);
            } else if (data.returnCode == undefined) {
                alert('API 응답없음');
            } else if (data.returnCode === '9999') {
                return callback(data);
            } else {
                alert(data?.contents[0]?.error);
            }
        },
        error: function(data, status, error) {
            // console.log('ajax Error: ' + url);
            alert('ajax Error ' + data + url);
        }
    });
}
function ajaxPut(url, param, callback) {
    $.ajax({
        type: 'put',
        url: url,
        async: false,
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(param),
        success: function(data, textStatus, xhr) {
            if (data.returnCode == '200') {
                return callback(data);
            } else if (data.returnCode == undefined) {
                alert('API 응답없음');
            } else {
                alert(data?.contents[0]?.error);
            }
        },
        error: function(data, status, error) {
            alert('ajax Error ' + data + url);
        }
    });
}
function ajaxPostMulti(url, form, callback) {
    $.ajax({
        type: 'post',
        url: url,
        processData : false,
        contentType : false,
        data : form,
        // data: param,
        success: function (data, textStatus, xhr) {
            if (data.returnCode == '200') {
                return callback(data);
            } else if (data.returnCode == undefined) {
                alert('API 응답없음');
            } else {
                alert(data?.contents[0]?.error);
            }
        },
        error: function (data, status, error) {
            // console.log('ajax Error: ' + url);
            alert('ajax Error ' + data + url);
        }
    });
}
function ajaxDelete(url, param, callback) {
    $.ajax({
        type: 'delete',
        url: url,
        data: param,
        success: function(data, textStatus, xhr) {
            if(data.returnCode == '200') {
                return callback(data);
            } else {
                alert('error get: ' + data.returnCode + " : " + data.returnMsg + ":" + url);
            }
        },
        error: function(data, status, error) {
            alert('ajax Error: ' + data + url);
        }
    });
}

function formatDate(date, format) {
    return moment(date).utcOffset(6).format(format);
}

function isNotEmpty(item){
    return item && item !== "";
}

/**
 * 문자열이 빈 문자열인지 체크하여 결과값을 리턴한다. 
 * @param str		: 체크할 문자열
 */
function isEmpty(str){
	
	if(typeof str == "undefined" || str == null || str == "")
		return true;
	else
		return false ;
}

/**
 * 문자열이 빈 문자열인지 체크하여 기본 문자열로 리턴한다. 
 * @param str			: 체크할 문자열
 * @param defaultStr	: 문자열이 비어있을경우 리턴할 기본 문자열
 */	
function nvl(str, defaultStr){
	
	if(typeof str == "undefined" || str == null || str == "")
		str = defaultStr ;
	
	return str ;
}
