<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="header">
    <div class="headerWrap">
        <div id="headerLogo" class="headerSide">
           <a href="/" class="menuText">씨엘음원</a>
        </div>

        <ul id="nav" class="menuList">
            <li>
                <a href="/lessonInfo" class="menuText">레슨 안내</a>
            </li>

            <li>
                <a href="/" class="menuText">방문 신청</a>
            </li>
            
            <li>
                <a href="/music" class="menuText">음악</a>
            </li>

            <li>
                <security:authorize access="isAuthenticated()">
                    <a href="/teacherRegist" class="menuText">쌤 프로필 등록</a>
                </security:authorize>
                <security:authorize access="isAuthenticated() == false">
                    <a href="/login" class="menuText">쌤 프로필 등록</a>
                </security:authorize>
            </li>

        </ul>

        <div class="headerSideRight">
            <div class="selectBox" style="min-width: 0; padding-right: 14px;">
                <button class="label language_white" style="border:none;"></button>
                <ul class="optionList optionListDown">
                    <li class="optionItem optionItemDown"><a href="#"
                                                             class="optionItemA optionItemAdown" lang="ko">한국어</a>
                    </li>
                    <li class="optionItem optionItemDown"><a href="#"
                                                             class="optionItemA optionItemAdown"
                                                             lang="en">English</a></li>
                    <li class="optionItem optionItemDown"><a href="#"
                                                             class="optionItemA optionItemAdown" lang="ja">日本語</a>
                    </li>
                    <li class="optionItem optionItemDown"><a href="#"
                                                             class="optionItemA optionItemAdown"
                                                             lang="zh-CN">中文简体.</a></li>
                    <li class="optionItem optionItemDown"><a href="#"
                                                             class="optionItemA optionItemAdown"
                                                             lang="zh-Hant">中文繁體</a></li>
                </ul>
            </div>
            <security:authorize access="isAuthenticated() == false">
                <div class="account">
                    <button class="login menuText" onclick="window.location.href='/login';">로그인</button>
                </div>
            </security:authorize>
            <security:authorize access="isAuthenticated()">
                <div class="d-flex account">

                        <%--<img src="/images/my_page_icon.svg" style="width: 22px; height: auto;" alt="my-page" onclick="window.location.href='/myPage';">--%>
                    <div class="my_page" onclick="window.location.href='/myPage';"></div>
                    <span class="label login menuText" style="cursor: default"
                          onclick="window.location.href='/myPage';">
                        <security:authentication property="principal.username"/>
                    </span>
                    <span class="menuText">|</span>
                    <button class="login menuText" onclick="window.location.href='/logout';">로그아웃</button>
                </div>
            </security:authorize>
        </div>

        <div class="mobileHeaderIconWrap">
            <div class="language_white " onclick="langOpen()"></div>
            <security:authorize access="isAuthenticated() == false">
                <div class="log_in" onclick="window.location.href='/login';"></div>
            </security:authorize>
            <security:authorize access="isAuthenticated()">
                <img src="/images/icon_logout.svg" alt="logout-icon" height="22px"
                     onclick="window.location.href='/logout';">
            </security:authorize>
            <div class="icon_24_menu " onclick="menuOpen()"></div>
        </div>
    </div>

    <div class="subMenuWrap">
        <div class="d-flex flex-column">
            <a href="/lessonInfo" class="menuText">레슨 안내</a>
        </div>

        <div class="d-flex flex-column">
            <a href="/teacherList" class="menuText">레슨쌤 소개</a>
            <a href="/" class="menuText">안전방문 레슨 신청</a>
            <a href="/" class="menuText">장소 대관</a>
            <a href="/lessonList" class="menuText">레슨 목록</a>
        </div>

        <div class="d-flex flex-column">
            <!-- a href="/legalConsult" class="menuText">상담 게시판</a-->
            <a href="/music" class="menuText">음악 게시판</a>
        </div>

        <div class="d-flex flex-column">
            <security:authorize access="isAuthenticated()">
                <a href="/teacherRegist" class="menuText">프로필 등록</a>
            </security:authorize>
            <security:authorize access="isAuthenticated() == false">
                <a href="/login" class="menuText">프로필 등록</a>
            </security:authorize>
        </div>

    </div>
</div>
