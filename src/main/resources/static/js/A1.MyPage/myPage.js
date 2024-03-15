const boardTableBody = $('#board-table tbody');
const searchInput = $('#marchSearch');

let totalCount = 0;
let activePage = 1;


function getTeacherMatchList(keyword, page = 0){

    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;
    params.page = page;

    ajaxGet('/api/getTeacherMatchList', params, function (data) {
        if (data.returnCode === "200") {
            if (boardTableBody.children().length > 0) {
                boardTableBody.empty();
            }

            if (data.contents && data.contents.length > 0) {
                let matchList = data.contents;

                matchList.forEach(function (match, idx) {

                    let regDt = match.APPEND_DATE ? formatDate(match.APPEND_DATE, "yyyy.MM.DD") : "-";
                    boardTableBody.append(`
                        <tr>
                            <td><p>${totalCount - (page * 10) - idx}</p></td>
                            <td>${match.TEACHER_NAME ?? "-"}</td>
                            <td>${match.USER_NAME ?? "-"}</td>
                            <td class="mobile-hide">${isNotEmpty(match.USER_EMAIL) ? match.USER_EMAIL : "-"}</td>
                            <td class="mobile-hide">${isNotEmpty(match.USER_TEL) ? match.USER_TEL : "-"}</td>
                            <td class="mobile-hide">${regDt}</td>
                        </tr>
                    `);
                });
            }
        }
    });
}


function getMatchCount(keyword) {
    const params = {};
    params.keyword = keyword && keyword !== "" ? keyword : null;

    const pagination = $('.match-pagination');

    ajaxGet('/api/getMatchCount', params, function (data) {
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
            $('.match-pagination li:nth-child(2)').addClass('active');

            getTeacherMatchList(keyword, 0);
        }
    });
}

function onChangePage(pageNo, direction) {
    if (direction === 'prev' && activePage > 1) {
        $(`.match-pagination li.active`).removeClass('active');
        activePage = activePage - 1;
        getTeacherMatchList(searchInput.val(), activePage - 1);
        $(`.match-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (direction === 'next' && activePage < Math.ceil(totalCount/10)) {
        $(`.match-pagination li.active`).removeClass('active');
        activePage = activePage + 1;
        getTeacherMatchList(searchInput.val(), activePage-1);
        $(`.match-pagination li:nth-child(${activePage + 1})`).addClass('active');
    } else if (pageNo !== null) {
        $(`.match-pagination li.active`).removeClass('active');
        activePage = pageNo;
        $(`.match-pagination li:nth-child(${activePage + 1})`).addClass('active');
        getTeacherMatchList(searchInput.val(), pageNo-1);
    }
}

$(document).ready(function () {
    getMatchCount($('#marchSearch').val());
});