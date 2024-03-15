function saveArticle(){
    ajaxGet('/sec/userInfo', null, function (data) {
        if (data.returnCode === "200") {
            let article = {
                TITLE: $('#article-title').val() !== "" ? $('#article-title').val() : null,
                CONTENT: $('#article-content').val() !== "" ? $('#article-content').val() : null,
                VIEWS: 0,
                REG_USER_ID: data.contents.USER_NAME ?? null,
            };
            ajaxPost('/api/legalConsult/saveArticle', article, function (data) {
                if(data.returnCode == 200){
                    alert('게시물 등록 완료');
                    window.location.assign("/legalConsult");
                } else {
                    alert('게시물 등록 실패');
                }
            });
        } else {
            alert('실패하였습니다');
            return null;
        }
    });
}

const boardTableBody = $('#board-table tbody');
const searchInput = $('#articleSearch');

let totalCount = 0;
let activePage = 1;

function getArticleList(keyword, page = 0){

    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;
    params.page = page;

    ajaxGet('/api/legalConsult/getArticleList', params, function (data) {
        if (data.returnCode === "200") {

            if (boardTableBody.children().length > 0) {
                boardTableBody.empty();
            }

            if (data.contents && data.contents.length > 0) {
                let articles = data.contents;

                articles.forEach(function (article, idx) {

                    let regDt = article.APPEND_DATE ? formatDate(article.APPEND_DATE, "yyyy.MM.DD") : "-";

                    boardTableBody.append(`
                    <tr onClick="location.href='/legalConsultRead?id=${article.ID_NO}'" style="cursor: pointer">
                        <td><p>${totalCount - (page * 10) - idx}</p></td>
                        <td class="title">
                            <p>${article.TITLE ?? "-"}</p>
                        </td>
                        <td>${article.USER_NAME ?? "비회원"}</td>
                        <td class="mobile-hide">${article.VIEWS}</td>
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


function getArticleCount(keyword) {
    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;

    const pagination = $('.board-pagination');

    ajaxGet('/api/legalConsult/getArticleCount', params, function (data) {
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

            getArticleList(keyword, 0);
        } else {
            alert('실패하였습니다');
        }
    });
}

function onChangePage(pageNo, direction) {
    if (direction === 'prev' && activePage > 1) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = activePage - 1;
        getArticleList(searchInput.val(), activePage - 1);
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (direction === 'next' && activePage < Math.ceil(totalCount/10)) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = activePage + 1;
        getArticleList(searchInput.val(), activePage-1);
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (pageNo !== null) {
        $(`.board-pagination li.active`).removeClass('active');
        activePage = pageNo;
        $(`.board-pagination li:nth-child(${activePage + 1})`).addClass('active');
        getArticleList(searchInput.val(), pageNo-1);
    }
}

function getArticleToRead(id) {
    ajaxGet('/api/legalConsult/getArticle', {id : id}, function (data) {
        if (data.returnCode === "200") {
            let readArticle = data.contents;
            $('#article-title').text(readArticle.TITLE ?? '없음');
            $('#article-reg-user').text(readArticle.REG_USER_ID ?? '비회원');
            $('#article-views').text(readArticle.VIEWS + 1);
            $('#article-reg-dt').text(formatDate(readArticle.APPEND_DATE,'yyyy-MM-DD HH:mm'));
            // $('#article-upt-dt').text(formatDate(readArticle.UPDATE_DATE,'yyyy-MM-DD HH:mm'));
            $('#article-content').text(readArticle.CONTENT ?? '없음');

            // 게시물 상세 페이지가 열릴 때마다 조회수 늘리기
            ajaxPut('/api/legalConsult/updateArticleViews', {id : id, VIEWS: readArticle.VIEWS + 1}, function (data) {});
        } else {
            alert('실패하였습니다');
        }
    });
}

function getArticleToEdit(id) {
    ajaxGet('/api/legalConsult/getArticle', {id : id}, function (data) {
        let readArticle = data.contents;
        $('#article-title').val(readArticle.TITLE);
        $('#article-content').val(readArticle.CONTENT);
    });
}

function updateArticle() {
    let params = new URLSearchParams(location.search);
    let editId = params.get('id');

    ajaxPut('/api/legalConsult/updateArticle', {id : editId, TITLE: $('#article-title').val(), CONTENT: $('#article-content').val()}, function (data) {
        alert('수정되었습니다');
        window.location.assign("/legalConsult");
    });
}

function deleteArticle() {
    let params = new URLSearchParams(location.search);
    let deleteId = params.get('id');

    ajaxDelete('/api/legalConsult/deleteArticle', {id : deleteId}, function (data) {
        alert('삭제되었습니다');
        window.location.assign("/legalConsult");
    });
}