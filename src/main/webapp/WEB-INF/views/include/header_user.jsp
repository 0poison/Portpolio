<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>사용자</title>
    <c:import url="/WEB-INF/views/include/header_login.jsp"/>
</head>
<body>
<!-- 검색창 -->
<div class="flex-item">
    <form action="." method="post">
        <!-- search box -->
        <div class="search">
            <form action="${root }product/search?productName=${searchResult}"
                  method="get">
                <input class="search_input" type="text" name="" id=""
                       placeholder="검색어 입력...">&nbsp;&nbsp;
                <!--
          <button type="submit">
             <span class="fa fa-search"></span>
          </button>
           -->
                <a href="${root }product/search?productName=${searchResult}">
                    <span class="fa fa-search"></span>
                </a>
            </form>
        </div>
        <!-- / search box -->
    </form>
</div>
<!-- 검색창 끝-->

<!-- 로고 끝-->
<!-- 네비게이션 바 -->
<ul class="nav nav-justified bg-light border-bottom border-top"
    style="padding: 0 13%;">
    <!-- 버튼1-->
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=cpu" role="button">
        CPU</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=mainboard" role="button">
        메인보드</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=ram" role="button">
        메모리</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=vga" role="button">
        그래픽카드</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=ssd" role="button">
        SSD</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=hdd" role="button">
        HDD</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=power" role="button">
        파워</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=cooler" role="button">
        쿨러</a>
    </li>
    <li class="nav-item"><a class="nav-link" href="${root }product/list?productType=case" role="button">
        케이스</a>
    </li>
</ul>
<!-- 네비게이션 바 끝-->
<div class="bg-primary" style="height: 7px;"></div>
<!-- 메인 컨테이너 끝 -->
</body>
</html>