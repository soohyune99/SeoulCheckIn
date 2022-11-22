<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/adminCommunityManage.css">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css"
	rel="stylesheet">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/NanumSoMiCe.css"
	rel="stylesheet">

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
													class="location_text margin-right-lg"> <span
													class="text-gray">게시판 관리</span>
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</header>
					<main class="app_main flex_column">
						<div class="app_main_context">
							<div class="app_main_context_container">
								<div id="content" class="dashboard_main">
									<div id="alertBox" class="alert__wrap"></div>
									<section>
										<div class="section-body">
											<div class="tab-pane" id="daily">
												<style>
@media ( max-width : 768px) {
	.li_table>ul.content>li.check {
		left: 8px;
	}
	.li_table>ul.content>li.lang_icon {
		position: absolute;
		left: 40px;
		top: 12px;
	}
	.li_table>ul.content>li.title, .li_table>ul.content>li.author, .li_table>ul.content>li.date
		{
		padding-left: 78px;
	}
	.li_table>ul.content>li.date {
		clear: both;
	}
	.li_table>ul.content.gallery>li.title {
		padding: 28px 0 4px 48px;
	}
	.li_table>ul.content.gallery>li.based {
		padding-left: 48px;
	}
	.li_table>ul.content.gallery>li.date {
		clear: unset;
		padding-left: 8px;
	}
}
</style>

												<div class="row">

													<div class="col-md-3 hidden-xs hidden-sm">
														<div class="card">
															<div class="card-body no-padding">
																<ul
																	class="nav nav-pills nav-stacked sortable_list _sortable_list ui-sortable">
																	<li class="active"><a
																		href="/board/adminboard.bo?boardCategory=kBoard">
																			전체 게시물 <small id="total_list_comment_count"
																			class="margin-left-lg text-bold opacity-75">${ktotal + etotal}</small>
																	</a></li>
																	<li class="" id="board_item_b202209300c8fb2668dfc0"
																		data-code="b202209300c8fb2668dfc0">
																		<div>
																			<ul>
																				<li><a
																					href="/board/adminboard.bo?boardCategory=kBoard">한국어
																						게시물 ${ktotal}</a></li>
																				<li><a
																					href="/board/adminboard.bo?boardCategory=eBoard">영어
																						게시물 ${etotal}</a></li>
																			</ul>
																		</div>
																		<div class="drag _sortable_handle ui-sortable-handle">
																		</div> <!-- <a
                                                                            href="/admin/contents/post/?q=YToxOntzOjk6ImlkeF9vcmRlciI7czo0OiJkZXNjIjt9&amp;board_code=b202209300c8fb2668dfc0&amp;page_load=on"><img
                                                                                src="https://llalla.imweb.me/common/img/flag_shapes/flag_kr_circle.png"
                                                                                width="20px">News 
                                                                            <small
                                                                                id="list_comment_count_b202209300c8fb2668dfc0"
                                                                                class="margin-left-lg text-bold opacity-75">
                                                                            </small>
                                                                            <button
                                                                                class="pull-right btn btn-flat no-padding hover-visible"
                                                                                onclick="adminContents.openBoardForm('b202209300c8fb2668dfc0'); return false;"><i
                                                                                    class="zmdi zmdi-settings"></i>
                                                                                </button>
                                                                            </a> -->
																	</li>
																</ul>
															</div>
															<!--end.card-body-->
														</div>
														<!--end.card-->
													</div>
													<!--end.col-->

													<div class="col-md-3 hidden-md hidden-lg">
														<div class="card">
															<div class="card-body sm-padding-y">
																<select class="form-control no-border">
																	<option value="">전체 게시물(0)</option>
																</select>
															</div>
														</div>
													</div>
													<div class="col-md-9">
														<div class="row">
															<!-- <div class="col-md-12">
																<div class="card">
																	<div class="card-body no-padding">
																		<form role="search" class="user-search">
																			<div class="form-group" style="display: flex;">
																				<label for="postSearch" class="icon_set left">
																					<svg width="24" height="24" viewBox="0 0 24 24"
																						fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                        <rect
																							opacity="0.5" x="17.0365" y="15.1223"
																							width="8.15546" height="2" rx="1"
																							transform="rotate(45 17.0365 15.1223)"
																							fill="currentColor"></rect>
                                                                                        <path
																							d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z"
																							fill="currentColor"></path>
                                                                                    </svg>
																				</label>
																				<div id="prefetch">
																					<input type="text" placeholder="작성자, 제목 검색"
																						id="postSearch" name="keyword"
																						class="form-control typeahead">
																				</div>
																			</div>
																		</form>
																	</div>
																</div>
															</div> -->
															<div class="col-md-12">
																<div class="card">
																	<div class="card-head">
																		<header class="small">
																			게시물 <span id="comment_count" class="text-primary">0</span>
																		</header>
																		<a href="javascript:deleteBoard();"
																			class="btn btn-default-bright btn-sm-padding"
																			>삭제</a>
																	</div>
																	<div class="card-body no-padding">
																		<div class="li_table" id="UI_TABLE">
																			<div class="li_table_content">
																				<table style="width: 100%">
																					<tr class="subject"
																						style="border-bottom: 1px solid lightgray">
																						<td class="check"
																							style="width: 35px; padding: 10px 0px 10px 0px">
																							<div class="checkbox checkbox-styled no-margin">
																								<label> <input type="checkbox" value=""
																									class="_all_check form-check-input total"
																									onclick="TABLE_LIST.allCheckToggle()"><span></span>
																								</label>
																							</div>
																						</td>
																						<td class="number" style="width: 40px;">No.</td>
																						<td class="category hidden-xs hidden-sm"
																							style="width: 80px;">카테고리
																							</li>
																						<td class="title" style="width: 120px;">제목</td>
																						<td class="content" style="width: 224px;">내용</td>
																						<td class="author" style="width: 60px">작성자</td>
																						<td class="date" style="width: 60px">작성일</td>
																						<td class="photo" style="width: 60px">첨부사진</td>
																					</tr>
																					<tbody>
																						<c:if
																							test="${param.boardCategory == 'kBoard' or param.boardCategory == null}">
																							<c:choose>
																								<c:when
																									test="${kboards != null and fn:length(kboards) > 0}">
																									<c:forEach var="kboard" items="${kboards}">
																										<tr class="posting row_board"
																											style="width: 100%">
																											<td class="check" style="width: 60px;">
																												<div style="width: 60px; margin: 0 auto"
																													class="form-check form-check-sm form-check-custom form-check-solid">
																													<input class="form-check-input checkbox"
																														type="checkbox" value="${kboard}">
																												</div>
																											</td>
																											<td class="board_list_value number"
																												style="width: 60px;"><c:out
																													value=" ${kboard.getkBoardNumber()}" /></td>
																											<td class="board_list_value number"
																												style="width: 80px;"><c:out
																													value=" 한국어게시판" /></td>
																											<td class="board_list_value"
																												style="width: 120px;"><c:out
																													value="${kboard.getkBoardTitle()}" /></td>
																											<td class="board_list_value"
																												style="width: 140px;"><c:out
																													value="${kboard.getkBoardArticle()}" /></td>
																											<td class="board_list_value"
																												style="width: 40px"><c:out
																													value="${kboard.getMemberName()}" /></td>
																											<td class="board_list_value"
																												style="width: 120px"><c:out
																													value="${kboard.getkBoardDate()}" /></td>
																											<td class="board_list_value"
																												style="width: 120px"><c:out
																													value="${kboard.getkBoardPhoto() == null ? '없음' : kboard.getkBoardPhoto()}" /></td>
																											</td>
																										</tr>
																									</c:forEach>
																								</c:when>
																								<c:otherwise>
																									<tr>
																										<td colspan="7" align="center" style="height:70px;">게시된 글이
																											없습니다.
																											</li>
																									</tr>
																								</c:otherwise>
																							</c:choose>
																						</c:if>
																						<c:if test="${param.boardCategory == 'eBoard'}">
																							<c:choose>
																								<c:when
																									test="${eboards != null and fn:length(eboards) > 0}">
																									<c:forEach var="eboard" items="${eboards}">
																										<tr class="posting row_board style="
																											border-bottom : 1px solid
																											lightgray""
																											style="width: 100%">
																											<td class="check" style="width: 60px;">
																												<div style="width: 60px; margin: 0 auto"
																													class="form-check form-check-sm form-check-custom form-check-solid">
																													<input class="form-check-input checkbox"
																														type="checkbox" value="${eboard}">
																												</div>
																											</td>
																											<td class="board_list_value number"
																												style="width: 60px;"><c:out
																													value=" ${eboard.geteBoardNumber()}" /></td>
																											<td class="board_list_value number"
																												style="width: 80px;"><c:out
																													value=" 외국어게시판" /></td>
																											<td class="board_list_value"
																												style="width: 120px;"><c:out
																													value="${eboard.geteBoardTitle()}" /></td>
																											<td class="board_list_value"
																												style="width: 140px;"><c:out
																													value="${eboard.geteBoardArticle()}" /></td>
																											<td class="board_list_value"
																												style="width: 40px"><c:out
																													value="${eboard.getMemberName()}" /></td>
																											<td class="board_list_value"
																												style="width: 120px"><c:out
																													value="${eboard.geteBoardDate()}" /></td>
																											<td class="board_list_value"
																												style="width: 120px"><c:out
																													value="${eboard.geteBoardPhoto() == null ? '없음' : eboard.geteBoardPhoto()}" /></td>
																											</td>
																										</tr>
																									</c:forEach>
																								</c:when>
																								<c:otherwise>
																									<tr>
																										<td colspan="7" align="center">게시된 글이 없습니다.</td>
																									</tr>
																								</c:otherwise>
																							</c:choose>
																						</c:if>
																					</tbody>
																				</table>
																				<!--  <ul class="posting">
                                                                                    <li class="check">
                                                                                        <div
                                                                                            class="checkbox checkbox-styled no-margin">
                                                                                            <label>
                                                                                                <input type="checkbox"
                                                                                                    value=""
                                                                                                    class="_all_check"
                                                                                                    onclick="TABLE_LIST.allCheckToggle()"><span></span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </li>
                                                                                    <li class="number">1</li>
                                                                                    <li class="dategory">한국어</li>
                                                                                    <li class="title">흑흑</li>
                                                                                    <li class="author">Seong</li>
                                                                                    <li class="date">2022.10.05</li>
                                                                                    <li class="like">4</li>
                                                                                    <li class="view">4</li>
                                                                                </ul> -->
																			</div>
																		</div>
																		<!--end.li_table-->
																		<nav class="text-center"></nav>
																	</div>
																	<!--end.card-body-->
																	<c:if
																		test="${param.boardCategory == 'kBoard' or param.boardCategory == null}">
																		<table style="font-size: 15px; margin: 0 auto;">
																			<tr align="center" valign="middle">
																				<td class="web-view" style="padding: 15px;">
																					<c:if test="${kPrev}">
																						<a href="${pageContext.request.contextPath}/board/adminboard.bo?page=${kStartPage - 1}">&lt;</a>
																					</c:if> <c:forEach var="i" begin="${kStartPage}" end="${kEndPage}">
																						<c:choose>
																							<c:when test="${not (i eq page)}">
																								<a href="${pageContext.request.contextPath}/board/adminboard.bo?page=${i}">
																									<c:out value="${i}" />&nbsp;&nbsp;
																								</a>
																							</c:when>
																							<c:otherwise>
																								<c:out value="${i}" />&nbsp;&nbsp;
																							</c:otherwise>
																						</c:choose>
																					</c:forEach>
																					<c:if test="${kNext}">
																						<a href="${pageContext.request.contextPath}/board/adminboard.bo?page=${kEndPage + 1}">&gt;</a>
																					</c:if>
																				</td>
																			</tr>
																		</table>
																	</c:if>
																	<c:if test="${param.boardCategory == 'eBoard'}">
																		<table style="font-size: 15px; margin: 0 auto;">
																			<tr align="center" valign="middle">
																				<td class="web-view" style="padding: 15px;"><c:if
																						test="${ePrev}">
																						<a
																							href="${pageContext.request.contextPath}/board/adminboard.bo?boardCategory=eBoard&page=${eStartPage - 1}">&lt;</a>
																					</c:if> <c:forEach var="i" begin="${eStartPage}"
																						end="${eEndPage}">
																						<c:choose>
																							<c:when test="${not (i eq page)}">
																								<a
																									href="${pageContext.request.contextPath}/board/adminboard.bo?boardCategory=eBoard&page=${i}">
																									<c:out value="${i}" />&nbsp;&nbsp;
																								</a>
																							</c:when>
																							<c:otherwise>
																								<c:out value="${i}" />&nbsp;&nbsp;
																						</c:otherwise>
																						</c:choose>
																					</c:forEach> <c:if test="${eNext}">
																						<a
																							href="${pageContext.request.contextPath}/board/adminboard.bo?boardCategory=eBoard&page=${eEndPage + 1}">&gt;</a>
																					</c:if></td>
																			</tr>
																		</table>
																	</c:if>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--end.tab-pane-->
										</div>
										<!--end.section-body.tab-content-->
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
<script
	src="${pageContext.request.contextPath}/assets/js/admin/admin.js"></script>
<script>

	//리스트 체크박스
	var $checkboxes = $(".form-check-input.checkbox");
	
	function deleteBoard() {
			if ($checkboxes.filter(":checked").length == 0) {
				alert("삭제할 프로그램을 선택하세요.");
				return;
			}
			
			var $deleteData = $checkboxes.filter(":checked").closest('.row_board').find('.board_list_value.number').text();
			
			console.log($deleteData)
			
			$.ajax({
				url : "/board/admindeleteBoard.bo",
				data : {boardNumber : $deleteData}, 
				success : function(data) {
					console.log("삭제")
					location.reload();
				}
			});
	}
	
	function errorPage(){
		alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
	}
	
</script>

</html>