<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
    <link rel="stylesheet" href="/css/A2.Menu.lesson/lessonList.css">
</head>
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

    <div class="d-flex flex-column justify-content-center align-items-center p-3 page-banner lesson-list-bg">
        <h1>레슨 목록</h1>
        <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
        <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
    </div>

    <div class="container py-5">
        <article class="w-100 px-5 px-xl-1" style="margin-bottom: 90px">
            <h2>인기강좌 TOP</h2>
            <p class="my-3 fs-5" style="color: #888">가장 관심을 받고있는 레슨을 발견하세요</p>

            <div class="d-flex flex-wrap w-100 gap-4 my-4">
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/baking-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">베이킹</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div></a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/photography-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">사진술</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/english-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">영어</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/football-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">축구</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
            </div>
        </article>


        <%-- Culture / Art --%>
        <article class="w-100 px-5 px-xl-1" style="margin-bottom: 90px">
            <h2>문화/예술</h2>
            <p class="my-3 fs-5" style="color: #888">창작과 공예로 표현력 향상하세요</p>

            <div class="d-flex flex-wrap w-100 gap-4 my-4">
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/drum-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">드럼</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/ballet-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">발레</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/piano-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">피아노</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/sewing-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">재봉</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
            </div>

            <div class="collapse" id="collapseCultureArt">

                <div class="d-flex flex-wrap w-100 gap-4 my-4">
                    <a href="/lessonRead">
                        <div class="d-flex flex-column lesson-item gap-2">
                            <div><img src="images/drum-lesson.png"></div>
                            <div class="d-flex gap-1">
                                <p class="lesson">드럼</p>
                                <span>|</span>
                                <p class="lecturer">이미주</p>
                            </div>
                            <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                            <p class="rating">
                                <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                            </p>
                        </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/ballet-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">발레</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/piano-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">피아노</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/sewing-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">재봉</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                </div>
            </div>
            <button class="btn btn-primary see-more-btn" type="button" data-toggle="collapse" data-target="#collapseCultureArt" aria-expanded="false" aria-controls="collapseExample">
                + 레슨 더 보기
            </button>
        </article>

        <%-- Sports / Leisure --%>
        <article class="w-100 px-5 px-xl-1" style="margin-bottom: 90px">
            <h2>스포츠/레저</h2>
            <p class="my-3 fs-5" style="color: #888">건강과 여가를 즐기세요</p>

            <div class="d-flex flex-wrap w-100 gap-4 my-4">
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/golf-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">골프</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/yoga-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">요가</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/swimming-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">수영</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/baseball-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">야구</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
            </div>
            <div class="collapse" id="collapseTechSkills">
                <div class="d-flex flex-wrap w-100 gap-4 my-4">
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/golf-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">골프</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/yoga-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">요가</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/swimming-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">수영</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/baseball-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">야구</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                </div>
            </div>
            <button class="btn btn-primary see-more-btn" type="button" data-toggle="collapse" data-target="#collapseTechSkills" aria-expanded="false" aria-controls="collapseExample">
                + 레슨 더 보기
            </button>
        </article>

        <%-- Tech skills --%>

        <article class="w-100 px-5 px-xl-1" style="margin-bottom: 90px">
            <h2>기술/기능</h2>
            <p class="my-3 fs-5" style="color: #888">전문적인 안내로 새로운 기술 습득하세요</p>

            <div class="d-flex flex-wrap w-100 gap-4 my-4">
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/coding-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">코딩</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/ps-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">포토샵</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/photography-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">사진술</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
                <a href="/lessonRead">
                <div class="d-flex flex-column lesson-item gap-2">
                    <div><img src="images/digart-lesson.png"></div>
                    <div class="d-flex gap-1">
                        <p class="lesson">디지털 아트</p>
                        <span>|</span>
                        <p class="lecturer">이미주</p>
                    </div>
                    <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                </a>
            </div>
            <div class="collapse" id="collapseSportsLeisure">
                <div class="d-flex flex-wrap w-100 gap-4 my-4">
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/coding-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">코딩</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/ps-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">포토샵</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elitt</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/photography-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">사진술</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                    <a href="/lessonRead">
                    <div class="d-flex flex-column lesson-item gap-2">
                        <div><img src="images/digart-lesson.png"></div>
                        <div class="d-flex gap-1">
                            <p class="lesson">디지털 아트</p>
                            <span>|</span>
                            <p class="lecturer">이미주</p>
                        </div>
                        <p class="description fw-bold">Lorem ipsum dolor sit amet, consectetur adipiscing eli</p>
                        <p class="rating">
                            <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                        </p>
                    </div>
                    </a>
                </div>

            </div>
            <button class="btn btn-primary see-more-btn" type="button" data-toggle="collapse" data-target="#collapseSportsLeisure" aria-expanded="false" aria-controls="collapseExample">
                + 레슨 더 보기
            </button>
        </article>
    </div>


    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>


<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/legalConsult/legalConsult.js"></script>


<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-element-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>