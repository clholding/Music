<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/A0.Common/sidebarMenu.css">

<div id="sidebar-menu">
    <ul class="sidebar-menu-main">
        <%--    <li class="active" onclick="location.href='/myPage'">--%>
            <button  class="active" type="button" data-toggle="collapse" data-target="#menuList" aria-expanded="false" aria-controls="menuList">
                <img src="/images/my_page_icon.svg" alt="my-page"> 마이페이지
            </button>

            <div class="collapse" id="menuList">
        <ul class="sidebar-menu-sub">
            <li>나의 정보</li>
            <li>정보 수정</li>
        </ul>
        <li onclick="onSideMenuClick(this)">
            <img src="/images/equipment_icon.svg" alt="equipment">
            <span>장비</span>
        </li>
        <li onclick="onSideMenuClick(this)">
            <img src="/images/user_menu_icon.svg" alt="user-menu">
            <span>사용자</span>
        </li>
        <li onclick="onSideMenuClick(this)">
            <img src="/images/operations_icon.svg" alt="operations management">
            <span>운영 관리</span>
        </li>
        <li onclick="onSideMenuClick(this)">
            <img src="/images/system_icon.svg" alt="system management">
            <span>시스템 관리</span>
        </li>
            </div>
    </ul>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>