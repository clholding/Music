<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="mobileNav">
    <ul>
        <li>
            <a href="/lessonInfo" onclick="menuClose()">협회 소개</a>
        </li>
        <li>
            <a href="/teacherList" onclick="menuClose()">공지사항 </a>
        </li>
        <li>
            <a href="/" onclick="menuClose()">음악 자료실</a>
        </li>
        <li>
            <a href="/" onclick="menuClose()">장소 대관</a>
        </li>
        <li>
            <a href="/legalConsult" onclick="menuClose()">법률 상담</a>
        </li>
        <li>
            <a href="/lessonList" onclick="menuClose()">레슨 목록</a>
        </li>
        <li>
            <security:authorize access="isAuthenticated()">
                <a href="/teacherRegist" onclick="menuClose()">쌤 프로필 등록</a>
            </security:authorize>
            <security:authorize access="isAuthenticated() == false">
                <a href="/login" onclick="menuClose()">저작물 검색</a>
            </security:authorize>
        </li>
    </ul>
    <div class="icon_24_ex" onclick="menuClose()"></div>
</div>

<div id="mobileLang">
    <ul>
        <li>
            <a href="#" lang="ko">한국어</a>
        </li>
        <li>
            <a href="#" lang="en">English</a>
        </li>
        <li>
            <a href="#" lang="ja">日本語</a>
        </li>
        <li>
            <a href="#" lang="zh-CN">中文简体</a>
        </li>
        <li>
            <a href="#" lang="zh-Hant">中文繁體</a>
        </li>
    </ul>
    <div class="icon_24_ex" onclick="langClose()"></div>
</div>