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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/adminUserManage.css">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css"
	rel="stylesheet">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/NanumSoMiCe.css"
	rel="stylesheet">
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
												class="text-gray">회원 관리</span>
											</a>
										</div>
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
								<div id="alertBox" class="alert__wrap"></div>
								<section>
									<div class="clearfix area_wrap">
										<div class="section-body float_l">
											<div class="app-main flex-column flex-row-fluid"
												id="kt_app_main">

												<div class="d-flex flex-column flex-column-fluid">

													<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6"
														data-select2-id="select2-data-kt_app_toolbar">
														<!--begin::Toolbar container-->
														<div id="kt_app_toolbar_container"
															class="app-container container-xxl d-flex flex-stack"
															data-select2-id="select2-data-kt_app_toolbar_container">
															<!--begin::Page title-->
															<div
																class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
																<!--begin::Title-->
																<h1
																	class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">
																	회원 목록</h1>
																<!--end::Title-->
																<!--begin::Breadcrumb-->
															</div>
															<!--end::Page title-->
															<!--begin::Actions-->

															<!--end::Actions-->
														</div>
														<!--end::Toolbar container-->
													</div>


													<div id="kt_app_content"
														class="app-content flex-column-fluid">

														<div id="kt_app_content_container"
															class="app-container container-xxl">

															<div class="card">

																<div class="card-header border-0 pt-6">
																	<div class="card-title">
																		<!--begin::Search-->
																		<!-- <div
																			class="d-flex align-items-center position-relative my-1">
																			begin::Svg Icon | path: icons/duotune/general/gen021.svg
																			<span
																				class="svg-icon svg-icon-1 position-absolute ms-6">
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
																			</span>
																			end::Svg Icon
																			<input type="text"
																				data-kt-customer-table-filter="search"
																				class="form-control form-control-solid w-250px ps-15"
																				placeholder="Search Users">
																		</div> -->
																		<!--end::Search-->
																	</div>
																	<div class="card-toolbar">
																		<div class="d-flex justify-content-end"
																			data-kt-customer-table-toolbar="base">
																			<!-- <button type="button"
																				class="btn btn-light-primary me-3"
																				data-kt-menu-trigger="click"
																				data-kt-menu-placement="bottom-end">
																				begin::Svg Icon | path: icons/duotune/general/gen031.svg
																				<span class="svg-icon svg-icon-2"> <svg
																						width="24" height="24" viewBox="0 0 24 24"
																						fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                            <path
																							d="M19.0759 3H4.72777C3.95892 3 3.47768 3.83148 3.86067 4.49814L8.56967 12.6949C9.17923 13.7559 9.5 14.9582 9.5 16.1819V19.5072C9.5 20.2189 10.2223 20.7028 10.8805 20.432L13.8805 19.1977C14.2553 19.0435 14.5 18.6783 14.5 18.273V13.8372C14.5 12.8089 14.8171 11.8056 15.408 10.964L19.8943 4.57465C20.3596 3.912 19.8856 3 19.0759 3Z"
																							fill="currentColor">
                                                                                            </path>
                                                                                        </svg>
																				</span>
																				end::Svg Icon
																				Filter
																			</button> -->

																			<div
																				class="menu menu-sub menu-sub-dropdown w-300px w-md-325px"
																				data-kt-menu="true" id="kt-toolbar-filter">
																				<!--begin::Header-->
																				<div class="px-7 py-5">
																					<div class="fs-4 text-dark fw-bold">Filter
																						Options</div>
																				</div>
																				<!--end::Header-->
																				<!--begin::Separator-->
																				<div class="separator border-gray-200"></div>
																				<!--end::Separator-->
																				<!--begin::Content-->
																				<div class="px-7 py-5">
																					<!--begin::Input group-->
																					<div class="mb-10">
																						<!--begin::Label-->
																						<label class="form-label fs-5 fw-semibold mb-3">Month:</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<select
																							class="form-select form-select-solid fw-bold select2-hidden-accessible"
																							data-kt-select2="true"
																							data-placeholder="Select option"
																							data-allow-clear="true"
																							data-kt-customer-table-filter="month"
																							data-dropdown-parent="#kt-toolbar-filter"
																							data-select2-id="select2-data-10-x29o"
																							tabindex="-1" aria-hidden="true"
																							data-kt-initialized="1">
																							<option data-select2-id="select2-data-12-wejo">
																							</option>
																							<option value="aug">August</option>
																							<option value="sep">September</option>
																							<option value="oct">October</option>
																							<option value="nov">November</option>
																							<option value="dec">December</option>
																						</select><span
																							class="select2 select2-container select2-container--bootstrap5"
																							dir="ltr" data-select2-id="select2-data-11-aot5"
																							style="width: 100%;"><span
																							class="selection"><span
																								class="select2-selection select2-selection--single form-select form-select-solid fw-bold"
																								role="combobox" aria-haspopup="true"
																								aria-expanded="false" tabindex="0"
																								aria-disabled="false"
																								aria-labelledby="select2-b3pi-container"
																								aria-controls="select2-b3pi-container"><span
																									class="select2-selection__rendered"
																									id="select2-b3pi-container" role="textbox"
																									aria-readonly="true" title="Select option"><span
																										class="select2-selection__placeholder">Select
																											option</span></span><span class="select2-selection__arrow"
																									role="presentation"><b
																										role="presentation"></b></span></span></span><span
																							class="dropdown-wrapper" aria-hidden="true"></span></span>
																						<!--end::Input-->
																					</div>
																					<!--end::Input group-->
																					<!--begin::Input group-->
																					<div class="mb-10">
																						<!--begin::Label-->
																						<label class="form-label fs-5 fw-semibold mb-3">Payment
																							Type:</label>
																						<!--end::Label-->
																						<!--begin::Options-->
																						<div
																							class="d-flex flex-column flex-wrap fw-semibold"
																							data-kt-customer-table-filter="payment_type">
																							<!--begin::Option-->
																							<label
																								class="form-check form-check-sm form-check-custom form-check-solid mb-3 me-5">
																								<input class="form-check-input" type="radio"
																								name="payment_type" value="all"
																								checked="checked"> <span
																								class="form-check-label text-gray-600">All</span>
																							</label>
																							<!--end::Option-->
																							<!--begin::Option-->
																							<label
																								class="form-check form-check-sm form-check-custom form-check-solid mb-3 me-5">
																								<input class="form-check-input" type="radio"
																								name="payment_type" value="visa"> <span
																								class="form-check-label text-gray-600">Visa</span>
																							</label>
																							<!--end::Option-->
																							<!--begin::Option-->
																							<label
																								class="form-check form-check-sm form-check-custom form-check-solid mb-3">
																								<input class="form-check-input" type="radio"
																								name="payment_type" value="mastercard">
																								<span class="form-check-label text-gray-600">Mastercard</span>
																							</label>
																							<!--end::Option-->
																							<!--begin::Option-->
																							<label
																								class="form-check form-check-sm form-check-custom form-check-solid">
																								<input class="form-check-input" type="radio"
																								name="payment_type" value="american_express">
																								<span class="form-check-label text-gray-600">American
																									Express</span>
																							</label>
																							<!--end::Option-->
																						</div>
																						<!--end::Options-->
																					</div>
																					<!--end::Input group-->
																					<!--begin::Actions-->
																					<div class="d-flex justify-content-end">
																						<button type="reset"
																							class="btn btn-light btn-active-light-primary me-2"
																							data-kt-menu-dismiss="true"
																							data-kt-customer-table-filter="reset">Reset</button>
																						<button type="submit" class="btn btn-primary"
																							data-kt-menu-dismiss="true"
																							data-kt-customer-table-filter="filter">Apply</button>
																					</div>
																					<!--end::Actions-->
																				</div>
																				<!--end::Content-->
																			</div>



																			<button type="button" id="deleteMemberButton" class="btn btn-primary"
																				data-bs-toggle="modal"
																				data-bs-target="#kt_modal_add_customer">Delete
																				User</button>

																		</div>
																	</div>
																</div>
																<div class="card-body pt-0">
																	<!--begin::Table-->
																	<div id="kt_customers_table_wrapper"
																		class="dataTables_wrapper dt-bootstrap4 no-footer">
																		<div class="table-responsive">
																			<table
																				class="table align-middle table-row-dashed fs-6 gy-5 dataTable no-footer"
																				id="kt_customers_table">
																				<!--begin::Table head-->
																				<thead>
																					<!--begin::Table row-->
																					<tr
																						class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
																						<th class="w-10px pe-2 sorting_disabled"
																							rowspan="1" colspan="1" aria-label=""
																							style="width: 29.9px;">
																							<div
																								class="form-check form-check-sm form-check-custom form-check-solid me-3">
																								<input class="form-check-input total"
																									type="checkbox" data-kt-check="true"
																									data-kt-check-target="#kt_customers_table .form-check-input"
																									value="1">
																							</div>
																						</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Customer Name: activate to sort column ascending">
																							No.</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Email: activate to sort column ascending">
																							분류</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Company: activate to sort column ascending"">
																							Email</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Payment Method: activate to sort column ascending">
																							이름</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Created Date: activate to sort column ascending">
																							연락처</th>
																						<th class="text-end min-w-70px sorting_disabled"
																							rowspan="1" colspan="1" aria-label="Actions">
																							프로필</th>
																					</tr>
																					<!--end::Table row-->
																				</thead>
																				<!--end::Table head-->
																				<!--begin::Table body-->
																				<tbody class="fw-semibold text-gray-600">
																					<c:choose>
																						<c:when
																							test="${members != null and fn:length(members) > 0}">
																							<c:forEach var="member" items="${members}">
																								<tr class="row_member">
																									<td style="width: 35px;">
																										<div
																											class="form-check form-check-sm form-check-custom form-check-solid">
																											<input class="form-check-input checkbox"
																												type="checkbox" value="${member}">
																										</div>
																									</td>
																									<td class="member_list_value number"
																										style="width: 40px;"><c:out
																											value=" ${member.getMemberNumber()}" /></td>
																									<td class="member_list_value number"
																										style="width: 40px;"><c:out
																											value=" ${member.getMemberClassification()}" /></td>
																									<td class="member_list_value"
																										style="width: 70px;"><c:out
																											value="${member.getMemberEmail()}" /></td>
																									<td class="member_list_value"
																										style="width: 50px;"><c:out
																											value="${member.getMemberName()}" /></td>
																									<td class="member_list_value"
																										style="width: 70px;"><c:out
																											value="${member.getMemberPhone()}" /></td>
																									<td class="member_list_value"
																										style="width: 80px"><c:out
																											value="${member.getMemberPhoto()}" /></td>
																									</td>
																								</tr>
																							</c:forEach>
																						</c:when>
																						<c:otherwise>
																							<tr>
																								<td colspan="7" align="center">가입된 회원이
																									없습니다.</td>
																							</tr>
																						</c:otherwise>
																					</c:choose>


																				</tbody>
																				<!--end::Table body-->
																			</table>
																		</div>
																		<div class="row">
																			<div
																				class="col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start">
																				<div class="dataTables_length"
																					id="kt_customers_table_length"></div>
																			</div>
																			<div
																				class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end">
																				<div
																					class="dataTables_paginate paging_simple_numbers"
																					id="kt_customers_table_paginate">
																					<table style="font-size: 1.3rem">
																						<tr align="center" valign="middle">
																							<td class="web-view"><c:if test="${prev}">
																									<a
																										href="${pageContext.request.contextPath}/member/memberlist.me?page=${startPage - 1}">&lt;</a>
																								</c:if> <c:forEach var="i" begin="${startPage}"
																									end="${endPage}">
																									<c:choose>
																										<c:when test="${not (i eq page)}">
																											<a
																												href="${pageContext.request.contextPath}/member/memberlist.me?page=${i}">
																												<c:out value="${i}" />&nbsp;&nbsp;
																											</a>
																										</c:when>
																										<c:otherwise>
																											<c:out value="${i}" />&nbsp;&nbsp;
																										</c:otherwise>
																									</c:choose>
																								</c:forEach> <c:if test="${next}">
																									<a
																										href="${pageContext.request.contextPath}/member/memberlist.me?page=${endPage + 1}">&gt;</a>
																								</c:if></td>
																						</tr>
																					</table>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!--end::Table-->
																</div>

															</div>



															<div class="modal fade" id="kt_modal_add_customer"
																tabindex="-1" aria-hidden="true">
																<!--begin::Modal dialog-->
																<div class="modal-dialog modal-dialog-centered mw-650px">
																	<!--begin::Modal content-->
																	<div class="modal-content">
																		<!--begin::Form-->
																		<form
																			class="form fv-plugins-bootstrap5 fv-plugins-framework"
																			action="#" id="kt_modal_add_customer_form"
																			data-kt-redirect="/metronic8/demo1/../demo1/apps/customers/list.html">
																			<!--begin::Modal header-->
																			<div class="modal-header"
																				id="kt_modal_add_customer_header">
																				<!--begin::Modal title-->
																				<h2 class="fw-bold">Add a Customer</h2>
																				<!--end::Modal title-->
																				<!--begin::Close-->
																				<div id="kt_modal_add_customer_close"
																					class="btn btn-icon btn-sm btn-active-icon-primary">
																					<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
																					<span class="svg-icon svg-icon-1"> <svg
																							width="24" height="24" viewBox="0 0 24 24"
																							fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                                <rect
																								opacity="0.5" x="6" y="17.3137" width="16"
																								height="2" rx="1"
																								transform="rotate(-45 6 17.3137)"
																								fill="currentColor">
                                                                                                </rect>
                                                                                                <rect
																								x="7.41422" y="6" width="16" height="2" rx="1"
																								transform="rotate(45 7.41422 6)"
																								fill="currentColor">
                                                                                                </rect>
                                                                                            </svg>
																					</span>
																					<!--end::Svg Icon-->
																				</div>
																				<!--end::Close-->
																			</div>
																			<!--end::Modal header-->
																			<!--begin::Modal body-->
																			<div class="modal-body py-10 px-lg-17">
																				<!--begin::Scroll-->
																				<div class="scroll-y me-n7 pe-7"
																					id="kt_modal_add_customer_scroll"
																					data-kt-scroll="true"
																					data-kt-scroll-activate="{default: false, lg: true}"
																					data-kt-scroll-max-height="auto"
																					data-kt-scroll-dependencies="#kt_modal_add_customer_header"
																					data-kt-scroll-wrappers="#kt_modal_add_customer_scroll"
																					data-kt-scroll-offset="300px"
																					style="max-height: 662px;">
																					<!--begin::Input group-->
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<label class="required fs-6 fw-semibold mb-2">Name</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="name" value="Sean Bean">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<!--end::Input group-->
																					<!--begin::Input group-->
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2"> <span
																							class="required">Email</span> <i
																							class="fas fa-exclamation-circle ms-1 fs-7"
																							data-bs-toggle="tooltip"
																							aria-label="Email address must be active"
																							data-kt-initialized="1"></i>
																						</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="email"
																							class="form-control form-control-solid"
																							placeholder="" name="email"
																							value="sean@dellito.com">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<!--end::Input group-->
																					<!--begin::Input group-->
																					<div class="fv-row mb-15">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2">Description</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="description">
																						<!--end::Input-->
																					</div>
																					<!--end::Input group-->
																					<!--begin::Billing toggle-->
																					<div class="fw-bold fs-3 rotate collapsible mb-7"
																						data-bs-toggle="collapse"
																						href="#kt_modal_add_customer_billing_info"
																						role="button" aria-expanded="false"
																						aria-controls="kt_customer_view_details">
																						Shipping Information <span class="ms-2 rotate-180">
																							<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
																							<span class="svg-icon svg-icon-3"> <svg
																									width="24" height="24" viewBox="0 0 24 24"
																									fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                                        <path
																										d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
																										fill="currentColor">
                                                                                                        </path>
                                                                                                    </svg>
																						</span> <!--end::Svg Icon-->
																						</span>
																					</div>
																					<!--end::Billing toggle-->
																					<!--begin::Billing form-->
																					<div id="kt_modal_add_customer_billing_info"
																						class="collapse show">
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Label-->
																							<label class="required fs-6 fw-semibold mb-2">Address
																								Line 1</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="address1"
																								value="101, Collins Street">
																							<!--end::Input-->
																							<div
																								class="fv-plugins-message-container invalid-feedback">
																							</div>
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div class="d-flex flex-column mb-7 fv-row">
																							<!--begin::Label-->
																							<label class="fs-6 fw-semibold mb-2">Address
																								Line 2</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="address2" value="">
																							<!--end::Input-->
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Label-->
																							<label class="required fs-6 fw-semibold mb-2">Town</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="city" value="Melbourne">
																							<!--end::Input-->
																							<div
																								class="fv-plugins-message-container invalid-feedback">
																							</div>
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div class="row g-9 mb-7">
																							<!--begin::Col-->
																							<div
																								class="col-md-6 fv-row fv-plugins-icon-container">
																								<!--begin::Label-->
																								<label class="required fs-6 fw-semibold mb-2">State
																									/ Province</label>
																								<!--end::Label-->
																								<!--begin::Input-->
																								<input class="form-control form-control-solid"
																									placeholder="" name="state" value="Victoria">
																								<!--end::Input-->
																								<div
																									class="fv-plugins-message-container invalid-feedback">
																								</div>
																							</div>
																							<!--end::Col-->
																							<!--begin::Col-->
																							<div
																								class="col-md-6 fv-row fv-plugins-icon-container">
																								<!--begin::Label-->
																								<label class="required fs-6 fw-semibold mb-2">Post
																									Code</label>
																								<!--end::Label-->
																								<!--begin::Input-->
																								<input class="form-control form-control-solid"
																									placeholder="" name="postcode" value="3000">
																								<!--end::Input-->
																								<div
																									class="fv-plugins-message-container invalid-feedback">
																								</div>
																							</div>
																							<!--end::Col-->
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Label-->
																							<label class="fs-6 fw-semibold mb-2"> <span
																								class="required">Country</span> <i
																								class="fas fa-exclamation-circle ms-1 fs-7"
																								data-bs-toggle="tooltip"
																								aria-label="Country of origination"
																								data-kt-initialized="1"></i>
																							</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<select name="country"
																								aria-label="Select a Country"
																								data-control="select2"
																								data-placeholder="Select a Country..."
																								data-dropdown-parent="#kt_modal_add_customer"
																								class="form-select form-select-solid fw-bold select2-hidden-accessible"
																								data-select2-id="select2-data-13-9lcm"
																								tabindex="-1" aria-hidden="true"
																								data-kt-initialized="1">
																								<option value="">Select a Country...</option>
																								<option value="AF">Afghanistan</option>
																								<option value="AX">Aland Islands</option>
																								<option value="AL">Albania</option>
																								<option value="DZ">Algeria</option>
																								<option value="AS">American Samoa</option>
																								<option value="AD">Andorra</option>
																								<option value="AO">Angola</option>
																								<option value="AI">Anguilla</option>
																								<option value="AG">Antigua and Barbuda</option>
																								<option value="AR">Argentina</option>
																								<option value="AM">Armenia</option>
																								<option value="AW">Aruba</option>
																								<option value="AU">Australia</option>
																								<option value="AT">Austria</option>
																								<option value="AZ">Azerbaijan</option>
																								<option value="BS">Bahamas</option>
																								<option value="BH">Bahrain</option>
																								<option value="BD">Bangladesh</option>
																								<option value="BB">Barbados</option>
																								<option value="BY">Belarus</option>
																								<option value="BE">Belgium</option>
																								<option value="BZ">Belize</option>
																								<option value="BJ">Benin</option>
																								<option value="BM">Bermuda</option>
																								<option value="BT">Bhutan</option>
																								<option value="BO">Bolivia,
																									Plurinational State of</option>
																								<option value="BQ">Bonaire, Sint
																									Eustatius and Saba</option>
																								<option value="BA">Bosnia and
																									Herzegovina</option>
																								<option value="BW">Botswana</option>
																								<option value="BR">Brazil</option>
																								<option value="IO">British Indian Ocean
																									Territory</option>
																								<option value="BN">Brunei Darussalam</option>
																								<option value="BG">Bulgaria</option>
																								<option value="BF">Burkina Faso</option>
																								<option value="BI">Burundi</option>
																								<option value="KH">Cambodia</option>
																								<option value="CM">Cameroon</option>
																								<option value="CA">Canada</option>
																								<option value="CV">Cape Verde</option>
																								<option value="KY">Cayman Islands</option>
																								<option value="CF">Central African
																									Republic</option>
																								<option value="TD">Chad</option>
																								<option value="CL">Chile</option>
																								<option value="CN">China</option>
																								<option value="CX">Christmas Island</option>
																								<option value="CC">Cocos (Keeling)
																									Islands</option>
																								<option value="CO">Colombia</option>
																								<option value="KM">Comoros</option>
																								<option value="CK">Cook Islands</option>
																								<option value="CR">Costa Rica</option>
																								<option value="CI">Côte d'Ivoire</option>
																								<option value="HR">Croatia</option>
																								<option value="CU">Cuba</option>
																								<option value="CW">Curaçao</option>
																								<option value="CZ">Czech Republic</option>
																								<option value="DK">Denmark</option>
																								<option value="DJ">Djibouti</option>
																								<option value="DM">Dominica</option>
																								<option value="DO">Dominican Republic</option>
																								<option value="EC">Ecuador</option>
																								<option value="EG">Egypt</option>
																								<option value="SV">El Salvador</option>
																								<option value="GQ">Equatorial Guinea</option>
																								<option value="ER">Eritrea</option>
																								<option value="EE">Estonia</option>
																								<option value="ET">Ethiopia</option>
																								<option value="FK">Falkland Islands
																									(Malvinas)</option>
																								<option value="FJ">Fiji</option>
																								<option value="FI">Finland</option>
																								<option value="FR">France</option>
																								<option value="PF">French Polynesia</option>
																								<option value="GA">Gabon</option>
																								<option value="GM">Gambia</option>
																								<option value="GE">Georgia</option>
																								<option value="DE">Germany</option>
																								<option value="GH">Ghana</option>
																								<option value="GI">Gibraltar</option>
																								<option value="GR">Greece</option>
																								<option value="GL">Greenland</option>
																								<option value="GD">Grenada</option>
																								<option value="GU">Guam</option>
																								<option value="GT">Guatemala</option>
																								<option value="GG">Guernsey</option>
																								<option value="GN">Guinea</option>
																								<option value="GW">Guinea-Bissau</option>
																								<option value="HT">Haiti</option>
																								<option value="VA">Holy See (Vatican
																									City State)</option>
																								<option value="HN">Honduras</option>
																								<option value="HK">Hong Kong</option>
																								<option value="HU">Hungary</option>
																								<option value="IS">Iceland</option>
																								<option value="IN">India</option>
																								<option value="ID">Indonesia</option>
																								<option value="IR">Iran, Islamic
																									Republic of</option>
																								<option value="IQ">Iraq</option>
																								<option value="IE">Ireland</option>
																								<option value="IM">Isle of Man</option>
																								<option value="IL">Israel</option>
																								<option value="IT">Italy</option>
																								<option value="JM">Jamaica</option>
																								<option value="JP">Japan</option>
																								<option value="JE">Jersey</option>
																								<option value="JO">Jordan</option>
																								<option value="KZ">Kazakhstan</option>
																								<option value="KE">Kenya</option>
																								<option value="KI">Kiribati</option>
																								<option value="KP">Korea, Democratic
																									People's Republic of</option>
																								<option value="KW">Kuwait</option>
																								<option value="KG">Kyrgyzstan</option>
																								<option value="LA">Lao People's
																									Democratic Republic</option>
																								<option value="LV">Latvia</option>
																								<option value="LB">Lebanon</option>
																								<option value="LS">Lesotho</option>
																								<option value="LR">Liberia</option>
																								<option value="LY">Libya</option>
																								<option value="LI">Liechtenstein</option>
																								<option value="LT">Lithuania</option>
																								<option value="LU">Luxembourg</option>
																								<option value="MO">Macao</option>
																								<option value="MG">Madagascar</option>
																								<option value="MW">Malawi</option>
																								<option value="MY">Malaysia</option>
																								<option value="MV">Maldives</option>
																								<option value="ML">Mali</option>
																								<option value="MT">Malta</option>
																								<option value="MH">Marshall Islands</option>
																								<option value="MQ">Martinique</option>
																								<option value="MR">Mauritania</option>
																								<option value="MU">Mauritius</option>
																								<option value="MX">Mexico</option>
																								<option value="FM">Micronesia,
																									Federated States of</option>
																								<option value="MD">Moldova, Republic of
																								</option>
																								<option value="MC">Monaco</option>
																								<option value="MN">Mongolia</option>
																								<option value="ME">Montenegro</option>
																								<option value="MS">Montserrat</option>
																								<option value="MA">Morocco</option>
																								<option value="MZ">Mozambique</option>
																								<option value="MM">Myanmar</option>
																								<option value="NA">Namibia</option>
																								<option value="NR">Nauru</option>
																								<option value="NP">Nepal</option>
																								<option value="NL">Netherlands</option>
																								<option value="NZ">New Zealand</option>
																								<option value="NI">Nicaragua</option>
																								<option value="NE">Niger</option>
																								<option value="NG">Nigeria</option>
																								<option value="NU">Niue</option>
																								<option value="NF">Norfolk Island</option>
																								<option value="MP">Northern Mariana
																									Islands</option>
																								<option value="NO">Norway</option>
																								<option value="OM">Oman</option>
																								<option value="PK">Pakistan</option>
																								<option value="PW">Palau</option>
																								<option value="PS">Palestinian
																									Territory, Occupied</option>
																								<option value="PA">Panama</option>
																								<option value="PG">Papua New Guinea</option>
																								<option value="PY">Paraguay</option>
																								<option value="PE">Peru</option>
																								<option value="PH">Philippines</option>
																								<option value="PL">Poland</option>
																								<option value="PT">Portugal</option>
																								<option value="PR">Puerto Rico</option>
																								<option value="QA">Qatar</option>
																								<option value="RO">Romania</option>
																								<option value="RU">Russian Federation</option>
																								<option value="RW">Rwanda</option>
																								<option value="BL">Saint Barthélemy</option>
																								<option value="KN">Saint Kitts and
																									Nevis</option>
																								<option value="LC">Saint Lucia</option>
																								<option value="MF">Saint Martin (French
																									part)</option>
																								<option value="VC">Saint Vincent and
																									the Grenadines</option>
																								<option value="WS">Samoa</option>
																								<option value="SM">San Marino</option>
																								<option value="ST">Sao Tome and
																									Principe</option>
																								<option value="SA">Saudi Arabia</option>
																								<option value="SN">Senegal</option>
																								<option value="RS">Serbia</option>
																								<option value="SC">Seychelles</option>
																								<option value="SL">Sierra Leone</option>
																								<option value="SG">Singapore</option>
																								<option value="SX">Sint Maarten (Dutch
																									part)</option>
																								<option value="SK">Slovakia</option>
																								<option value="SI">Slovenia</option>
																								<option value="SB">Solomon Islands</option>
																								<option value="SO">Somalia</option>
																								<option value="ZA">South Africa</option>
																								<option value="KR">South Korea</option>
																								<option value="SS">South Sudan</option>
																								<option value="ES">Spain</option>
																								<option value="LK">Sri Lanka</option>
																								<option value="SD">Sudan</option>
																								<option value="SR">Suriname</option>
																								<option value="SZ">Swaziland</option>
																								<option value="SE">Sweden</option>
																								<option value="CH">Switzerland</option>
																								<option value="SY">Syrian Arab Republic
																								</option>
																								<option value="TW">Taiwan, Province of
																									China</option>
																								<option value="TJ">Tajikistan</option>
																								<option value="TZ">Tanzania, United
																									Republic of</option>
																								<option value="TH">Thailand</option>
																								<option value="TG">Togo</option>
																								<option value="TK">Tokelau</option>
																								<option value="TO">Tonga</option>
																								<option value="TT">Trinidad and Tobago</option>
																								<option value="TN">Tunisia</option>
																								<option value="TR">Turkey</option>
																								<option value="TM">Turkmenistan</option>
																								<option value="TC">Turks and Caicos
																									Islands</option>
																								<option value="TV">Tuvalu</option>
																								<option value="UG">Uganda</option>
																								<option value="UA">Ukraine</option>
																								<option value="AE">United Arab Emirates
																								</option>
																								<option value="GB">United Kingdom</option>
																								<option value="US" selected="selected"
																									data-select2-id="select2-data-15-sbgd">
																									United States</option>
																								<option value="UY">Uruguay</option>
																								<option value="UZ">Uzbekistan</option>
																								<option value="VU">Vanuatu</option>
																								<option value="VE">Venezuela,
																									Bolivarian Republic of</option>
																								<option value="VN">Vietnam</option>
																								<option value="VI">Virgin Islands</option>
																								<option value="YE">Yemen</option>
																								<option value="ZM">Zambia</option>
																								<option value="ZW">Zimbabwe</option>
																							</select><span
																								class="select2 select2-container select2-container--bootstrap5"
																								dir="ltr" data-select2-id="select2-data-14-gs1y"
																								style="width: 100%;"><span
																								class="selection"> <span
																									class="select2-selection__arrow"
																									role="presentation"><b
																										role="presentation"></b></span></span></span><span
																								class="dropdown-wrapper" aria-hidden="true"></span></span>
																							<!--end::Input-->
																							<div
																								class="fv-plugins-message-container invalid-feedback">
																							</div>
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div class="fv-row mb-7">
																							<!--begin::Wrapper-->
																							<div class="d-flex flex-stack">
																								<!--begin::Label-->
																								<div class="me-5">
																									<!--begin::Label-->
																									<label class="fs-6 fw-semibold">Use as
																										a billing adderess?</label>
																									<!--end::Label-->
																									<!--begin::Input-->
																									<div class="fs-7 fw-semibold text-muted">
																										If you need more info, please check budget
																										planning</div>
																									<!--end::Input-->
																								</div>
																								<!--end::Label-->
																								<!--begin::Switch-->
																								<label
																									class="form-check form-switch form-check-custom form-check-solid">
																									<!--begin::Input--> <input
																									class="form-check-input" name="billing"
																									type="checkbox" value="1"
																									id="kt_modal_add_customer_billing"
																									checked="checked"> <!--end::Input--> <!--begin::Label-->
																									<span
																									class="form-check-label fw-semibold text-muted"
																									for="kt_modal_add_customer_billing">Yes</span>
																									<!--end::Label-->
																								</label>
																								<!--end::Switch-->
																							</div>
																							<!--begin::Wrapper-->
																						</div>
																						<!--end::Input group-->
																					</div>
																					<!--end::Billing form-->
																				</div>
																				<!--end::Scroll-->
																			</div>
																			<!--end::Modal body-->
																			<!--begin::Modal footer-->
																			<div class="modal-footer flex-center">
																				<!--begin::Button-->
																				<button type="reset"
																					id="kt_modal_add_customer_cancel"
																					class="btn btn-light me-3">Discard</button>
																				<!--end::Button-->
																				<!--begin::Button-->
																				<button type="submit"
																					id="kt_modal_add_customer_submit"
																					class="btn btn-primary">
																					<span class="indicator-label">Submit</span>
																				</button>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
															<div class="modal fade" id="kt_customers_export_modal"
																tabindex="-1" aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered mw-650px">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h2 class="fw-bold">Export Customers</h2>
																			<div id="kt_customers_export_close"
																				class="btn btn-icon btn-sm btn-active-icon-primary">
																				<span class="svg-icon svg-icon-1"> <svg
																						width="24" height="24" viewBox="0 0 24 24"
																						fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                            <rect
																							opacity="0.5" x="6" y="17.3137" width="16"
																							height="2" rx="1"
																							transform="rotate(-45 6 17.3137)"
																							fill="currentColor">
                                                                                            </rect>
                                                                                            <rect
																							x="7.41422" y="6" width="16" height="2" rx="1"
																							transform="rotate(45 7.41422 6)"
																							fill="currentColor">
                                                                                            </rect>
                                                                                        </svg>
																				</span>
																			</div>
																		</div>
																		<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
																			<form id="kt_customers_export_form"
																				class="form fv-plugins-bootstrap5 fv-plugins-framework"
																				action="#">
																				<div class="fv-row mb-10">
																					<label class="fs-5 fw-semibold form-label mb-5">Select
																						Export Format:</label> <select data-control="select2"
																						data-placeholder="Select a format"
																						data-hide-search="true" name="format"
																						class="form-select form-select-solid select2-hidden-accessible"
																						data-select2-id="select2-data-16-5cd5"
																						tabindex="-1" aria-hidden="true"
																						data-kt-initialized="1">
																						<option value="excell"
																							data-select2-id="select2-data-18-dlq4">
																							Excel</option>
																						<option value="pdf">PDF</option>
																						<option value="cvs">CVS</option>
																						<option value="zip">ZIP</option>
																					</select><span
																						class="select2 select2-container select2-container--bootstrap5"
																						dir="ltr" data-select2-id="select2-data-17-ymoq"
																						style="width: 100%;"><span
																						class="selection"><span
																							class="select2-selection select2-selection--single form-select form-select-solid"
																							role="combobox" aria-haspopup="true"
																							aria-expanded="false" tabindex="0"
																							aria-disabled="false"
																							aria-labelledby="select2-format-vm-container"
																							aria-controls="select2-format-vm-container"><span
																								class="select2-selection__rendered"
																								id="select2-format-vm-container" role="textbox"
																								aria-readonly="true" title="Excel">Excel</span><span
																								class="select2-selection__arrow"
																								role="presentation"><b
																									role="presentation"></b></span></span></span><span
																						class="dropdown-wrapper" aria-hidden="true"></span></span>
																				</div>
																				<div class="fv-row mb-10 fv-plugins-icon-container">
																					<label class="fs-5 fw-semibold form-label mb-5">Select
																						Date Range:</label> <input
																						class="form-control form-control-solid flatpickr-input"
																						placeholder="Pick a date" name="date"
																						type="hidden"><input
																						class="form-control form-control-solid form-control input"
																						placeholder="Pick a date" tabindex="0" type="text"
																						readonly="readonly">
																					<div
																						class="fv-plugins-message-container invalid-feedback">
																					</div>
																				</div>
																				<div class="row fv-row mb-15">
																					<label class="fs-5 fw-semibold form-label mb-5">Payment
																						Type:</label>
																					<div class="d-flex flex-column">
																						<label
																							class="form-check form-check-custom form-check-sm form-check-solid mb-3">
																							<input class="form-check-input" type="checkbox"
																							value="1" checked="checked" name="payment_type">
																							<span
																							class="form-check-label text-gray-600 fw-semibold">All</span>
																						</label> <label
																							class="form-check form-check-custom form-check-sm form-check-solid mb-3">
																							<input class="form-check-input" type="checkbox"
																							value="2" checked="checked" name="payment_type">
																							<span
																							class="form-check-label text-gray-600 fw-semibold">Visa</span>
																						</label> <label
																							class="form-check form-check-custom form-check-sm form-check-solid mb-3">
																							<input class="form-check-input" type="checkbox"
																							value="3" name="payment_type"> <span
																							class="form-check-label text-gray-600 fw-semibold">Mastercard</span>
																						</label> <label
																							class="form-check form-check-custom form-check-sm form-check-solid">
																							<input class="form-check-input" type="checkbox"
																							value="4" name="payment_type"> <span
																							class="form-check-label text-gray-600 fw-semibold">American
																								Express</span>
																						</label>
																					</div>
																				</div>
																				<div class="text-center">
																					<button type="reset"
																						id="kt_customers_export_cancel"
																						class="btn btn-light me-3">Discard</button>
																					<button type="submit"
																						id="kt_customers_export_submit"
																						class="btn btn-primary">
																						<span class="indicator-label">Submit</span>
																					</button>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
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
				</main>
			</div>

		</div>
	</div>
</div>

<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document
						.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0
							|| rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/,
								'');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?')
								+ '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://'
					: 'wss://';
			var address = protocol + window.location.host
					+ window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == 'reload')
					window.location.reload();
				else if (msg.data == 'refreshcss')
					refreshCSS();
			};
			if (sessionStorage
					&& !sessionStorage
							.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer',
						true);
			}
		})();
	} else {
		console
				.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
</script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin/admin.js"></script>
<script>
	//리스트 체크박스
	var $checkboxes = $(".form-check-input.checkbox");
	
	// 회원 삭제
	$("#deleteMemberButton").on('click', function() {
				if ($checkboxes.filter(":checked").length == 0) {
					alert("삭제할 프로그램을 선택하세요.");
					return;
				}

				var $deleteData = $checkboxes.filter(":checked").closest('.row_member').find('.member_list_value.number').text();

				console.log($deleteData);

				$.ajax({
					url : "/member/deleteMember.me",
					data : {
						memberNumber : $deleteData
					},
					success : function(data) {
						console.log("삭제")
						location.reload();
					}
				});
			});
	
	function errorPage(){
		alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
	}
</script>
</body>