function saveMusic(){

   		let form = new FormData();

	    form.append("TITLE", $('#music-title').val());
	    form.append("NAME", $('#music-name').val());
	    form.append("PLAY_YN", $('#music-play').val());
	
	    if ($("#file-upload")[0].files.length > 0) {
	        Array.from($("#file-upload")[0].files).forEach((file, idx) => {
	            form.append( `file-${idx + 1}`, file);
	        });
	    }
	    
	    ajaxPostMulti('/api/music/saveMusic', form, function (data) {
	        if(data.returnCode == 200){
	            alert('게시물 등록 완료');
	            window.location.assign("/music");
	        } else {
	            alert('게시물 등록 실패');
	        }
	    });
}

const boardTableBody = $('#board-table tbody');
const searchInput = $('#musicSearch');

let totalCount = 0;
let activePage = 1;

function getMusicList(keyword, page = 0){

    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;
    params.page = page;

    ajaxGet('/api/music/getMusicList', params, function (data) {
        if (data.returnCode === "200") {

            if (boardTableBody.children().length > 0) {
                boardTableBody.empty();
            }

            if (data.contents && data.contents.length > 0) {
                let musics = data.contents;

                musics.forEach(function (music, idx) {

                    let regDt = music.APPEND_DATE ? formatDate(music.APPEND_DATE, "yyyy.MM.DD") : "-";

                    boardTableBody.append(`
                    <tr onClick="location.href='/musicRead?id=${music.ID_NO}'" style="cursor: pointer">
                        <td><p>${totalCount - (page * 10) - idx}</p></td>
                        <td class="title">
                            <p>${music.TITLE ?? "-"}</p>
                        </td>
                        <td>${music.NAME ?? "-"}</td>
                        <td class="mobile-hide">${music.VIEWS}</td>
                        <td class="mobile-hide">${regDt}</td>
                    </tr>
                    `);
                });
            }
        } else {
            alert('실패하였습니다');
        }
    });
}


function getMusicCount(keyword) {
    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;

    const pagination = $('.board-pagination');

    ajaxGet('/api/music/getMusicCount', params, function (data) {
        if (data.returnCode === "200") {
            totalCount = data.count;
            pagination.empty();
            pagination.append(
                `<li id="prev-page" onclick="onChangePage(null,'prev')">
                    <span aria-hidden="true">&laquo;</span>
                </li>`)
            let i = 0;
            let page = 1;
            while (i < data.count) {
                pagination.append(`<li class="page-link" onclick="onChangePage(${page})">${page}</li>`)
                page++;
                i = i + 10;
            }
            pagination.append(
                `<li id="next-page" onclick="onChangePage(null,'next')">
                      <span aria-hidden="true">&raquo;</span>
                </li>`
            )
            $('.board-pagination li:nth-child(2)').addClass('active');

            getMusicList(keyword, 0);
        } else {
            alert('실패하였습니다');
        }
    });
}

function onChangePage(pageNo, direction) {
    if (direction === 'prev' && activePage > 1) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = activePage - 1;
        getMusicList(searchInput.val(), activePage - 1);
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (direction === 'next' && activePage < Math.ceil(totalCount/10)) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = activePage + 1;
        getMusicList(searchInput.val(), activePage-1);
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (pageNo !== null) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = pageNo;
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
        getMusicList(searchInput.val(), pageNo-1);
    }
}

function getMusicToRead(id) {
    ajaxGet('/api/music/getMusic', {id : id}, function (data) {
        if (data.returnCode === "200") {
            let readMusic = data.contents;
            
            let play = "";
            if(!isEmpty(readMusic.PLAY_YN)){
				play = readMusic.PLAY_YN;
			}
            $('#music-title').text(readMusic.TITLE ?? '없음');
            $('#music-name').text(readMusic.NAME ?? '비회원');
            $('#music-file').html('<audio id="player" controls '+play+' src="https://clholdingsbucket.s3.ap-northeast-2.amazonaws.com/'+readMusic.FILE+'" ></audio>');
            $('#music-views').text(readMusic.VIEWS + 1);
            $('#music-reg-dt').text(formatDate(readMusic.APPEND_DATE,'yyyy-MM-DD HH:mm'));
            // $('#article-upt-dt').text(formatDate(readArticle.UPDATE_DATE,'yyyy-MM-DD HH:mm'));

            // 게시물 상세 페이지가 열릴 때마다 조회수 늘리기
            ajaxPut('/api/music/updateMusicViews', {id : id, VIEWS: readMusic.VIEWS + 1}, function (data) {});
        } else {
            alert('실패하였습니다');
        }
    });
}

function getMusicToEdit(id) {
    ajaxGet('/api/music/getMusic', {id : id}, function (data) {
        let readMusic = data.contents;
        $('#music-title').val(readMusic.TITLE);
        $('#music-name').val(readMusic.NAME);
        $('#music-play').val(readMusic.PLAY_YN);
        
        let file = readMusic.FILE;
        $('#music-file_').val(file);
        
        if(!isEmpty(file)){
	        let fileName = file.split("/");
	        $('#music-file').text(fileName[2]);
        }
    });
}

function updateMusic() {

    let params = new URLSearchParams(location.search);
    let editId = params.get('id');
    
	let form = new FormData();

    form.append("id", editId);
    form.append("TITLE", $('#music-title').val());
    form.append("NAME", $('#music-name').val());
    form.append("PLAY_YN", $('#music-play').val());
    form.append("FILE_", $('#music-file_').val());

    if ($("#file-upload")[0].files.length > 0) {
        Array.from($("#file-upload")[0].files).forEach((file, idx) => {
            form.append( `file-${idx + 1}`, file);
        });
    }
    
    ajaxPostMulti('/api/music/updateMusic', form, function (data) {
        if(data.returnCode == 200){
	        alert('수정되었습니다');
	        window.location.assign("/music");
        } else {
            alert('수정 실패');
        }
    });
	        
}

function deleteMusic() {
    let params = new URLSearchParams(location.search);
    let deleteId = params.get('id');

    ajaxDelete('/api/music/deleteMusic', {id : deleteId}, function (data) {
        alert('삭제되었습니다');
        window.location.assign("/music");
    });
}

function onFileUpload() {
    let fileList = $('#file-list');
    let uploadedFiles = $('#file-upload')[0].files;

    if (uploadedFiles.length > 30) {
        alert("30개 이상의 파일을 선택하셨습니다. 이미지 파일은 최대 30장까지 업로드 가능합니다.");
        return;
    }

    fileList.empty();
    Array.from(uploadedFiles).forEach((item, idx) => {
        let reader = new FileReader();
        reader.readAsDataURL(item);
        reader.onload = function (e) {
            fileList.append(`
                <li class="d-flex gap-1">
                    <img src="${e.target.result}" alt="upload-${idx}" style="object-fit: cover; width: 105px; height: 158px; border: 1px solid black">
                    <span onclick="removeFile(${idx})" style="cursor: pointer; margin-left: -20px; color: white;">x</span>
                </li>
            `);
        };
    });
}

function removeFile(fileIdx) {
    const dataTransfer = new DataTransfer();
    Array.from($('#file-upload')[0].files).forEach((item,  idx) => {
        if (idx !== fileIdx) {
            dataTransfer.items.add(item);
        }
    });
    $('#file-upload')[0].files = dataTransfer.files;

    let fileList = $('#file-list');
    fileList.empty();
    Array.from($('#file-upload')[0].files).forEach((item, idx) => {
        let reader = new FileReader();
        reader.readAsDataURL(item);
        reader.onload = function (e) {
            fileList.append(`
                <li class="d-flex">
                    <img src="${e.target.result}" alt="upload-${idx}" 
                    style="object-fit: cover; width: 105px; height: 158px; border: 1px solid black">
                    <span onclick="removeFile(${idx})" style="cursor: pointer; margin-left: -20px; color: white;">x</span>
                </li>
            `);
        };
    });
}