<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/adminMain.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<link href="https://hangeul.pstatic.net/hangeul_static/css/NanumSoMiCe.css" rel="stylesheet">
<body>
    <div id="wrapper">
        <div class="flexroot">
            <div class="app_page flex_column">
                <nav class="app_sidebar_wrapper on">
                    <div class="app_sidebar_logo">
                        <h1>Seoul Check-In</h1>
                        <div class="app_sidebar_toggle">
                            <span class="svg-icon svg-icon-2 rotate-180">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path opacity="0.5" d="M14.2657 11.4343L18.45 7.25C18.8642 6.83579 18.8642 6.16421 18.45 5.75C18.0358 5.33579 17.3642 5.33579 16.95 5.75L11.4071 11.2929C11.0166 11.6834 11.0166 12.3166 11.4071 12.7071L16.95 18.25C17.3642 18.6642 18.0358 18.6642 18.45 18.25C18.8642 17.8358 18.8642 17.1642 18.45 16.75L14.2657 12.5657C13.9533 12.2533 13.9533 11.7467 14.2657 11.4343Z" fill="currentColor"></path>
                                    <path d="M8.2657 11.4343L12.45 7.25C12.8642 6.83579 12.8642 6.16421 12.45 5.75C12.0358 5.33579 11.3642 5.33579 10.95 5.75L5.40712 11.2929C5.01659 11.6834 5.01659 12.3166 5.40712 12.7071L10.95 18.25C11.3642 18.6642 12.0358 18.6642 12.45 18.25C12.8642 17.8358 12.8642 17.1642 12.45 16.75L8.2657 12.5657C7.95328 12.2533 7.95328 11.7467 8.2657 11.4343Z" fill="currentColor"></path>
                                </svg>
                            </span>
                        </div>
                    </div>
                    <div class="app_sidebar_menu overflow_hidden">
                        <div class="app_sidebar_menu_wrapper flex_column">
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item" style="background-color: #AF7AB3;">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3" d="M8.9 21L7.19999 22.6999C6.79999 23.0999 6.2 23.0999 5.8 22.6999L4.1 21H8.9ZM4 16.0999L2.3 17.8C1.9 18.2 1.9 18.7999 2.3 19.1999L4 20.9V16.0999ZM19.3 9.1999L15.8 5.6999C15.4 5.2999 14.8 5.2999 14.4 5.6999L9 11.0999V21L19.3 10.6999C19.7 10.2999 19.7 9.5999 19.3 9.1999Z" fill="currentColor"></path>
                                            <path d="M21 15V20C21 20.6 20.6 21 20 21H11.8L18.8 14H20C20.6 14 21 14.4 21 15ZM10 21V4C10 3.4 9.6 3 9 3H4C3.4 3 3 3.4 3 4V21C3 21.6 3.4 22 4 22H9C9.6 22 10 21.6 10 21ZM7.5 18.5C7.5 19.1 7.1 19.5 6.5 19.5C5.9 19.5 5.5 19.1 5.5 18.5C5.5 17.9 5.9 17.5 6.5 17.5C7.1 17.5 7.5 17.9 7.5 18.5Z" fill="currentColor"></path>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">
                                    	<a href="${pageContext.request.contextPath}/Seoul-CheckIn.kr">사이트 바로가기</a>
                                    </span>
                                </div>
                            </div>
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="currentColor">
                                            </rect>
                                            <rect opacity="0.3" x="13" y="2" width="9" height="9" rx="2"
                                                fill="currentColor"></rect>
                                            <rect opacity="0.3" x="13" y="13" width="9" height="9" rx="2"
                                                fill="currentColor"></rect>
                                            <rect opacity="0.3" x="2" y="13" width="9" height="9" rx="2"
                                                fill="currentColor"></rect>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">
                                        <a href="${pageContext.request.contextPath}/admin/adminMain.me">대시보드</a>
                                    </span>
                                </div>
                            </div>
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M6.28548 15.0861C7.34369 13.1814 9.35142 12 11.5304 12H12.4696C14.6486 12 16.6563 13.1814 17.7145 15.0861L19.3493 18.0287C20.0899 19.3618 19.1259 21 17.601 21H6.39903C4.87406 21 3.91012 19.3618 4.65071 18.0287L6.28548 15.0861Z"
                                                fill="currentColor"></path>
                                            <rect opacity="0.3" x="8" y="3" width="8" height="8" rx="4"
                                                fill="currentColor"></rect>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">사용자 관리</span>
                                    <span class="sidebar_menu_arrow">
                                        <img src="${pageContext.request.contextPath}/assets/images/admin/down.png" style="width: 10px;">
                                    </span>
                                </div>
                                <div class="app_sidebar_submenu">
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/member/memberlist.me">회원 관리</a></div>
                                    <div class="app_sidebar_submenu_item">
                                    	<a href="javascript:errorPage()">방문자 통계</a></div>
                                </div>
                            </div>
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M8.7 4.19995L4 6.30005V18.8999L8.7 16.8V19L3.1 21.5C2.6 21.7 2 21.4 2 20.8V6C2 5.4 2.3 4.89995 2.9 4.69995L8.7 2.09998V4.19995Z"
                                                fill="currentColor"></path>
                                            <path
                                                d="M15.3 19.8L20 17.6999V5.09992L15.3 7.19989V4.99994L20.9 2.49994C21.4 2.29994 22 2.59989 22 3.19989V17.9999C22 18.5999 21.7 19.1 21.1 19.3L15.3 21.8998V19.8Z"
                                                fill="currentColor"></path>
                                            <path opacity="0.3" d="M15.3 7.19995L20 5.09998V17.7L15.3 19.8V7.19995Z"
                                                fill="currentColor"></path>
                                            <path opacity="0.3"
                                                d="M8.70001 4.19995V2L15.4 5V7.19995L8.70001 4.19995ZM8.70001 16.8V19L15.4 22V19.8L8.70001 16.8Z"
                                                fill="currentColor"></path>
                                            <path opacity="0.3" d="M8.7 16.8L4 18.8999V6.30005L8.7 4.19995V16.8Z"
                                                fill="currentColor"></path>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">콘텐츠 관리</span>
                                    <span class="sidebar_menu_arrow">
                                        <img src="${pageContext.request.contextPath}/assets/images/admin/down.png" style="width: 10px;">
                                    </span>
                                </div>
                                <div class="app_sidebar_submenu">
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/map/adminMaplist.mp">지도 관리</a>
                                    </div>
                                    <%-- <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}">일자리 관리</a>
                                    </div>
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}">관광지 관리</a>
                                        </div>
                                        <div class="app_sidebar_submenu_item">
                                            <a href="${pageContext.request.contextPath}">즐길거리 관리</a>
                                        </div> --%>
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/school/adminprogramlist.sc">강좌/프로그램 관리</a>
                                        </div>
                                </div>
                            </div>
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17 11H7C6.4 11 6 10.6 6 10V9C6 8.4 6.4 8 7 8H17C17.6 8 18 8.4 18 9V10C18 10.6 17.6 11 17 11ZM22 5V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4V5C2 5.6 2.4 6 3 6H21C21.6 6 22 5.6 22 5Z"
                                                fill="currentColor"></path>
                                            <path opacity="0.3"
                                                d="M21 16H3C2.4 16 2 15.6 2 15V14C2 13.4 2.4 13 3 13H21C21.6 13 22 13.4 22 14V15C22 15.6 21.6 16 21 16ZM18 20V19C18 18.4 17.6 18 17 18H7C6.4 18 6 18.4 6 19V20C6 20.6 6.4 21 7 21H17C17.6 21 18 20.6 18 20Z"
                                                fill="currentColor"></path>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">게시물 관리</span>
                                    <span class="sidebar_menu_arrow">
                                        <img src="${pageContext.request.contextPath}/assets/images/admin/down.png" style="width: 10px;">
                                    </span>
                                </div>
                                <div class="app_sidebar_submenu">
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/board/adminboard.bo">게시판 관리</a>
                                    </div>
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/comment/adminCommentList.cm">댓글 관리</a>
                                    </div>
                                    <div class="app_sidebar_submenu_item">
                                        <a href="${pageContext.request.contextPath}/banner/adminBanner.bn">배너 관리</a>
                                    </div>
                                </div>
                            </div>
                            <div class="app_sidebar_menu_list">
                                <div class="app_sidebar_menu_item">
                                    <span class="sidebar_menu_icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3"
                                                d="M14 3V20H2V3C2 2.4 2.4 2 3 2H13C13.6 2 14 2.4 14 3ZM11 13V11C11 9.7 10.2 8.59995 9 8.19995V7C9 6.4 8.6 6 8 6C7.4 6 7 6.4 7 7V8.19995C5.8 8.59995 5 9.7 5 11V13C5 13.6 4.6 14 4 14V15C4 15.6 4.4 16 5 16H11C11.6 16 12 15.6 12 15V14C11.4 14 11 13.6 11 13Z"
                                                fill="currentColor"></path>
                                            <path
                                                d="M2 20H14V21C14 21.6 13.6 22 13 22H3C2.4 22 2 21.6 2 21V20ZM9 3V2H7V3C7 3.6 7.4 4 8 4C8.6 4 9 3.6 9 3ZM6.5 16C6.5 16.8 7.2 17.5 8 17.5C8.8 17.5 9.5 16.8 9.5 16H6.5ZM21.7 12C21.7 11.4 21.3 11 20.7 11H17.6C17 11 16.6 11.4 16.6 12C16.6 12.6 17 13 17.6 13H20.7C21.2 13 21.7 12.6 21.7 12ZM17 8C16.6 8 16.2 7.80002 16.1 7.40002C15.9 6.90002 16.1 6.29998 16.6 6.09998L19.1 5C19.6 4.8 20.2 5 20.4 5.5C20.6 6 20.4 6.60005 19.9 6.80005L17.4 7.90002C17.3 8.00002 17.1 8 17 8ZM19.5 19.1C19.4 19.1 19.2 19.1 19.1 19L16.6 17.9C16.1 17.7 15.9 17.1 16.1 16.6C16.3 16.1 16.9 15.9 17.4 16.1L19.9 17.2C20.4 17.4 20.6 18 20.4 18.5C20.2 18.9 19.9 19.1 19.5 19.1Z"
                                                fill="currentColor"></path>
                                        </svg>
                                    </span>
                                    <span class="sidebar_menu_title">고객지원</span>
                                    <span class="sidebar_menu_arrow">
                                        <img src="${pageContext.request.contextPath}/assets/images/admin/down.png" style="width: 10px;">
                                    </span>
                                </div>
                                <div class="app_sidebar_submenu">
                                    <div class="app_sidebar_submenu_item">
                                        <a href="javascript:errorPage()">공지사항</a>
                                    </div>
                                    <div class="app_sidebar_submenu_item">
                                        <a href="javascript:errorPage()">FAQ</a>    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="app_sidebar_footer">
                        <span>Docs & Components</span>
                    </div>
                </nav>
                <div class="app_wrapper">
                    <header class="app_header">
                        <div class="header_wrapper">
                            <div class="headerbar">
                                <div class="headerbar-left">
                                    <ul class="header-nav header-nav-options">
                                        <li class="header-nav-brand">
                                            <div class="brand-holder">
                                                <a href="//llalla.imweb.me" target="_blank"
                                                    class="location_text margin-right-lg">
                                                    <span class="text-gray">관리자 메인</span>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="headerbar-right">
                                    <ul class="header-nav header-nav-options">
                                        <li class="hidden-xs">
                                        </li>
                                        <li>
                                            <a class="btn btn-secondary hidden-xs" href="${pageContext.request.contextPath}/Seoul-CheckIn.kr"
                                                style="width: 115px;">나가기</a>
                                            <a class="btn btn-bright hidden-sm hidden-md hidden-lg"
                                                href="//imweb.me/mysite" style="padding:4px 6px;"><i
                                                    class="btl bt-times vertical-middle"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </header>
                    <main class="app_main flex_column">
                        <!-- <div class="app_main_contextflex">
                            <div class="app_main_toolbar">
                            </div> -->
                            <div class="app_main_context">
                                <div class="app_main_context_container">
                                    <div id="content" class="dashboard_main">
                                        <div id="alertBox" class="alert__wrap"> </div>
                                        <section>
                                            <div class="clearfix area_wrap">
                                                <div class="section-body float_l">
                                                    <div class="row">
                                                        <div class="ma-item col-md-12 col-sm-12">
                                                            <div class="card">
                                                                <div class="card-head line-bottom">
                                                                    <a href="javascript:;" class="block">
                                                                        <header>오늘의 할일 <span
                                                                                class="text-default-bright header-badge badge-danger">0</span>
                                                                        </header>
                                                                    </a>
                                                                </div>
                                                                <div class="card-body border-top today-table">
                                                                    <div class="tt-list">
                                                                        <div class="inline-blocked">
                                                                            <a href="/admin/booking/order_cal">체크인<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a href="/admin/booking/order_cal">체크아웃<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a
                                                                                href="/admin/booking/order?status=PAY_WAIT">입금대기<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a
                                                                                href="/admin/booking/order?status=COMPLETE">예약완료<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a
                                                                                href="/admin/booking/order?status=CLAIM_STATUS_CANCEL_REQUEST">취소요청<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a
                                                                                href="/admin/booking/order?status=CLAIM_STATUS_CANCELING">취소처리중<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                        <div class="inline-blocked">
                                                                            <a href="/admin/booking/answers">문의<span
                                                                                    class="text-danger">0</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- 회원 정보 또는 문의 리뷰 뿌리기 -->
                                                    <div class="row flex-box">
                                                        <div class="ma-item col-md-6 col-sm-12 col-xs-12">
                                                            <div class="card">
                                                                <div class="card-head">
                                                                    <header><a href="/admin/stat/visitor">방문자 현황</a>
                                                                    </header>
                                                                    <div
                                                                        class="float_r text-12 text-right force-padding no-padding-y">
                                                                        <span style="margin-right:15px"><i
                                                                                class="fa fa-circle"
                                                                                style="color: rgba(253, 175, 177, 1)"></i>
                                                                            페이지뷰</span>
                                                                        <i class="fa fa-circle"
                                                                            style="color: rgba(252, 95, 100,1)"></i> 방문자
                                                                    </div>
                                                                </div>
                                                                <div class="card-body border-top">
                                                                    <div class="holder">
                                                                        그래프
                                                                        <!-- <canvas id="stats_chart" width="199" height="99"
                                                                            style="width: 319px; height: 159px;"></canvas>
                                                                        <div class="chartjs_tooltip _chartjs_tooltip"
                                                                            style="opacity: 0; left: 123px; top: 180.417px; font-size: 14px; font-style: normal; position: absolute; background: rgb(255, 255, 255);">
                                                                            <div class="chartjs-tooltip-section"><span
                                                                                    class="chartjs-tooltip-key"
                                                                                    style="background-color:rgba(252, 95, 100,1)"></span><span
                                                                                    class="chartjs-tooltip-value">8</span>
                                                                            </div>
                                                                            <div class="chartjs-tooltip-section"><span
                                                                                    class="chartjs-tooltip-key"
                                                                                    style="background-color:rgba(253, 175, 177, 1)"></span><span
                                                                                    class="chartjs-tooltip-value">31</span>
                                                                            </div>
                                                                        </div> -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="ma-item col-md-6 col-sm-12 col-xs-12">
                                                            <div class="card">
                                                                <div class="card-head">
                                                                    <header><a
                                                                            href="/admin/stat/analytics?type=days&amp;year=2022&amp;month=10">일자별
                                                                            요약</a></header>
                                                                    <a class="float_r text-12 opacity-50 force-padding no-padding-y"
                                                                        href="/admin/stat/analytics?type=month&amp;year=2022">월별통계</a>
                                                                </div>
                                                                <div class="card-body no-padding border-top">
                                                                    <table class="table no-margin summary-table">
                                                                        <!-- 예약 또는 쇼핑 사용 -->
                                                                        <thead>
                                                                            <tr>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    일자</th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    주문수</th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    매출액 <a href="javascript:;"
                                                                                        class="text-gray" role="button"
                                                                                        data-toggle="popover"
                                                                                        data-placement="auto" title=""
                                                                                        data-html="true"
                                                                                        data-content="<table style='width:100%; line-height:1.4; vertical-align:top' class='table table-normal table-sm-padding no-margin'><tr><th style='width:25%' class='no-border-top'>집계시점</th><td class='no-border-top'>주문일 기준 결제완료된 주문</td></tr><tr><th>차감기준</th><td>취소,반품완료시 결제금액에서 환불금액만큼 차감</td></tr><tr><th>환불적용</th><td>취소,반품/환불시 주문일자 기준으로 처리</td></tr><tr><th>할인금액</th><td>적립금, 쿠폰 등은 매출금액에서 제외. 실결제금액에만 반영.</td></tr><tr><th>부분취소</th><td>부분취소 주문은 정확히 집계되지 않음(개선예정).</td></tr></table>"
                                                                                        data-original-title="매출액 계산 기준"><i
                                                                                            class="btm bt-question-circle"></i></a>
                                                                                </th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    방문자</th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    가입</th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    문의</th>
                                                                                <th
                                                                                    class="text-13 text-center opacity-50">
                                                                                    후기</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="today">
                                                                                <!-- 주단위 반복 -->
                                                                                <td class="text-left">2022-10-02</td>
                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0원</td>

                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0</td>

                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0</td>
                                                                            </tr><!-- // 주단위 반복 -->
                                                                            <tr class="">
                                                                                <!-- 주단위 반복 -->
                                                                                <td class="text-left">2022-10-01</td>
                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0원</td>

                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0</td>

                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0</td>
                                                                            </tr><!-- // 주단위 반복 -->
                                                                        </tbody>
                                                                        <tfoot>
                                                                            <tr>
                                                                                <td class="text-left no-border">최근 7일 합계
                                                                                </td>
                                                                                <td class="text-right no-border">0건</td>
                                                                                <td class="text-right no-border">0원</td>
                                                                                <td class="text-right no-border">0명</td>
                                                                                <td class="text-right no-border">0명</td>
                                                                                <td class="text-right no-border">0</td>
                                                                                <td class="text-right no-border">0</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-left">이번달 합계</td>
                                                                                <td class="text-right">0건</td>
                                                                                <td class="text-right">0원</td>
                                                                                <td class="text-right">0명</td>
                                                                                <td class="text-right ">0명</td>
                                                                                <td class="text-right">0</td>
                                                                                <td class="text-right">0</td>
                                                                            </tr>
                                                                        </tfoot>
                                                                    </table><!-- // 예약 또는 쇼핑 사용 -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row flex-box">
                                                        <div class="ma-item col-md-6 col-sm-6 col-xs-12">
                                                            <div class="card">
                                                                <div class="card-head">
                                                                    <header><a href="https://imweb.me/notice"
                                                                            target="_blank">서울체크인 소식</a></header>
                                                                    <a class="float_r text-12 opacity-50 force-padding no-padding-y"
                                                                        href="https://imweb.me/notice">더보기</a>
                                                                </div>
                                                                <div class="card-body border-top">
                                                                    <ul class="list list-preview">
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;812"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">9월
                                                                                    30일(금) 접속 문제 발생 안내 (조치완료) <span
                                                                                        class="text-default-bright list-badge header-badge badge-danger">N</span>
                                                                                </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-09-30</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;808"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    [서울체크인] 추석 연휴 휴무 공지 (9월 8일 단축 근무
                                                                                    포함) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-09-07</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;807"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    서울체크인 사이트 결제방식 변경에 대한 안내 (재공지)
                                                                                </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-09-02</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;805"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">9월
                                                                                    1일(목) 접속 문제 발생 안내 (조치완료) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-09-01</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;803"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    이모지 추가 등 8월 업데이트 노트 💝 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-08-31</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;799"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    안드로이드 앱 최신 업데이트 안내 (API 수준 31
                                                                                    타겟팅 의무화) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-08-23</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;798"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">8월
                                                                                    23일(화) 접속 문제 발생 안내 (조치완료) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-08-23</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;793"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    정기구독 전용 상품 등 7월 업데이트 노트 😎
                                                                                </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-07-29</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;789"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">7월
                                                                                    5일(화) 접속 문제 발생 안내 (조치완료) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-07-05</div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me/notice?view&amp;1&amp;786"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    카카오페이 구매 개선 등 5-6월 업데이트 소식 🙌
                                                                                </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2022-06-30</div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="ma-item col-md-6 col-sm-6 col-xs-12">
                                                            <div class="card">
                                                                <div class="card-head">
                                                                    <header><a href="https://imweb.me/faq">서울체크인
                                                                            가이드</a>
                                                                    </header>
                                                                    <a class="float_r text-12 opacity-50 force-padding no-padding-y"
                                                                        href="https://imweb.me/faq?mode=view&amp;category=28&amp;category2=31&amp;idx=5890"
                                                                        target="_blank">더보기</a>
                                                                </div>
                                                                <div class="card-body border-top">
                                                                    <ul class="list list-preview">
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=71507"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">빠른
                                                                                    디자인
                                                                                    시작 가이드 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2020-06-02
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=5890"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    디자인
                                                                                    모드란? </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=71396"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    서울체크인 웹
                                                                                    페이지의 구조 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2020-03-16
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=217"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">공통
                                                                                    디자인
                                                                                    설정하기 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=71181"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">메뉴
                                                                                    추가,
                                                                                    이동, 복제, 설정, 삭제하기 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-12-26
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=5904"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">위젯
                                                                                    추가,
                                                                                    이동, 복제, 설정, 삭제하기 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=5914"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    위젯별 기능
                                                                                    설명 (디자인 요소) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=5922"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    위젯별 기능
                                                                                    설명 (DB 요소) </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=189"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">
                                                                                    그리드
                                                                                    시스템이란? </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2019-11-12
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li class="tile" style="min-height:auto;">
                                                                            <a class="tile-content"
                                                                                href="https://imweb.me//faq?mode=view&amp;category=28&amp;category2=31&amp;idx=71502"
                                                                                target="_blank">
                                                                                <div class="tile-text no-padding">위젯
                                                                                    배치
                                                                                    및 그리드 실습 </div>
                                                                                <div class="tile-icon no-padding text-12 text-gray-bright"
                                                                                    style="min-width: 80px;">
                                                                                    2020-06-01
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin/admin.js"></script>
<script>

function errorPage(){
	alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
}
</script>

</html>