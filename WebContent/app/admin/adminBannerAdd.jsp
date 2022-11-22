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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/adminBannerAdd.css">
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
													class="text-gray">배너 추가</span>
												</a>
											</div>
										</li>
									</ul>
								</div>
								<div class="headerbar-right">
									<ul class="header-nav header-nav-options">
										<li class="hidden-xs"><a class="btn btn-danger"
											href="javascript:void(0);" onclick="send()"
											style="width: 110px; text-align: center;">저장</a></li>
										<li><a class="btn btn-secondary hidden-xs"
											href="/banner/adminBanner.bn" style="width: 115px;">취소</a> <a
											class="btn btn-bright hidden-sm hidden-md hidden-lg"
											href="//imweb.me/mysite" style="padding: 4px 6px;"><i
												class="btl bt-times vertical-middle"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</header>
					<main class="app_main flex_column">
						<!-- <div class="app_main_contextflex">
                            <div class="app_main_toolbar">
                            </div> -->
						<!-- <div class="app_main_context"> -->
						<!-- <div class="app_main_context_container"> -->
						<div id="content">
							<div id="alertBox" class="alert__wrap"></div>
							<section class="section-max-width">
								<div class="section-body">

									<!-- 입력화면 -->
									<div class="row">
										<div class="col-md-12">
											<div class="card" style="width: 800px; margin: 0 auto;">
												<div class="card-body">
													<form id="dof" method="post" enctype="multipart/form-data"
														class="form-horizontal form-validate" action=""
														role="form" target="hidden_frame" novalidate="novalidate">
														<input type="hidden" name="popup_idx" id="popup_idx"
															value="0"> <input type="hidden" name="img_name"
															id="img_name" value=""></form>


														<div class="form-group">
															<label class="col-sm-2 control-label" for="">노출
																페이지</label>
															<div class="col-sm-10">
																<label class="radio-inline radio-styled"> <input
																	type="radio" class="_show_page" name="show_page"
																	value="home" checked="checked"><span>홈
																		화면</span>
																</label>

																<div class="row _show_page_list">
																	<div class="col-sm-12">
																		<div
																			class="menu_tree alert alert-info _show_page_list_wrap"
																			style="display: none;">
																			<ul>

																				<li><label
																					class="checkbox-inline checkbox-styled"> <input
																						type="checkbox" class="" name="show_page_list"
																						value="m202209303571f27fcba1f"><span>Prologue</span>


																				</label></li>

																				<li><label
																					class="checkbox-inline checkbox-styled"> <input
																						type="checkbox" class="" name="show_page_list"
																						value="m202209303c752c131e13f"><span>Rooms</span>

																						<ul>

																							<li><label
																								class="checkbox-inline checkbox-styled">
																									<input type="checkbox" class=""
																									name="show_page_list"
																									value="m20220930825f09ec486ea"><span>Standard</span>


																							</label></li>

																							<li><label
																								class="checkbox-inline checkbox-styled">
																									<input type="checkbox" class=""
																									name="show_page_list"
																									value="m20220930b1a389c9b701e"><span>Deluxe</span>


																							</label></li>

																							<li><label
																								class="checkbox-inline checkbox-styled">
																									<input type="checkbox" class=""
																									name="show_page_list"
																									value="m20220930ae1a2629006a9"><span>Premire
																										Deluxe</span>


																							</label></li>

																						</ul>


																				</label></li>

																				<li><label
																					class="checkbox-inline checkbox-styled"> <input
																						type="checkbox" class="" name="show_page_list"
																						value="m2022093065f1da4d00f3a"><span>Location</span>


																				</label></li>

																				<li><label
																					class="checkbox-inline checkbox-styled"> <input
																						type="checkbox" class="" name="show_page_list"
																						value="m202209301211a8bddd353"><span>Notice</span>


																				</label></li>

																				<li><label
																					class="checkbox-inline checkbox-styled"> <input
																						type="checkbox" class="" name="show_page_list"
																						value="m20220930980ffbdbbf9d1"><span>Reservation</span>


																				</label></li>

																			</ul>

																			<ul>

																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>



														<div class="_popup_option_wrap form-group"
															style="display: none;">
															<label class="col-sm-2 control-label" for="">버튼
																설정</label>
															<div class="col-sm-10">
																<label class="radio-inline radio-styled"> <input
																	type="radio" class="_menu_btn" name="menu_btn"
																	value="Y" checked="checked"><span>배너 하단
																		버튼 표시</span>
																</label> <label class="radio-inline radio-styled"> <input
																	type="radio" class="_menu_btn" name="menu_btn"
																	value="N"><span>표시안함</span>
																</label>
															</div>
														</div>
														<div class="_popup_option_wrap form-group"
															style="display: none;">
															<label class="col-sm-2 control-label" for="">우측
																상단 닫기 설정</label>
															<div class="col-sm-10">
																<label class="radio-inline radio-styled"> <input
																	type="radio" class="_cls_btn" name="cls_btn"
																	value="close" checked="checked"><span>닫기</span>
																</label> <label class="radio-inline radio-styled"> <input
																	type="radio" class="_cls_btn" name="cls_btn"
																	value="close_today"><span>오늘 하루 다시 보지 않기</span>
																</label> <label class="radio-inline radio-styled"> <input
																	type="radio" class="_cls_btn" name="cls_btn"
																	value="none"><span>표시안함</span>
																</label>
															</div>
														</div>



														<div class="form-group _positon_center_options"
															style="display: none;">
															<label class="col-sm-2 control-label" for="">PC
																팝업 위치</label>
															<div class="col-sm-2">
																<select class="form-control position_horizontal_option"
																	name="position_horizontal_option"
																	id="position_horizontal_option">
																	<option value="center">가운데</option>42
																	<option value="browser_left">화면 왼쪽에서</option>58
																	<option value="browser_right">화면 오른쪽에서</option>62
																	<option value="body_left">본문 왼쪽에서</option>55
																	<option value="body_right">본문 오른쪽에서</option>59
																</select>
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<input type="text" class="form-control"
																	name="position_horizontal" id="position_horizontal"
																	value="">
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<select class="form-control" name="horizontal_unit"
																	id="horizontal_unit">
																	<option value="px">px</option>31
																	<option value="%">%</option>29
																</select>
																<div class="form-control-line"></div>
															</div>
															<label class="col-sm-2 control-label" for=""
																style="display: none;">화면 위쪽에서</label>
															<div class="col-sm-1" style="display: none;">
																<input type="text" class="form-control"
																	name="position_vertical" id="position_vertical"
																	value="">
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<select class="form-control" name="vertical_unit"
																	id="vertical_unit">
																	<option value="px">px</option>31
																	<option value="%">%</option>29
																</select>
																<div class="form-control-line"></div>
															</div>
														</div>

														<div class="form-group _positon_center_options on_mobile"
															style="display: none;">
															<label class="col-sm-2 control-label" for="">모바일
																팝업 위치</label>
															<div class="col-sm-2">
																<select class="form-control position_horizontal_option"
																	name="mobile_position_horizontal_option"
																	id="mobile_position_horizontal_option">
																	<option value="center">가운데</option>42
																	<option value="browser_left">화면 왼쪽에서</option>58
																	<option value="browser_right">화면 오른쪽에서</option>62
																	<option value="body_left">본문 왼쪽에서</option>55
																	<option value="body_right">본문 오른쪽에서</option>59
																</select>
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<input type="text" class="form-control"
																	name="mobile_position_horizontal"
																	id="mobile_position_horizontal" value="">
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<select class="form-control"
																	name="mobile_horizontal_unit"
																	id="mobile_horizontal_unit">
																	<option value="px">px</option>31
																	<option value="%">%</option>29
																</select>
																<div class="form-control-line"></div>
															</div>
															<label class="col-sm-2 control-label" for=""
																style="display: none;">화면 위쪽에서</label>
															<div class="col-sm-1" style="display: none;">
																<input type="text" class="form-control"
																	name="mobile_position_vertical"
																	id="mobile_position_vertical" value="100">
																<div class="form-control-line"></div>
															</div>
															<div class="col-sm-1" style="display: none;">
																<select class="form-control" name="mobile_vertical_unit"
																	id="mobile_vertical_unit">
																	<option value="px">px</option>31
																	<option value="%">%</option>29
																</select>
																<div class="form-control-line"></div>
															</div>
														</div>


														<input type="hidden" name="content_type" value="image">

														<div class="_body_image_options">
															<div class="form-group">
																<label class="col-sm-2 control-label">이미지</label>
																<div class="col-sm-4">
																	<div class="wrap-image-upload ">
																		<!-- 파일 첨부 후 .image-include 추가 -->
																		<div class="image-list" id="icon_img_wrap"
																			style="display: none">
																			<div class="item">
																				<img src="" id="icon_src"> <a
																					href="javascript:;" class="close"
																					onclick="removeImg('icon')"><i
																					class="zmdi zmdi-close"></i></a>
																			</div>
																		</div>
																		<div class="wrap-upload-button btn-file"
																			id="icon_img_upload_wrap" style="display: block">
																			<button class="btn-image-upload" role="button">
																				<div class="btn-content">
																					<p class="icon">
																						<i class="fa fa-picture-o"></i>
																						<!--파일 첨부 후 .fa-plus로 변환 -->
																					</p>
																					<div>
																						<!-- 이미지를 여기로 드래그 </div> -->
																					</div>
																				</div>
																			</button>
																			<form id="addBannerForm" name="inputBannerForm" action="/banner/addOkBanner.bn" method="post" enctype="multipart/form-data">
																				<a href="javascript: ;">
																				<label>
																					<input type="file" name="bannerName" id="icon_img" style="display: none;">
																					<img src="${pageContext.request.contextPath}/assets/images/admin/no-image.JPG"
																						id="thumbnail" style="width: 300px; height: 250px;">
																				</label>
																				</a>
																			</form>
																		</div>
																	</div>
																</div>
															</div>

															<div class="_popup_option_wrap" style="display: none;">
																<div class="form-group">
																	<label class="col-sm-2 control-label">너비</label>
																	<div class="col-sm-2 width-3">
																		<div class="input-group-content">
																			<input type="text" class="form-control"
																				name="img_width" id="img_width" value="320">
																			<div class="form-control-line"></div>
																		</div>
																	</div>
																</div>
																<div class="form-group on_mobile" style="display: none;">
																	<label class="col-sm-2 control-label">모바일 배너 너비</label>
																	<div class="col-sm-2 width-3">
																		<div class="input-group-content">
																			<input type="text" class="form-control"
																				name="mobile_width" id="mobile_width" value="auto">
																			<div class="form-control-line"></div>
																		</div>
																		<div
																			class="input-group-addon opacity-100 no-padding-y">
																			px</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="_body_html_options" style="display: none;">
															<div class="form-group">
																<label class="col-sm-2 control-label"></label>
																<div class="col-sm-10">
																	<div class="_body_html_editor"></div>
																</div>
															</div>
														</div>
														<!-- end 에디터 선택시 -->
												</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<label for="addBannerForm">
										<button type="button" onclick="send()" class="btn btn-primary">저장</button>
									</label>
								</div>
							</section>
							<!--섹션 끝 -->
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

	function send() {
		var form = document.inputBannerForm;
		var $img = $("#thumbnail").attr('src');
		var $input = $("#icon_img");
		
		if(!$input){return;}
		
		form.submit();
	}
	
	function errorPage(){
		alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
	}
</script>
</html>