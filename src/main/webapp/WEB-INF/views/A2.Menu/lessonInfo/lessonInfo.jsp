<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>


    <section class="d-flex flex-column align-items-center px-3 lesson-info-bg gap-3">
        <div class="d-flex position-relative">
            <input type="text" class="form-control" placeholder="검색 키워드를 입력하세요!">
            <span class="bn-input-group-btn">
                <button class="btn bn-btn-secondary" type="button">찾기</button>
            </span>
        </div>
        <h1 style="margin: 100px 0 20px">레슨 안내</h1>
        <p class="text-center fs-3">쉽고 안전하고 재미있는 교육, 레슨코리아에서 시작하세요!</p>
    </section>

    <section class="container lesson-benefits">
        <h2>레슨 코리아에서는,</h2>
        <div class="d-flex py-5 flex-wrap justify-content-between" data-aos="fade-up" data-aos-duration="1000">
            <div class="d-flex flex-column align-items-center my-4 mx-2 gap-2 text-center" style="max-width: 300px">
                <img src="/images/gal_img_1.png" alt="gal_img_1" width="300px" height="300px" style="border-radius: 10px">
                <h3 class="fs-3 mt-4 mb-2">선생님 자동 매칭</h3>
                <p style="font-size: 20px; line-height: 24px">내가 원하는 강의에 딱 맞는 선생님을 자동으로 매칭 시켜드립니다</p>
            </div>
            <div class="d-flex flex-column align-items-center my-4 mx-2 gap-2 text-center" style="max-width: 300px">
                <img src="/images/gal_img_3.png" alt="gal_img_3" width="300px" height="300px" style="border-radius: 10px">
                <h3 class="fs-3 mt-4 mb-2">안전한 교육</h3>
                <p style="font-size: 20px; line-height: 24px">방문캠으로부터 안전한 교육을 만듭니다.</p>
            </div>
            <div class="d-flex flex-column align-items-center my-4 mx-2 gap-2 text-center" style="max-width: 300px">
                <img src="/images/gal_img_2.png" alt="gal_img_2" width="300px" height="300px" style="border-radius: 10px">
                <h3 class="fs-3 mt-4 mb-2">다양한 교육</h3>
                <p style="font-size: 20px; line-height: 24px">기초교육 이외에도 다양한 과목의 교육을 합니다. </p>
            </div>
        </div>
        
    </section>

    <section class="main-content lesson-info-page">
        <div class="businessWrap">
            <div class="businessSection">
                <h2>레슨 진행 방법</h2>
                <div class="businessContents businessContentsPad">
                    <div class="businessContentsText">
                        <h2>01. 희망 레슨 신청</h2>
                        <h3>상단 메뉴에서 '레슨목록' 클릭 후, 희망 레슨을 선정하고 신청할 수 있습니다.</h3>
                        <a href="/lesson/list" onclick="onClick()">
                            <p>레슨 목록 바로가기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                    <div class="mockup_pad_png aos-init aos-animate" data-aos="fade-up" data-aos-duration="1000"></div>
                </div>
            </div>
            <div class="businessSection businessSection_02">
                <div class="businessContents">
                    <div class="mockup_phone_png aos-init" data-aos="fade-up" data-aos-duration="1000"></div>
                    <div class="businessContentsText">
                        <h2>02. 선생님 배정</h2>
                        <h3>희망한 레슨에 딱 맞는 선생님을 자동으로 매칭 시켜드립니다.</h3>
                        <a href="/" onclick="onClick()">
                            <p>신청 현황 바로가기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <div class="businessSection">
                <div class="businessContents businessContentsPad">
                    <div class="businessContentsText">
                        <h2>03. 레슨 수강</h2>
                        <h3>신청한 레슨을 희망 시간에 수장하시고 과제도 제출해 주세요!</h3>
                        <a href="/" onclick="onClick()">
                            <p>수강 목록 바로가기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                    <div class="mockup_pad_png aos-init aos-animate" data-aos="fade-up" data-aos-duration="1000"></div>
                </div>
            </div>
            <div class="businessSection businessSection_02">
                <div class="businessContents">
                    <div class="mockup_phone_png aos-init" data-aos="fade-up" data-aos-duration="1000"></div>
                    <div class="businessContentsText">
                        <h2>04. 선생님 피드백</h2>
                        <h3>수강 완료 후 과제를 제출해 주시면 선생님의 피드백이 제공됩니다.</h3>
                        <a href="/" onclick="onClick()">
                            <p>피드백 보러가기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="businessWrap">
            <div class="businessSection">
                <h2>BEST REVIEW</h2>
                <div class="businessContents businessContentsPad">
                    <div class="businessContentsText">
                        <h2>영어 회화 : 초보반</h2>
                        <h3>왕초보여서 걱정했는데 선생님만 잘 따라가니 쉽게 배울 수 있었습니다...</h3>
                        <p class="rating">
                            <span>이미*님</span>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                        </p>
                        <a href="/lesson/list" onclick="onClick()">
                            <p>자세히 보기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                    <div class="mockup_pad_png aos-init aos-animate" data-aos="fade-up" data-aos-duration="1000"></div>
                </div>
            </div>
            <div class="businessSection businessSection_02">
                <div class="businessContents">
                    <div class="mockup_phone_png aos-init" data-aos="fade-up" data-aos-duration="1000"></div>
                    <div class="businessContentsText">
                        <h2>쿠킹 레슨 : 심화반</h2>
                        <h3>코로나 사국 최고의 레슨입니다. 이번에도 재수강 하려고 합니다. 쿠킹을...</h3>
                        <p class="rating">
                            <span>이미*님</span>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                            <img src="/images/star-icon.svg" alt="star" height="16px"/>
                        </p>
                        <a href="/" onclick="onClick()">
                            <p>자세히 보기</p>
                            <img src="/images/icon_button_next.svg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="news">
        <div class="newsWrap">
            <h2>FAQ</h2>

            <ul class="newsContents aos-init" data-aos="fade-up" data-aos-duration="700">
                <li class="active">
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">어린이 축구 프로그램 신설</b>
                                <h5 class="child">2023-05-16</h5>
                            </div>
                            <h4 class="child">새로운 어린이 축구 프로그램이 신설되었습니다. 시간표를 첨부하니 많은 관심 부탁드립니다. 새로운 어린이 축구 프로그램이 신설되었습니다. 시간표···</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li class="active">
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">안전한 교육</b>
                                <h5 class="child">2023-03-16</h5>
                            </div>
                            <h4 class="child">저희 레슨코리아는 방문캠으로부터 안전한 교육을 만듭니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li class="active">
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">2023년 교육 목록</b>
                                <h5 class="child">2022-12-28</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li class="active">
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>

                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#;" onclick="onClick()" class="newsContentsItem">
                        <div class="newsContentsItemLeft">
                            <div>
                                <b class="child">제목 영역입니다</b>
                                <h5 class="child">날짜 영역입니다</h5>
                            </div>
                            <h4 class="child">내용 영역입니다. 내용 영역입니다. 내용 영역입니다.</h4>
                        </div>
                        <div class="icon_40_arrow"></div>
                    </a>
                </li>
            </ul>

            <div class="button-wrap">
                <button class="prevButton" type="submit" disabled=""></button>
                <ul class="pagination">
                </ul>
                <button class="nextButton" type="submit"></button>
            </div>
        </div>
    </section>

    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>