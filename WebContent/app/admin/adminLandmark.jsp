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
						<span class="svg-icon svg-icon-2 rotate-180"> <svg
								width="24" height="24" viewBox="0 0 24 24" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                                    <path opacity="0.5"
									d="M14.2657 11.4343L18.45 7.25C18.8642 6.83579 18.8642 6.16421 18.45 5.75C18.0358 5.33579 17.3642 5.33579 16.95 5.75L11.4071 11.2929C11.0166 11.6834 11.0166 12.3166 11.4071 12.7071L16.95 18.25C17.3642 18.6642 18.0358 18.6642 18.45 18.25C18.8642 17.8358 18.8642 17.1642 18.45 16.75L14.2657 12.5657C13.9533 12.2533 13.9533 11.7467 14.2657 11.4343Z"
									fill="currentColor"></path>
                                    <path
									d="M8.2657 11.4343L12.45 7.25C12.8642 6.83579 12.8642 6.16421 12.45 5.75C12.0358 5.33579 11.3642 5.33579 10.95 5.75L5.40712 11.2929C5.01659 11.6834 5.01659 12.3166 5.40712 12.7071L10.95 18.25C11.3642 18.6642 12.0358 18.6642 12.45 18.25C12.8642 17.8358 12.8642 17.1642 12.45 16.75L8.2657 12.5657C7.95328 12.2533 7.95328 11.7467 8.2657 11.4343Z"
									fill="currentColor"></path>
                                </svg>
						</span>
					</div>
				</div>
				<div class="app_sidebar_menu overflow_hidden">
					<div class="app_sidebar_menu_wrapper flex_column">
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item"
								style="background-color: #AF7AB3;">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="25" viewBox="0 0 24 25" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3"
											d="M8.9 21L7.19999 22.6999C6.79999 23.0999 6.2 23.0999 5.8 22.6999L4.1 21H8.9ZM4 16.0999L2.3 17.8C1.9 18.2 1.9 18.7999 2.3 19.1999L4 20.9V16.0999ZM19.3 9.1999L15.8 5.6999C15.4 5.2999 14.8 5.2999 14.4 5.6999L9 11.0999V21L19.3 10.6999C19.7 10.2999 19.7 9.5999 19.3 9.1999Z"
											fill="currentColor"></path>
                                            <path
											d="M21 15V20C21 20.6 20.6 21 20 21H11.8L18.8 14H20C20.6 14 21 14.4 21 15ZM10 21V4C10 3.4 9.6 3 9 3H4C3.4 3 3 3.4 3 4V21C3 21.6 3.4 22 4 22H9C9.6 22 10 21.6 10 21ZM7.5 18.5C7.5 19.1 7.1 19.5 6.5 19.5C5.9 19.5 5.5 19.1 5.5 18.5C5.5 17.9 5.9 17.5 6.5 17.5C7.1 17.5 7.5 17.9 7.5 18.5Z"
											fill="currentColor"></path>
                                        </svg>
								</span> <span class="sidebar_menu_title"> <a
									href="${pageContext.request.contextPath}/Seoul-CheckIn.kr">사이트
										바로가기</a>
								</span>
							</div>
						</div>
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <rect x="2" y="2" width="9"
											height="9" rx="2" fill="currentColor">
                                            </rect>
                                            <rect opacity="0.3" x="13"
											y="2" width="9" height="9" rx="2" fill="currentColor"></rect>
                                            <rect opacity="0.3" x="13"
											y="13" width="9" height="9" rx="2" fill="currentColor"></rect>
                                            <rect opacity="0.3" x="2"
											y="13" width="9" height="9" rx="2" fill="currentColor"></rect>
                                        </svg>
								</span> <span class="sidebar_menu_title"> <a
									href="${pageContext.request.contextPath}/admin/adminMain.me">대시보드</a>
								</span>
							</div>
						</div>
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <path
											d="M6.28548 15.0861C7.34369 13.1814 9.35142 12 11.5304 12H12.4696C14.6486 12 16.6563 13.1814 17.7145 15.0861L19.3493 18.0287C20.0899 19.3618 19.1259 21 17.601 21H6.39903C4.87406 21 3.91012 19.3618 4.65071 18.0287L6.28548 15.0861Z"
											fill="currentColor"></path>
                                            <rect opacity="0.3" x="8"
											y="3" width="8" height="8" rx="4" fill="currentColor"></rect>
                                        </svg>
								</span> <span class="sidebar_menu_title">사용자 관리</span> <span
									class="sidebar_menu_arrow"> <img
									src="${pageContext.request.contextPath}/assets/images/admin/down.png"
									style="width: 10px;">
								</span>
							</div>
							<div class="app_sidebar_submenu">
								<div class="app_sidebar_submenu_item">
									<a
										href="${pageContext.request.contextPath}/member/memberlist.me">회원
										관리</a>
								</div>
								<div class="app_sidebar_submenu_item">
									<a href="javascript:errorPage()">방문자 통계</a>
								</div>
							</div>
						</div>
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <path
											d="M8.7 4.19995L4 6.30005V18.8999L8.7 16.8V19L3.1 21.5C2.6 21.7 2 21.4 2 20.8V6C2 5.4 2.3 4.89995 2.9 4.69995L8.7 2.09998V4.19995Z"
											fill="currentColor"></path>
                                            <path
											d="M15.3 19.8L20 17.6999V5.09992L15.3 7.19989V4.99994L20.9 2.49994C21.4 2.29994 22 2.59989 22 3.19989V17.9999C22 18.5999 21.7 19.1 21.1 19.3L15.3 21.8998V19.8Z"
											fill="currentColor"></path>
                                            <path opacity="0.3"
											d="M15.3 7.19995L20 5.09998V17.7L15.3 19.8V7.19995Z"
											fill="currentColor"></path>
                                            <path opacity="0.3"
											d="M8.70001 4.19995V2L15.4 5V7.19995L8.70001 4.19995ZM8.70001 16.8V19L15.4 22V19.8L8.70001 16.8Z"
											fill="currentColor"></path>
                                            <path opacity="0.3"
											d="M8.7 16.8L4 18.8999V6.30005L8.7 4.19995V16.8Z"
											fill="currentColor"></path>
                                        </svg>
								</span> <span class="sidebar_menu_title">콘텐츠 관리</span> <span
									class="sidebar_menu_arrow"> <img
									src="${pageContext.request.contextPath}/assets/images/admin/down.png"
									style="width: 10px;">
								</span>
							</div>
							<div class="app_sidebar_submenu">
								<div class="app_sidebar_submenu_item">
									<a
										href="${pageContext.request.contextPath}/map/adminMaplist.mp">지도
										관리</a>
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
									<a
										href="${pageContext.request.contextPath}/school/adminprogramlist.sc">강좌/프로그램
										관리</a>
								</div>
							</div>
						</div>
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <path
											d="M17 11H7C6.4 11 6 10.6 6 10V9C6 8.4 6.4 8 7 8H17C17.6 8 18 8.4 18 9V10C18 10.6 17.6 11 17 11ZM22 5V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4V5C2 5.6 2.4 6 3 6H21C21.6 6 22 5.6 22 5Z"
											fill="currentColor"></path>
                                            <path opacity="0.3"
											d="M21 16H3C2.4 16 2 15.6 2 15V14C2 13.4 2.4 13 3 13H21C21.6 13 22 13.4 22 14V15C22 15.6 21.6 16 21 16ZM18 20V19C18 18.4 17.6 18 17 18H7C6.4 18 6 18.4 6 19V20C6 20.6 6.4 21 7 21H17C17.6 21 18 20.6 18 20Z"
											fill="currentColor"></path>
                                        </svg>
								</span> <span class="sidebar_menu_title">게시물 관리</span> <span
									class="sidebar_menu_arrow"> <img
									src="${pageContext.request.contextPath}/assets/images/admin/down.png"
									style="width: 10px;">
								</span>
							</div>
							<div class="app_sidebar_submenu">
								<div class="app_sidebar_submenu_item">
									<a
										href="${pageContext.request.contextPath}/board/adminboard.bo">게시판
										관리</a>
								</div>
								<div class="app_sidebar_submenu_item">
									<a
										href="${pageContext.request.contextPath}/comment/adminCommentList.cm">댓글
										관리</a>
								</div>
								<div class="app_sidebar_submenu_item">
									<a
										href="${pageContext.request.contextPath}/banner/adminBanner.bn">배너
										관리</a>
								</div>
							</div>
						</div>
						<div class="app_sidebar_menu_list">
							<div class="app_sidebar_menu_item">
								<span class="sidebar_menu_icon"> <svg width="24"
										height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                            <path opacity="0.3"
											d="M14 3V20H2V3C2 2.4 2.4 2 3 2H13C13.6 2 14 2.4 14 3ZM11 13V11C11 9.7 10.2 8.59995 9 8.19995V7C9 6.4 8.6 6 8 6C7.4 6 7 6.4 7 7V8.19995C5.8 8.59995 5 9.7 5 11V13C5 13.6 4.6 14 4 14V15C4 15.6 4.4 16 5 16H11C11.6 16 12 15.6 12 15V14C11.4 14 11 13.6 11 13Z"
											fill="currentColor"></path>
                                            <path
											d="M2 20H14V21C14 21.6 13.6 22 13 22H3C2.4 22 2 21.6 2 21V20ZM9 3V2H7V3C7 3.6 7.4 4 8 4C8.6 4 9 3.6 9 3ZM6.5 16C6.5 16.8 7.2 17.5 8 17.5C8.8 17.5 9.5 16.8 9.5 16H6.5ZM21.7 12C21.7 11.4 21.3 11 20.7 11H17.6C17 11 16.6 11.4 16.6 12C16.6 12.6 17 13 17.6 13H20.7C21.2 13 21.7 12.6 21.7 12ZM17 8C16.6 8 16.2 7.80002 16.1 7.40002C15.9 6.90002 16.1 6.29998 16.6 6.09998L19.1 5C19.6 4.8 20.2 5 20.4 5.5C20.6 6 20.4 6.60005 19.9 6.80005L17.4 7.90002C17.3 8.00002 17.1 8 17 8ZM19.5 19.1C19.4 19.1 19.2 19.1 19.1 19L16.6 17.9C16.1 17.7 15.9 17.1 16.1 16.6C16.3 16.1 16.9 15.9 17.4 16.1L19.9 17.2C20.4 17.4 20.6 18 20.4 18.5C20.2 18.9 19.9 19.1 19.5 19.1Z"
											fill="currentColor"></path>
                                        </svg>
								</span> <span class="sidebar_menu_title">고객지원</span> <span
									class="sidebar_menu_arrow"> <img
									src="${pageContext.request.contextPath}/assets/images/admin/down.png"
									style="width: 10px;">
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
												class="text-gray">지도 관리</span>
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
																	지도 목록</h1>
																<!--end::Title-->
																<!--begin::Breadcrumb-->
															</div>
															<!--end::Page title-->
															<!--begin::Actions-->

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
																				placeholder="Search Maps">
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
																						</select> <span
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



																			<!-- <button type="button"
																				class="btn btn-light-primary me-3"
																				data-bs-toggle="modal"
																				data-bs-target="#kt_customers_export_modal">

																				<span class="svg-icon svg-icon-2"> <svg
																						width="24" height="24" viewBox="0 0 24 24"
																						fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                            <rect
																							opacity="0.3" x="12.75" y="4.25" width="12"
																							height="2" rx="1"
																							transform="rotate(90 12.75 4.25)"
																							fill="currentColor">
                                                                                            </rect>
                                                                                            <path
																							d="M12.0573 6.11875L13.5203 7.87435C13.9121 8.34457 14.6232 8.37683 15.056 7.94401C15.4457 7.5543 15.4641 6.92836 15.0979 6.51643L12.4974 3.59084C12.0996 3.14332 11.4004 3.14332 11.0026 3.59084L8.40206 6.51643C8.0359 6.92836 8.0543 7.5543 8.44401 7.94401C8.87683 8.37683 9.58785 8.34458 9.9797 7.87435L11.4427 6.11875C11.6026 5.92684 11.8974 5.92684 12.0573 6.11875Z"
																							fill="currentColor">
                                                                                            </path>
                                                                                            <path
																							opacity="0.3"
																							d="M18.75 8.25H17.75C17.1977 8.25 16.75 8.69772 16.75 9.25C16.75 9.80228 17.1977 10.25 17.75 10.25C18.3023 10.25 18.75 10.6977 18.75 11.25V18.25C18.75 18.8023 18.3023 19.25 17.75 19.25H5.75C5.19772 19.25 4.75 18.8023 4.75 18.25V11.25C4.75 10.6977 5.19771 10.25 5.75 10.25C6.30229 10.25 6.75 9.80228 6.75 9.25C6.75 8.69772 6.30229 8.25 5.75 8.25H4.75C3.64543 8.25 2.75 9.14543 2.75 10.25V19.25C2.75 20.3546 3.64543 21.25 4.75 21.25H18.75C19.8546 21.25 20.75 20.3546 20.75 19.25V10.25C20.75 9.14543 19.8546 8.25 18.75 8.25Z"
																							fill="currentColor">
                                                                                            </path>
                                                                                        </svg>
																				</span> Modify
																			</button> -->


																			<button type="button"
																				class="btn btn-primary addLandmark"
																				data-bs-toggle="modal"
																				data-bs-target="#kt_modal_add_customer"
																				style="margin-right: 8px;">Add Landmark</button>
																			<button type="button"
																				class="btn btn-primary addEnjoy"
																				data-bs-toggle="modal"
																				data-bs-target="#kt_modal_add_customer"
																				style="margin-right: 8px;">Add Enjoy</button>

																			<button type="button" id="deleteMapButton"
																				class="btn btn-primary deleteMap"
																				data-bs-toggle="modal"
																				data-bs-target="#kt_modal_add_customer">
																				Delete Map</button>

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
																							aria-label="Company: activate to sort column ascending">
																							장소명</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Payment Method: activate to sort column ascending">
																							주소</th>
																						<th class="min-w-125px sorting" tabindex="0"
																							aria-controls="kt_customers_table" rowspan="1"
																							colspan="1"
																							aria-label="Created Date: activate to sort column ascending">
																							연락처</th>
																						<th class="text-end min-w-70px sorting_disabled"
																							rowspan="1" colspan="1" aria-label="Actions">
																							입장료</th>
																						<th>상세설명</th>
																						<th>첨부사진</th>
																						<th>승인상태</th>
																					</tr>
																					<!--end::Table row-->
																				</thead>
																				<!--end::Table head-->
																				<!--begin::Table body-->
																				<tbody class="fw-semibold text-gray-600">
																					<c:choose>
																						<c:when
																							test="${maps != null and fn:length(maps) > 0}">
																							<c:forEach var="map" items="${maps}">
																								<tr class="row_map">
																									<td>
																										<div
																											class="form-check form-check-sm form-check-custom form-check-solid">
																											<input class="form-check-input checkbox"
																												type="checkbox" value="${maps}">
																										</div>
																									</td>
																									<td class="map_list_value number"
																										style="width: 50px;"><c:out
																											value="${map.getMapNumber()}" /></td>
																									<td class="map_list_value" style="width: 60px;"><c:out
																											value="${map.getMapClassification()}" /></td>
																									<td class="map_list_value"
																										style="width: 100px;"><c:out
																											value="${map.getMapName()}" /></td>
																									<td class="map_list_value" style="width: 90px;"><c:out
																											value="${map.getMapAddress()}" /></td>
																									<td class="map_list_value" style="width: 100px"><c:out
																											value="${map.getMapPhone()}" /></td>
																									<td class="map_list_value" style="width: 85px;"><c:out
																											value="${map.getMapPrice()}" /></td>
																									<td class="map_list_value"
																										style="width: 200px;"><c:out
																											value="${map.getMapIntroduce()}" /></td>
																									<td class="map_list_value" style="width: 85px;">
																										<c:out
																											value="${map.getMapPhoto() == '' ? '없음' : map.getMapPhoto()}" />
																									</td>
																									<td class="map_list_value" style="width: 85px;">
																										<c:out
																											value="${map.getMapApproval() == '0'? '미승인' : '승인'}" />
																									</td>
																								</tr>
																							</c:forEach>
																						</c:when>
																						<c:otherwise>
																							<tr>
																								<td colspan="15" align="center">등록된 장소가
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

																			</div>
																			<div
																				class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end">
																				<c:if test="${prev}">
																					<a
																						href="${pageContext.request.contextPath}/map/adminMaplist.mp?page=${startPage - 1}">&lt;</a>
																				</c:if>
																				<c:forEach var="i" begin="${startPage}"
																					end="${endPage}">
																					<c:choose>
																						<c:when test="${not (i eq page)}">
																							<a
																								href="${pageContext.request.contextPath}/map/adminMaplist.mp?page=${i}">
																								<c:out value="${i}" />&nbsp;&nbsp;
																							</a>
																						</c:when>
																						<c:otherwise>
																							<c:out value="${i}" />&nbsp;&nbsp;
																										</c:otherwise>
																					</c:choose>
																				</c:forEach>
																				<c:if test="${next}">
																					<a
																						href="${pageContext.request.contextPath}/map/adminMaplist.mp?page=${endPage + 1}">&gt;</a>
																				</c:if>
																				<!-- <div
																					class="dataTables_paginate paging_simple_numbers"
																					id="kt_customers_table_paginate">
																					<ul class="pagination">
																						<li
																							class="paginate_button page-item previous disabled"
																							id="kt_customers_table_previous"><a href="#"
																							aria-controls="kt_customers_table"
																							data-dt-idx="0" tabindex="0" class="page-link">
																								<img src="" alt="">
																						</a></li>
																						<li class="paginate_button page-item active">
																							<a href="#" aria-controls="kt_customers_table"
																							data-dt-idx="1" tabindex="0" class="page-link">1</a>
																						</li>
																						<li class="paginate_button page-item "><a
																							href="#" aria-controls="kt_customers_table"
																							data-dt-idx="2" tabindex="0" class="page-link">2</a>
																						</li>
																						<li class="paginate_button page-item "><a
																							href="#" aria-controls="kt_customers_table"
																							data-dt-idx="3" tabindex="0" class="page-link">3</a>
																						</li>
																						<li class="paginate_button page-item "><a
																							href="#" aria-controls="kt_customers_table"
																							data-dt-idx="4" tabindex="0" class="page-link">4</a>
																						</li>
																						<li class="paginate_button page-item next"
																							id="kt_customers_table_next"><a href="#"
																							aria-controls="kt_customers_table"
																							data-dt-idx="5" tabindex="0" class="page-link"><i
																								class="next"></i></a></li>
																					</ul>
																				</div> -->
																			</div>
																		</div>
																	</div>
																	<!--end::Table-->
																</div>

															</div>


															<!-- Add a Landmark -->

															<div class="modal fade" id="kt_modal_add_landmark"
																tabindex="-1" aria-hidden="true">
																<!--begin::Modal dialog-->
																<div class="modal-dialog modal-dialog-centered mw-650px">
																	<!--begin::Modal content-->
																	<div class="modal-content">
																		<!--begin::Form-->
																		<form name="addLandmarkForm" method="post"
																			enctype="multipart/form-data"
																			action="${pageContext.request.contextPath}/map/addMapOk.mp"
																			class="form fv-plugins-bootstrap5 fv-plugins-framework"
																			id="kt_modal_add_customer_form"
																			data-kt-redirect="/metronic8/demo1/../demo1/apps/customers/list.html">
																			<!--begin::Modal header-->
																			<div class="modal-header"
																				id="kt_modal_add_customer_header">
																				<!--begin::Modal title-->
																				<h2 class="fw-bold">Add a Landmark</h2>
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
																					<div class="fw-bold fs-3 rotate collapsible mb-7"
																						data-bs-toggle="collapse"
																						href="#kt_modal_add_customer_billing_info"
																						role="button" aria-expanded="false"
																						aria-controls="kt_customer_view_details">
																						Landmark Information <span class="ms-2 rotate-180">
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
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<input type="hidden" name="mapClassification"
																							value="landmark"> <label
																							class="required fs-6 fw-semibold mb-2">장소명</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="mapName" value="">
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
																							class="required">주소</span> <i
																							class="fas fa-exclamation-circle ms-1 fs-7"
																							data-bs-toggle="tooltip"
																							aria-label="Email address must be active"
																							data-kt-initialized="1"></i>
																						</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="email"
																							class="form-control form-control-solid"
																							placeholder="" name="mapAddress" value="">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2"> <span
																							class="required">연락처</span> <i
																							class="fas fa-exclamation-circle ms-1 fs-7"
																							data-bs-toggle="tooltip"
																							aria-label="Email address must be active"
																							data-kt-initialized="1"></i>
																						</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="email"
																							class="form-control form-control-solid"
																							placeholder="" name="mapPhone" value="">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<!--end::Input group-->
																					<!--begin::Input group-->
																					<div class="fv-row mb-15">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2">입장료</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="mapPrice">
																						<!--end::Input-->
																					</div>
																					<!--end::Input group-->
																					<!--begin::Billing toggle-->
																					<!-- <div class="fw-bold fs-3 rotate collapsible mb-7"
																						data-bs-toggle="collapse"
																						href="#kt_modal_add_customer_billing_info"
																						role="button" aria-expanded="false"
																						aria-controls="kt_customer_view_details">
																						Program Information <span class="ms-2 rotate-180">
																							begin::Svg Icon | path: icons/duotune/arrows/arr072.svg
																							<span class="svg-icon svg-icon-3"> <svg
																									width="24" height="24" viewBox="0 0 24 24"
																									fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                                        <path
																										d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
																										fill="currentColor">
                                                                                                        </path>
                                                                                                    </svg>
																						</span> end::Svg Icon
																						</span>
																					</div> -->
																					<!--end::Billing toggle-->
																					<!--begin::Billing form-->
																					<div id="kt_modal_add_customer_billing_info"
																						class="collapse show">
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Label-->
																							<label class="required fs-6 fw-semibold mb-2">운영시간</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="mapLandmarkTime" value="">
																							<!--end::Input-->
																							<div
																								class="fv-plugins-message-container invalid-feedback">
																							</div>
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div class="d-flex flex-column mb-7 fv-row">
																							<!--begin::Label-->
																							<label class="fs-6 fw-semibold mb-2">상세설명</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="mapIntroduce" value="">
																							<!--end::Input-->
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div
																							class="col-md-6 fv-row fv-plugins-icon-container"
																							style="display: flex; justify-content: space-between; margin-top: 20px;">
																							<label class="required fs-6 fw-semibold mb-2">이미지</label>
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
																								</button>
																								<a href="javascript:void(0);"> <label>
																										<input type="file" name="mapPhoto"
																										id="icon_img" style="display: none;">
																										<img
																										src="${pageContext.request.contextPath}/assets/images/admin/no-image.JPG"
																										id="thumbnail"
																										style="width: 300px; height: 250px;">
																								</label>
																								</a>
																							</div>
																						</div>
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Input-->
																							<span
																								class="select2 select2-container select2-container--bootstrap5"
																								dir="ltr" data-select2-id="select2-data-14-gs1y"
																								style="width: 100%;"><span
																								class="selection"><span
																									class="select2-selection select2-selection--single form-select form-select-solid fw-bold"
																									role="combobox" aria-haspopup="true"
																									aria-expanded="false" tabindex="0"
																									aria-disabled="false"
																									aria-labelledby="select2-country-18-container"
																									aria-controls="select2-country-18-container">
																										<span class="select2-selection__arrow"
																										role="presentation"><b
																											role="presentation"></b></span>
																								</span></span><span class="dropdown-wrapper"
																								aria-hidden="true"></span></span>
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
																									<label class="fs-6 fw-semibold"></label>
																									<!--end::Label-->
																									<!--begin::Input-->
																									<div class="fs-7 fw-semibold text-muted">
																									</div>
																									<!--end::Input-->
																								</div>
																								<!--end::Label-->
																								<!--begin::Switch-->
																								<label
																									class="form-check form-switch form-check-custom form-check-solid">
																									<!--begin::Input--> <!-- <input
																									class="form-check-input" name="billing"
																									type="checkbox" value="1"
																									id="kt_modal_add_customer_billing"
																									checked="checked"> --> <!--end::Input--> <!--begin::Label-->
																									<span
																									class="form-check-label fw-semibold text-muted"
																									for="kt_modal_add_customer_billing"></span> <!--end::Label-->
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
																					class="btn btn-light me-3">취소</button>
																				<!--end::Button-->
																				<!--begin::Button-->
																				<button type="button" onclick="addLandmark()"
																					id="kt_modal_add_customer_submit"
																					class="btn btn-primary submit">
																					<span class="indicator-label">완료</span>
																				</button>
																			</div>
																		</form>
																	</div>
																</div>
															</div>




															<!-- Add a Enjoy -->

															<div class="modal fade" id="kt_modal_add_enjoy"
																tabindex="-1" aria-hidden="true">
																<!--begin::Modal dialog-->
																<div class="modal-dialog modal-dialog-centered mw-650px">
																	<!--begin::Modal content-->
																	<div class="modal-content">
																		<!--begin::Form-->
																		<form name="addEnjoyForm" method="post"
																			enctype="multipart/form-data"
																			action="${pageContext.request.contextPath}/map/addMapOk.mp"
																			class="form fv-plugins-bootstrap5 fv-plugins-framework"
																			id="kt_modal_add_customer_form"
																			data-kt-redirect="/metronic8/demo1/../demo1/apps/customers/list.html">
																			<!--begin::Modal header-->
																			<div class="modal-header"
																				id="kt_modal_add_customer_header">
																				<!--begin::Modal title-->
																				<h2 class="fw-bold">Add a Enjoy</h2>
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
																			<div class="modal-body py-10 px-lg-17"
																				style="padding-bottom: 30px;">
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
																					<div class="fw-bold fs-3 rotate collapsible mb-7"
																						data-bs-toggle="collapse"
																						href="#kt_modal_add_customer_billing_info"
																						role="button" aria-expanded="false"
																						aria-controls="kt_customer_view_details">
																						Enjoy Information <span class="ms-2 rotate-180">
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
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<input type="hidden" name="mapClassification"
																							value="enjoy"> <label
																							class="required fs-6 fw-semibold mb-2">장소명</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="mapName" value="">
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
																							class="required">주소</span> <i
																							class="fas fa-exclamation-circle ms-1 fs-7"
																							data-bs-toggle="tooltip"
																							aria-label="Email address must be active"
																							data-kt-initialized="1"></i>
																						</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="email"
																							class="form-control form-control-solid"
																							placeholder="" name="mapAddress" value="">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<div class="fv-row mb-7 fv-plugins-icon-container">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2"> <span
																							class="required">연락처</span> <i
																							class="fas fa-exclamation-circle ms-1 fs-7"
																							data-bs-toggle="tooltip"
																							aria-label="Email address must be active"
																							data-kt-initialized="1"></i>
																						</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="email"
																							class="form-control form-control-solid"
																							placeholder="" name="mapPhone" value="">
																						<!--end::Input-->
																						<div
																							class="fv-plugins-message-container invalid-feedback">
																						</div>
																					</div>
																					<!--end::Input group-->
																					<!--begin::Input group-->
																					<div class="fv-row mb-15">
																						<!--begin::Label-->
																						<label class="fs-6 fw-semibold mb-2">이용 가격</label>
																						<!--end::Label-->
																						<!--begin::Input-->
																						<input type="text"
																							class="form-control form-control-solid"
																							placeholder="" name="mapPrice">
																						<!--end::Input-->
																					</div>
																					<!--end::Input group-->
																					<!--begin::Billing toggle-->
																					<!-- <div class="fw-bold fs-3 rotate collapsible mb-7"
																						data-bs-toggle="collapse"
																						href="#kt_modal_add_customer_billing_info"
																						role="button" aria-expanded="false"
																						aria-controls="kt_customer_view_details">
																						Program Information <span class="ms-2 rotate-180">
																							begin::Svg Icon | path: icons/duotune/arrows/arr072.svg
																							<span class="svg-icon svg-icon-3"> <svg
																									width="24" height="24" viewBox="0 0 24 24"
																									fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                                        <path
																										d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
																										fill="currentColor">
                                                                                                        </path>
                                                                                                    </svg>
																						</span> end::Svg Icon
																						</span>
																					</div> -->
																					<!--end::Billing toggle-->
																					<!--begin::Billing form-->
																					<div id="kt_modal_add_customer_billing_info"
																						class="collapse show">
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Label-->
																							<label class="required fs-6 fw-semibold mb-2">상세설명</label>
																							<!--end::Label-->
																							<!--begin::Input-->
																							<input class="form-control form-control-solid"
																								placeholder="" name="mapIntroduce" value="">
																							<!--end::Input-->
																							<div
																								class="fv-plugins-message-container invalid-feedback">
																							</div>
																						</div>
																						<!--end::Input group-->
																						<!--begin::Input group-->
																						<div
																							class="col-md-6 fv-row fv-plugins-icon-container"
																							style="display: flex; justify-content: space-between; margin-top: 20px;">
																							<label class="required fs-6 fw-semibold mb-2">이미지</label>
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
																								</button>
																								<a href="javascript:void(0);"> <label>
																										<input type="file" name="mapPhoto"
																										id="icon_img" style="display: none;">
																										<img
																										src="${pageContext.request.contextPath}/assets/images/admin/no-image.JPG"
																										id="thumbnail"
																										style="width: 300px; height: 250px;">
																								</label>
																								</a>
																							</div>
																						</div>
																						<!--begin::Input group-->
																						<div
																							class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
																							<!--begin::Input-->
																							<span
																								class="select2 select2-container select2-container--bootstrap5"
																								dir="ltr" data-select2-id="select2-data-14-gs1y"
																								style="width: 100%;"><span
																								class="selection"><span
																									class="select2-selection select2-selection--single form-select form-select-solid fw-bold"
																									role="combobox" aria-haspopup="true"
																									aria-expanded="false" tabindex="0"
																									aria-disabled="false"
																									aria-labelledby="select2-country-18-container"
																									aria-controls="select2-country-18-container">
																										<span class="select2-selection__arrow"
																										role="presentation"><b
																											role="presentation"></b></span>
																								</span></span><span class="dropdown-wrapper"
																								aria-hidden="true"></span></span>
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
																									<label class="fs-6 fw-semibold"></label>
																									<!--end::Label-->
																									<!--begin::Input-->
																									<div class="fs-7 fw-semibold text-muted">
																									</div>
																									<!--end::Input-->
																								</div>
																								<!--end::Label-->
																								<!--begin::Switch-->
																								<label
																									class="form-check form-switch form-check-custom form-check-solid">
																									<!--begin::Input--> <!-- <input
																									class="form-check-input" name="billing"
																									type="checkbox" value="1"
																									id="kt_modal_add_customer_billing"
																									checked="checked"> --> <!--end::Input--> <!--begin::Label-->
																									<span
																									class="form-check-label fw-semibold text-muted"
																									for="kt_modal_add_customer_billing"></span> <!--end::Label-->
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
																					class="btn btn-light me-3">취소</button>
																				<!--end::Button-->
																				<!--begin::Button-->
																				<button type="button" onclick="addEnjoy()"
																					id="kt_modal_add_customer_submit"
																					class="btn btn-primary submit">
																					<span class="indicator-label">완료</span>
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
																				action="javascript:void(0);">
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
<script
	src="${pageContext.request.contextPath}/assets/js/admin/admin.js"></script>
<script>
	//리스트 체크박스
	var $checkboxes = $(".form-check-input.checkbox");

	var $mapName = $("input[name='mapName']");
	var $mapAddress = $("input[name='mapAddress']");
	var $mapPhone = $("input[name='mapPhone']");
	var $mapPrice = $("input[name='mapPrice']");
	var $mapLandmarkTime = $("input[name='mapLandmarkTime']");
	var $mapIntroduce = $("input[name='mapIntroduce']");
	var $mapPhoto = $("#thumbnail").attr('src');

	// 필터창 열기
	/* $("div.card-toolbar > div > button:nth-child(1)").on("click", function() {
				var $value = $("#kt-toolbar-filter").css('display');
				$(this).addClass('show');
				$("#kt-toolbar-filter").css('display',
						$value === 'flex' ? 'none' : 'flex');
			}); */

	// 관광지 등록창 열기
	$(".btn.btn-primary.addLandmark").on(
			"click",
			function() {
				var $modal = $("#kt_modal_add_landmark");
				$modal.css('display',
						$modal.css('display') === 'none' ? 'block' : 'none');
			});

	// 즐길거리 등록창 열기
	$(".btn.btn-primary.addEnjoy").on(
			"click",
			function() {
				var $modal = $("#kt_modal_add_enjoy");
				$modal.css('display',
						$modal.css('display') === 'none' ? 'block' : 'none');
			});

	// 등록 모달창 x 버튼 클릭 시 모달창 닫기 
	$("#kt_modal_add_customer_close > .svg-icon.svg-icon-1").on('click',
			function() {
				$("#kt_modal_add_landmark").css('display', 'none');
				$("#kt_modal_add_enjoy").css('display', 'none');
			});

	// 등록 모달창 취소 버튼 클릭 시 모달창 닫기
	$("#kt_modal_add_customer_cancel").on('click', function() {
		$("#kt_modal_add_landmark").css('display', 'none');
		$("#kt_modal_add_enjoy").css('display', 'none');
	});

	function inputCheck() {

		if (!$mapName.val()) {
			$mapName.focus();
			return;
		}
		if (!$mapAddress.val()) {
			$mapAddress.focus();
			return;
		}
		if (!$mapPhone.val()) {
			$mapPhone.focus();
			return;
		}
		if (!$mapPrice.val()) {
			$mapPrice.focus();
			return;
		}
		if (!$mapLandmarkTime.val()) {
			$mapLandmarkTime.focus();
			return;
		}
		if (!$mapIntroduce.val()) {
			$mapIntroduce.focus();
			return;
		}
	}

	// map 삭제
	$("#deleteMapButton").on(
			'click',
			function() {
				if ($checkboxes.filter(":checked").length == 0) {
					alert("삭제할 프로그램을 선택하세요.");
					return;
				}

				var $deleteData = $checkboxes.filter(":checked").closest(
						'.row_map').find('.map_list_value.number').text();

				console.log($deleteData);

				$.ajax({
					url : "/map/deletemap.mp",
					data : {
						mapNumber : $deleteData
					},
					success : function(data) {
						console.log("삭제")
						location.reload();
					}
				});
			});

	// 관광지 등록 submit
	function addLandmark() {
		inputCheck();

		document.addLandmarkForm.submit();
	}

	// 즐길거리 등록 submit
	function addEnjoy() {

		inputCheck();

		document.addEnjoyForm.submit();
	}

	// map 등록 모달창 열기
	/* 	$(".btn.btn-primary.submit").on('click', function() {
	 if($("#kt_modal_add_customer_submit").html == '수정완료'){return;}

	 inputCheck();

	 $.ajax({
	 url : "/school/addprogram.sc",
	 data : {
	 schoolName : $schoolName.val(),
	 schoolTime : $schoolTime.val(),
	 schoolLimitCount : $schoolLimitCount.val(),
	 schoolOpeningDate : $schoolOpeningDate.val(),
	 schoolClosingDate : $schoolClosingDate.val(),
	 schoolAddress : $schoolAddress.val(),
	 schoolTeachername : $schoolTeacherName.val(),
	 schoolPhone : $schoolPhone.val(),
	 schoolIntroduce : $schoolIntroduce.val(),
	 schoolPhoto : $schoolPhoto
	 },
	 success : function() {
	 console.log("추가")
	 location.reload();
	 }
	 }); 
	 }); */

	// map 수정
	/* $("#schoolModifybutton").on('click',function() {
		var $updateData;
		var $schoolNumber;
		var $updateOkbutton = $("#kt_modal_add_customer_submit");

		if ($checkboxes.filter(":checked").length != 1) {
			alert("하나의 프로그램을 선택하세요.");
			return;
		}

		$updateData = $(".form-check-input.checkbox").val().split(/=|, /);

		$("#kt_modal_add_customer").css('display', 'block');
		$updateOkbutton.html("수정완료");
		$updateOkbutton.addClass('updateOk');
		$updateOkbutton.removeClass('submit');

		$schoolNumber = $updateData[1];
		$schoolName.val($updateData[3]);
		$schoolTeacherName.val($updateData[5]);
		$schoolPhone.val($updateData[7]);
		$schoolAddress.val($updateData[9]);
		$schoolTime.val($updateData[11]);
		$schoolIntroduce.val($updateData[13]);
		$schoolOpeningDate.val($updateData[15]);
		$schoolClosingDate.val($updateData[17]);
		$schoolLimitCount.val($updateData[21]);

		$(".btn.btn-primary.updateOk").on('click',function() {
			$.ajax({
				url : "/school/updatepro.sc",
				data : {
					schoolName : $schoolName.val(),
					schoolTime : $schoolTime.val(),
					schoolLimitCount : $schoolLimitCount.val(),
					schoolOpeningDate : $schoolOpeningDate.val(),
					schoolClosingDate : $schoolClosingDate.val(),
					schoolAddress : $schoolAddress.val(),
					schoolTeachername : $schoolTeacherName.val(),
					schoolPhone : $schoolPhone.val(),
					schoolIntroduce : $schoolIntroduce.val(),
					schoolPhoto : $schoolPhoto
				},
				success : function() {
					console.log("수정");
					$updateOkbutton.removeClass('updateOk');
					location.reload();
				}
			});
		});
	}); */

	function errorPage() {
		alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
	}
</script>
</body>