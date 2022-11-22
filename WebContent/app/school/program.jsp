<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로그램</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/school/program.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/school/modal.css">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
	
		<c:if test="${empty sessionScope.memberNumber}">
			<script>$(".Modal_root__aEM8D.login").css('display', 'block')</script>
		</c:if>
	
    <div id="__next" data-reactroot="">
        <div class="Padding_padding___Nyki"></div>
        <div class="EventList_EventList__f8_7d">
            <header><a href="/events/22_09_s09_b06" class="" aria-label="" target="_blank" rel="noopener noreferrer"
                    data-attribute-id="event__banner__click" data-landing-uri="/events/22_09_s09_b06"
                    data-position="top">
                    <section class="BgImg_bgType__f_agX Banner_Banner_image__EBGa5"
                        style="padding-bottom: 15%; background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fwanted-marketing-image.s3.ap-northeast-2.amazonaws.com%2Fcareer-biz-banner%2F220928_event_web.jpg&amp;w=2000&amp;q=100&quot;);">
                    </section>
                </a></header>
            <div class="EventList_EventList_body__xC2W6" style ="height: 1410px;">
                <h1 class="Header_Header__title__UL9Mp">서울 체크인에서 만날 수 있는 다양한 한국 문화 체험을 소개할게요!</h1>
                <div class="Sticky_Sticky_edge__c8cz0"></div>
                <div
                    class="Sticky_Sticky_target__3v02E Header_Header__xnAUj EventList_EventList_header__7lei8 isLoggedIn">
                    <div class="Header_Header__container__4Zqr2">
                        <div class="InterestTagSlide_InterestTagSlide__EcPDf CategoryList_CategoryList__pUDFh">
                            <div
                                class="ScrollSnap_ScrollSnap__8lbBS ScrollSnap_ScrollSnap__hide__JYsOD InterestTagSlide_InterestTagSlide__slide__Aq8hR">
                                <div
                                    class="ScrollSnap_ScrollSnap__scroll__ntQgN ScrollSnap_ScrollSnap__hide__JYsOD ScrollSnap_ScrollSnap__scroll__x__S4ZcA ScrollSnap_ScrollSnap__scroll__contain__GcLae ScrollSnap_ScrollSnap__scroll__x__mandatory__G44vq TagSlide_TagSlide__LxahN InterestTagSlide_InterestTagSlide__tag__slide__ItlL9">
                                    <!-- <button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r InterestCategoryItem_InterestCategoryItem__selected__ljT8K"
                                        data-attribute-id="eventList__category__update" data-event-category="전체"
                                        data-text="전체"><span
                                            class="Button_Button__label__1Kk0v">전체</span></button> --><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10086"
                                        data-event-category="커리어고민" data-text="커리어고민"><span
                                            class="Button_Button__label__1Kk0v">한국어</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="517"
                                        data-event-category="HR" data-text="HR"><span
                                            class="Button_Button__label__1Kk0v">한식</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="507"
                                        data-event-category="경영·비즈니스" data-text="경영·비즈니스"><span
                                            class="Button_Button__label__1Kk0v">김장</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="518"
                                        data-event-category="개발" data-text="개발"><span
                                            class="Button_Button__label__1Kk0v">한복</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10244"
                                        data-event-category="회사생활" data-text="회사생활"><span
                                            class="Button_Button__label__1Kk0v">자개</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10241"
                                        data-event-category="취업/이직" data-text="취업/이직"><span
                                            class="Button_Button__label__1Kk0v">전통놀이</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10059"
                                        data-event-category="IT/기술" data-text="IT/기술"><span
                                            class="Button_Button__label__1Kk0v">한국무용</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10072"
                                        data-event-category="브랜딩" data-text="브랜딩"><span
                                            class="Button_Button__label__1Kk0v">전통술</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="523"
                                        data-event-category="마케팅·광고" data-text="마케팅·광고"><span
                                            class="Button_Button__label__1Kk0v">도자기</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10069"
                                        data-event-category="리더십" data-text="리더십"><span
                                            class="Button_Button__label__1Kk0v">태권도</span></button><button
                                        class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w InterestCategoryItem_InterestCategoryItem__yDh0r"
                                        data-attribute-id="eventList__category__update" data-event-category-id="10239"
                                        data-event-category="조직문화" data-text="조직문화"><span
                                            class="Button_Button__label__1Kk0v">자개</span></button>
                                </div>
                                <div class="TagSlide_TagSlide__arrow__DQk2_ TagSlide_TagSlide__leftArrow__HznBp">
                                    <button type="button">
                                    <span class="SvgIcon_SvgIcon__root__8vwon">
                                    	<svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 18 18">
                                               <path>
                                               		d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z">
                                                </path>
                                         </svg>
                                    </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <hr class="Divider_Divider__root__f2LD0 Header_Header__divider__fmABs">
                    </div>
                </div>
                <!-- 강의 프로그램 소개  -->
                <div class="classAll"></div>
                <div class="EventList_EventList_container__mcoes EventList_EventList_items__NeJxX">
                    <div>
                  <%--        <div class="EventItems_EventItems_list__1d36q"> 
                        <!-- 수강 첫번째 소개 -->
                       <c:choose>
                       <c:when test="${programs != null and fn:length(programs) > 0}">
                       <c:forEach var="school" items="${programs}">
                            <div class="EventItem_EventItem__1Rj6D" style="--base-font-size:10;">
	                            <a href="javascript:void(0)" class="EventItem_EventItem_link__gWsoH" aria-label="">
	                            		 수강 이미지
	                                    <header class="EventItem_EventItem_media__T_Pm2" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2388%2Fa96336c6.jpg&amp;w=1200&amp;q=75&quot;);">
	                                    </header>
	                                    <div class="EventItem_EventItem_body__ix_9a">
	                                        <div class="EventKinds EventKinds_EventKinds__YhUSb">
	                                        <!-- <span class="EventKind EventKinds_EventKind__eWUu8 is-online">
		                                        <svg xmlns="http://www.w3.org/2000/svg" width="11" height="12" viewBox="0 0 11 12">
		                                        	<path fill="currentColor" d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z"></path>
		                                        </svg>
		                                        <span class="EventKinds_EventKind__text__sYu5A">온라인</span>
	                                        </span> -->
	                                        <span class="EventKind EventKinds_EventKind__eWUu8 is-event">
	                                        	<span class="EventKinds_EventKind__text__sYu5A">이벤트</span>
	                                        </span>
	                                   	</div>
	                                   	<h2 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
	                                   		<c:out value="${school.getSchoolName()}"/>
	                                   	</h2>
	                                   	<h3 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
	                                   		<c:out value="${school.getSchoolTime()}"/>
	                                   	</h3>
	                                   	<div class="EventCategories_EventCategories__GN0Wa">
	                                   		<span class="EventCategories_EventCategories_categoriesTag__C83cl">#개발 #IT/기술 #회사생활</span>
	                                   	</div>
	                                    </div>
                                </a>
                            </div> 
                             </c:forEach>
                            </c:when>
                                <c:otherwise>
                                <div>
                                	<div class="PostItem_PostItem__top__0qIud">등록된 게시물이 없습니다.</td>
                                </div>
                                </c:otherwise>
                            </c:choose>
                            --%>
                            
                            <!-- 두번째 수강 신청  -->
                            <!-- <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2362" data-event-title="이직을 Wanted | 이직 지원 프로젝트"
                                data-event-category="Career Advice,Career Search,Work Productivity"
                                data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=newcareerwanted"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2362%2F9cb1a7ea.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            이직을 Wanted | 이직 지원 프로젝트</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            2022.08.30 (화) ~ 2022.10.02 (일)</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#커리어고민
                                                #취업/이직 #회사생활</span></div>
                                    </div>
                                </a></div> -->
                                
                                
                            <!-- <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2398" data-event-title="원티드 x 스위프트 코딩클럽 2기 모집"
                                data-event-category="IT,Tech" data-event-label="event" style="--base-font-size:10;">
                                <a href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=swiftCodingClub2"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2398%2F49612069.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            원티드 x 스위프트 코딩클럽 2기 모집</h2><span
                                            class="EventStatus_EventStatus__BUEwL">정원마감</span>
                                    </div>
                                </a>
                            </div> -->
                            <%-- <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2394" data-event-title="원티드긱스 <개발자의 달>" data-event-category="IT"
                                data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=wantedgigs_find"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2394%2F413a8e58.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            원티드긱스 &lt;개발자의 달&gt;</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            2022.09.29 (목) ~ 2022.11.03 (목)</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#개발</span>
                                        </div>
                                    </div>
                                </a></div> --%>
                            <!-- <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2397" data-event-title="Close-業 : 브랜디" data-event-category="Branding"
                                data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=brandi2022"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2397%2F20892d39.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            Close-業 : 브랜디</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#Close-業
                                                #브랜딩</span></div>
                                    </div>
                                </a></div> -->
                           <!--  <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2373" data-event-title="원티드 투자 제안 접수"
                                data-event-category="Tech,Finance,Business/Strategy" data-event-label="event"
                                style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=wanted_investment"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2373%2F80af9298.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            원티드 투자 제안 접수</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#IT/기술
                                                #금융 #경영/전략</span></div>
                                    </div>
                                </a></div> -->
                         <!--    <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2342" data-event-title="우리 회사를 소개합니다" data-event-category="Branding"
                                data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=employeebranding"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2342%2F5743078b.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            우리 회사를 소개합니다</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#브랜딩
                                                #채용이벤트</span></div>
                                    </div>
                                </a></div> -->
                           <!--  <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2294" data-event-title="Close-業 : 원더피플" data-event-category="Branding"
                                data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=wonderpeople"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2294%2F45fe9f6e.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            Close-業 : 원더피플</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#Close-業
                                                #브랜딩</span></div>
                                    </div>
                                </a></div> -->
                          <!--   <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2288" data-event-title="Close-業 : 원티드랩"
                                data-event-category="Branding,Work Productivity" data-event-label="event"
                                style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=wantedlab2022"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2288%2F731f7007.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            Close-業 : 원티드랩</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#브랜딩
                                                #Close-業 #회사생활</span></div>
                                    </div>
                                </a></div> -->
                           <!--  <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="2191" data-event-title="원티드 개발자 커뮤니티 : Wanted Dev Crew"
                                data-event-category="IT" data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=wanteddevcrew"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2191%2F2b8bd42f.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            원티드 개발자 커뮤니티 : Wanted Dev Crew</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#개발</span>
                                        </div>
                                    </div>
                                </a></div> -->
                          <!--   <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="1965" data-event-title="원티드 데이터 리포트"
                                data-event-category="Career Search,Career Advice,IT" data-event-label="event"
                                style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=datareport1"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F1965%2F9f255ebb.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            원티드 데이터 리포트</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#취업/이직
                                                #커리어고민 #개발</span></div>
                                    </div>
                                </a></div> -->
                           <!--  <div class="EventItem_EventItem__1Rj6D" data-attribute-id="event__click"
                                data-event-id="1958" data-event-title="Close-業 : 위대한상상 '요기요'"
                                data-event-category="Branding" data-event-label="event" style="--base-font-size:10;"><a
                                    href="/events?sort=deadline&amp;label=event&amp;payable=all&amp;keywords=&amp;eventIdOrKey=yogiyo"
                                    class="EventItem_EventItem_link__gWsoH" aria-label="">
                                    <header class="EventItem_EventItem_media__T_Pm2"
                                        style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F1958%2Fb96c1956.jpg&amp;w=1200&amp;q=75&quot;);">
                                    </header>
                                    <div class="EventItem_EventItem_body__ix_9a">
                                        <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                    viewBox="0 0 11 12">
                                                    <path fill="currentColor"
                                                        d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                    </path>
                                                </svg><span
                                                    class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                class="EventKind EventKinds_EventKind__eWUu8 is-event"><span
                                                    class="EventKinds_EventKind__text__sYu5A">이벤트</span></span>
                                        </div>
                                        <h2
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                            Close-業 : 위대한상상 '요기요'</h2>
                                        <h3
                                            class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                            상시</h3>
                                        <div class="EventCategories_EventCategories__GN0Wa"><span
                                                class="EventCategories_EventCategories_categoriesTag__C83cl">#브랜딩
                                                #Close-業</span></div>
                                    </div>
                                </a></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- 강의 클릭 시 모달 창  -->
    <div scrolly="200">
	<%-- <c:choose>
    <c:when test="${not empty sessionScope.memberNumber}"> --%>
        <div class="Modal_Modal__root__lNnQN EventDetailModal_EventDetailModal_root__aLcki undefined">
            <div class="Modal_Modal__root__backdrop__ENcJl"></div>
            <div class="EventDetailModal_EventDetailModal_close__BDMtG">
                <button type="button" class="EventDetailModal_EventDetailModal_close_button__Gq2TM">
                    <span class="SvgIcon_SvgIcon__root__8vwon">
	                    <svg class="SvgIcon_SvgIcon__root__svg__DKYBi EventDetailModal_EventDetailModal_close_icon__0mueS" style="padding-top: 10px; padding-left: 11px;">
	                    	<path d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z"></path>
	                    </svg>
                    </span>
                </button>
            </div>
            
            <div class="Modal_Modal__root__body__1_X6A Modal_Modal__root__body__scrollContent__ro_P_ EventDetailModal_EventDetailModal__2a_lm">
            	
                
                	<div class="EventDetail_EventDetail_root__o8Yri EventDetail_EventDetail_root_scroll__WvmmF">
                		<div class="RelatedEvents_RelatedEvents__HIx3_">
                    	<h2 class="RelatedEvents_RelatedEvents_title__iKr5x">함께 보면 좋은 이벤트</h2>
                    	<ul class="RelatedEvents_RelatedEvents_list__V4YAr">
                    	<div class="EventItem_EventItem__1Rj6D RelatedEvents_RelatedEvents_item__4n8Wu" data-attribute-id="event__relatedEvent__click" data-event-id="1861" data-event-title="[무료] 어느 개발 팀장 이야기 : Talk #70" data-event-category="IT,Career Advice" data-event-label="video" data-related-type="sameKeyword" style="--base-font-size:10;">
                    	<a href="/events?eventIdOrKey=talk70" class="EventItem_EventItem_link__gWsoH" aria-label="">
                    	<header class="EventItem_EventItem_media__T_Pm2" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F1861%2F8e0a0f09.jpg&amp;w=1200&amp;q=75&quot;);"></header>
                    	<div class="EventItem_EventItem_body__ix_9a">
                                            <div class="EventKinds EventKinds_EventKinds__YhUSb">
	                                            <span class="EventKind EventKinds_EventKind__eWUu8 is-online">
		                                            <svg xmlns="http://www.w3.org/2000/svg" width="11" height="12" viewBox="0 0 11 12">
		                                            	<path fill="currentColor" d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z"></path>
		                                            </svg>
		                                            <span class="EventKinds_EventKind__text__sYu5A">온라인</span>
	                                            </span>
	                                            <span class="EventKind EventKinds_EventKind__eWUu8 is-video">
	                                            	<span class="EventKinds_EventKind__text__sYu5A">VOD</span>
	                                            </span>
                                            </div>
                                            <h2 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT"> [무료] 어느 개발 팀장 이야기 : Talk #70</h2>
                                            <h3 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR"> 상시</h3>
                                            <div class="EventCategories_EventCategories__GN0Wa">
                                            	<span class="EventCategories_EventCategories_categoriesTag__C83cl">#개발 #커리어고민</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                
                                <div class="EventItem_EventItem__1Rj6D RelatedEvents_RelatedEvents_item__4n8Wu"
                                    data-attribute-id="event__relatedEvent__click" data-event-id="2392"
                                    data-event-title="[채용] 롯데헬스케어 웹서비스 백엔드 개발자" data-event-category="Career Search,Tech,IT"
                                    data-event-label="promotion" data-related-type="sameKeyword"
                                    style="--base-font-size:10;"><a href="/events?eventIdOrKey=seatandtalk_lottehealthcare"
                                        class="EventItem_EventItem_link__gWsoH" aria-label="">
                                        <header class="EventItem_EventItem_media__T_Pm2"
                                            style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2392%2Fd236d54b.jpg&amp;w=1200&amp;q=75&quot;);">
                                        </header>
                                        <div class="EventItem_EventItem_body__ix_9a">
                                            <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                    class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                        viewBox="0 0 11 12">
                                                        <path fill="currentColor"
                                                            d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                        </path>
                                                    </svg><span
                                                        class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                    class="EventKind EventKinds_EventKind__eWUu8 is-promotion"><span
                                                        class="EventKinds_EventKind__text__sYu5A">프로모션</span></span></div>
                                            <h2
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                                [채용] 롯데헬스케어 웹서비스 백엔드 개발자</h2>
                                            <h3
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                                2022.09.16 (금) ~ 2022.10.14 (금)</h3>
                                            <div class="EventCategories_EventCategories__GN0Wa"><span
                                                    class="EventCategories_EventCategories_categoriesTag__C83cl">#취업/이직
                                                    #IT/기술 #개발</span></div>
                                        </div>
                                    </a></div>
                                <div class="EventItem_EventItem__1Rj6D RelatedEvents_RelatedEvents_item__4n8Wu"
                                    data-attribute-id="event__relatedEvent__click" data-event-id="1321"
                                    data-event-title="성장하는 안드로이드 개발자 되기 : Live Talk #29" data-event-category="Tech"
                                    data-event-label="video" data-related-type="sameKeyword" style="--base-font-size:10;"><a
                                        href="/events?eventIdOrKey=livetalk29" class="EventItem_EventItem_link__gWsoH"
                                        aria-label="">
                                        <header class="EventItem_EventItem_media__T_Pm2"
                                            style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F1321%2Ffa3aca00.jpg&amp;w=1200&amp;q=75&quot;);">
                                        </header>
                                        <div class="EventItem_EventItem_body__ix_9a">
                                            <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                    class="EventKind EventKinds_EventKind__eWUu8 is-online"><svg
                                                        xmlns="http://www.w3.org/2000/svg" width="11" height="12"
                                                        viewBox="0 0 11 12">
                                                        <path fill="currentColor"
                                                            d="M5.98.9A5.09 5.09 0 00.32 6.54l1.03-.1a4.07 4.07 0 014.52-4.53L5.98.89zm4.57 4.56l-1.03.1A4.07 4.07 0 015 10.1l-.11 1.03a5.1 5.1 0 005.66-5.66zM5.76 2.94c-.9-.1-1.84.18-2.53.86a3.06 3.06 0 00-.86 2.54l1.02-.11c-.07-.6.12-1.24.57-1.7a2.05 2.05 0 011.7-.57l.1-1.02zM8.5 5.68l-1.04.12a2 2 0 01-2.24 2.24L5.1 9.06a3.06 3.06 0 003.4-3.4zm-2.53-.22c-.3-.3-.8-.3-1.1 0-.3.3-.29.78.02 1.08.3.3.79.3 1.09 0 .3-.3.3-.78 0-1.08z">
                                                        </path>
                                                    </svg><span
                                                        class="EventKinds_EventKind__text__sYu5A">온라인</span></span><span
                                                    class="EventKind EventKinds_EventKind__eWUu8 is-video"><span
                                                        class="EventKinds_EventKind__text__sYu5A">VOD</span></span></div>
                                            <h2
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                                성장하는 안드로이드 개발자 되기 : Live Talk #29</h2>
                                            <h3
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                                상시</h3>
                                            <div class="EventCategories_EventCategories__GN0Wa"><span
                                                    class="EventCategories_EventCategories_categoriesTag__C83cl">#IT/기술
                                                    #Wanted Plus</span></div>
                                        </div>
                                    </a></div>
                                <div class="EventItem_EventItem__1Rj6D RelatedEvents_RelatedEvents_item__4n8Wu"
                                    data-attribute-id="event__relatedEvent__click" data-event-id="1935"
                                    data-event-title="3개월 안에 중급자, #너도할수있어" data-event-category="IT,Tech,Career Advice"
                                    data-event-label="article" data-related-type="sameKeyword" style="--base-font-size:10;">
                                    <a href="/events?eventIdOrKey=22_03_s07_b03" class="EventItem_EventItem_link__gWsoH"
                                        aria-label="">
                                        <header class="EventItem_EventItem_media__T_Pm2"
                                            style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F1935%2F28c10c51.jpg&amp;w=1200&amp;q=75&quot;);">
                                        </header>
                                        <div class="EventItem_EventItem_body__ix_9a">
                                            <div class="EventKinds EventKinds_EventKinds__YhUSb"><span
                                                    class="EventKind EventKinds_EventKind__eWUu8 is-article"><span
                                                        class="EventKinds_EventKind__text__sYu5A">아티클</span></span></div>
                                            <h2
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">
                                                3개월 안에 중급자, #너도할수있어</h2>
                                            <h3
                                                class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">
                                                상시</h3>
                                            <div class="EventCategories_EventCategories__GN0Wa"><span
                                                    class="EventCategories_EventCategories_categoriesTag__C83cl">#개발 #IT/기술
                                                    #커리어고민</span></div>
                                        </div>
                                    </a>
                                </div>
                            </ul>
                            <div class="RelatedEvents_RelatedEvents_bottom__ZiR_s">
	                            <a href="/events" class="style_wrapper__IgK7U RelatedEvents_RelatedEvents_button__wd47j" aria-label="" data-attribute-id="event__goToEventList">이벤트 모두 보기 
	                                    <svg width="12" height="12" viewBox="0 0 12 12">
	                                        <path fill="currentColor" d="M4.22 9.72a.75.75 0 001.06 1.06l4.25-4.25a.75.75 0 000-1.06L5.28 1.22a.75.75 0 00-1.06 1.06L7.94 6 4.22 9.72z"></path>
	                                    </svg>
	                            </a>
                            </div>
                        </div>
                        <button
                            class="Button_Button__root__V1ie3 Button_Button__icon__kMj7B undefined Button_Button__sizeMedium__k0A1w ShareButton_ShareButton__shareButton__NG7V_"
                            data-attribute-id="event__goShare" data-title="원티드 x 스위프트 코딩클럽 2기 모집" data-content="event"
                            data-event-id="2398"><span class="Button_Button__label__1Kk0v"><svg
                                    xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"
                                    width="20" height="20" viewBox="0 0 20 20">
                                    <defs>
                                        <path id="shareIcon"
                                            d="M5.336 7.75c-.551-.703-1.418-1.136-2.365-1.136C1.337 6.614 0 7.898 0 9.494c0 1.596 1.336 2.879 2.971 2.879.93 0 1.785-.419 2.338-1.102l8.495 4.482c.128.068.276.092.42.068l.025-.004c.213-.036.395-.173.489-.367.101-.21.249-.393.437-.54.673-.526 1.643-.407 2.168.266.526.673.407 1.643-.265 2.167-.673.526-1.643.407-2.168-.266-.226-.29-.644-.34-.933-.115-.29.226-.34.644-.115.933.977 1.251 2.783 1.473 4.034.496 1.25-.976 1.472-2.782.495-4.033-.977-1.251-2.783-1.473-4.033-.496-.169.132-.32.28-.454.442L5.478 9.858c-.322-.241-.816-.145-1 .255-.259.558-.844.93-1.507.93-.913 0-1.642-.7-1.642-1.55 0-.849.73-1.55 1.642-1.55.636 0 1.2.343 1.473.863.107.368.526.64.954.413l9.026-4.762.118-.079.029-.024c.233-.197.303-.527.169-.8-.104-.212-.158-.442-.158-.68 0-.853.692-1.545 1.544-1.545.853 0 1.545.692 1.545 1.544 0 .854-.691 1.545-1.545 1.545-.367 0-.664.297-.664.664 0 .367.297.665.664.665C17.714 5.747 19 4.46 19 2.873 19 1.287 17.713 0 16.126 0c-1.586 0-2.873 1.287-2.873 2.873 0 .224.026.445.076.66L5.336 7.748z">
                                        </path>
                                    </defs>
                                    <g fill="none" fill-rule="evenodd">
                                        <use fill="#36F" xlink:href="#shareIcon"></use>
                                    </g>
                                </svg></span></button>
                    </div>
                   <%-- </c:when>
                   <c:otherwise>
						<script type="text/javascript">
							$(".Modal_root__aEM8D.login").css('display', 'block');
						</script>
                   </c:otherwise>
                 </c:choose> --%>
                </div>
       
       
            <!-- 신청하기 모달창 -->
            <div class="modal">

                <div class="modal_body">
                    <div class="EventDetailModalClose">
                        <button type="button" class="EventDetailModal_EventDetailModal_close_button__Gq2TM">
                            <span class="SvgIcon">
                                <svg class="SvgIconRoot"
                                    viewBox="0 0 24 24">
                                    <path
                                        d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z">
                                    </path>
                                </svg>
                            </span>
                        </button>
                    </div>
                    <div class="title">신청하시겠습니까?</div>
                    <div class="btnBodyTwo">
                        
                        <div class="Buttons_Buttons__item__yfnts">
                            <a href="javascript:void(0)" class="btnModalTwo yes">
                                <button class="btnItemTwo yes" type="button" style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255);">네</button>
                            </a>
                        </div>
                        <div class="Buttons_Buttons__item__yfnts">
                            <a href="javascript:void(0)" class="btnModalTwo no">
                                <button class="btnItemTwo no" type="button" onclick="location.href='${pageContext.request.contextPath}/app/school/program.jsp'" style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255);">아니요</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    


</body>
<script>

	show();

	function show(){
		$.ajax({
			url: "/school/programlist.sc",
			dataType: "json",
			success:  function showList(schools){
				console.log("ajax 들어옴옴")
		    	let text = "";
				schools.forEach(school => {
			    		text += `<div class="EventItems_EventItems_list__1d36q">`
			    		text += `<div class="EventItem_EventItem__1Rj6D" data-number=` + school.schoolNumber +`>`;
			    		text += `<div class="EventItem_EventItem_media__T_Pm2">`;
		    			text += `<img src=` + `../upload/school/` + school.schoolPhoto + ` style="width:248px; height:173px;">`;
		    			text += `</div>`;
		    			text += `<div class="EventItem_EventItem_body__ix_9a">`;
		    			text += `<div class="EventKinds EventKinds_EventKinds__YhUSb">`;
		    			text += `<span class="EventKind EventKinds_EventKind__eWUu8 is-event">`;
		    			text += `<span class="EventKinds_EventKind__text__sYu5A">`  + ((school.schoolStatus == "1") ? "진행중" : "신청마감") + `</span>` ;
		    			text += `<div class="status" style="display:none;" data-count = ` + school.schoolStatus + `>` + `</div>`;
		    			text += `</span>`;
		    			text += `</div>`;
		    			text += `<h2 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_maintitle__lC0yT">` + school.schoolName + `</h2>`;
		    			text += `<h3 class="EventItem_EventItem_title__Xjepj EventItem_EventItem_subtitle__p_ZPR">` + school.schoolOpeningDate + " ~ " +  school.schoolClosingDate  + `</h3>`;
		    			text += `<h3 class="EventCategories_EventCategories_categoriesTag__C83cl">` + school.schoolTime  + `</h3>`;
			    		text += `</div>`;
			    		text += `</div>`;
			    		text += `</div>`;
		    		});
		    		text += `</div>`;
		    		text += `</div>`;
		    		
		    		$(".EventList_EventList_container__mcoes").html(text);
					}
		});
	}
	
	
	/* 수강 상세 조회 모달 */
	$(".EventList_EventList_container__mcoes").on("click", ".EventItem_EventItem__1Rj6D", function(){
		/* if(memberNumber == null){
			$(".Modal_root__aEM8D.login").css('display', 'block');			
		}else{ */
			schoolNumber = $(this).data("number");
			$(".Modal_Modal__root__lNnQN").fadeIn();
		 	$.ajax({
				url: "/school/programdetail.sc",
				type: "get",
				data: {schoolNumber: $(this).data("number")},
				dataType: "json",
				contentType: "application/json; charset=utf-8",
				success: showDetail
				
			  });
	/* 	} */
	});
	
	$(".EventDetailModal_EventDetailModal_close__BDMtG").click(function(){
        $(".Modal_Modal__root__lNnQN").fadeOut();
    });
    
			
	function showDetail(school){
		schoolNumber = school.schoolNumber;
			let text = "";
			text += `<div class="EventDetail_EventDetail_wrapper__Sl_BY">`;
			text += `<div class="SectionsBar_SectionsBar__root__h0MJc">`;
			text += `<div class="SectionsBar_SectionsBar__root__container__section__PiYRL">`;
			text += `</div>`;
			text += `<div class="SectionsBar_SectionsBar__root__container__buttons__j4hzV">`+ `</div>`;
			text += `</div>`;
			text += `<section class="EditorTypeEvent_className__S6F1v">`;
			text += `<header class="Header_className__JXuO9">`;
			text += `<section class="Header_titleImage__ojHco">` + `<img src="` + `../upload/school/` + school.schoolPhoto + `" style="width:700px; height:400px;">` + `</section>`;
			text += `<section class="Header_eventInfo__nSsD3">`;
			text += `<h2 class="Header_titleClass__O1zQh">` + school.schoolName + `</h2>`;
			text += `<h4 class="Header_subTitleClass__I8QrA">` + "일자" + `</h4>`;
			text += `<h5 class="Header_subContentClass__jSQTM">`+ school.schoolOpeningDate + " ~ " + school.schoolClosingDate + `</h5>`;
			text += `<h4 class="Header_subTitleClass__I8QrA">` + "장소" + `</h4>`;
			text += `<h5 class="Header_subContentClass__jSQTM">` + school.schoolAddress + `</h5>`;
			text += `<h4 class="Header_subTitleClass__I8QrA">` + "잔여" +`</h4>`;
			text += `<h5 class="Header_subContentClass__jSQTM">` +  school.schoolLimitCount +`</h5>`;
			text += `<h4 class="Header_subTitleClass__I8QrA">` + "강사명" + `</h4>`;
			text += `<h5 class="Header_subContentClass__jSQTM">` + school.schoolTeacherName +`</h5>`;
			text += `</section>`;
			text += `<div class="Buttons_Buttons__bSq1p Header_buttonsClasses__HF4zs notFixedPos">`;
			text += `<div class="Buttons_Buttons__item__yfnts">`;
			text += `<div class="btnModalTwo btnSchoolNumber">`;
			text += `<button class="ButtonItem_className__kRZYN applyBtn" type="button" style="background: rgb(255, 255, 255); border: 1px solid rgb(51, 102, 255); color: rgb(51, 102, 255);" data-number=`+ school.schoolNumber + `>` + "신청 하기" + `</button>`;
			text += `</div>`;
			text += `</div>`;
			/* text += `<div class="Buttons_Buttons__item__yfnts">`;
			text += `<a href="javascript:void(0)" class="btnModalTwo">`;
			text += `<button class="ButtonItem_className__kRZYN" disabled="" type="button" style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255);">` + "신청마감" + `</button>`;
			text += `</a>`;
			text += `</div>`; */
			text += `</div>`; 
			text += `<a>`;
			text += `</header>`;
			text += `</a>`;
			text += `<div class="EditorTypeEvent_htmlContainer__IdzGB">`;
			text += `<div class="EditorTypeEvent_sectionContainer__xpj2h">`;
			text += `<h2>` + school.schoolName +`</h2>`;
			text += `<div>` +school.schoolIntroduce + `</div>`;
	        text += `</div>`;
	        text += `</div>`;
	        text += `</section>`;
		$(".EventDetail_EventDetail_root__o8Yri").html(text);
	};
	
	

    /* 3번째 모달 */
    $(".Modal_Modal__root__body__1_X6A").on("click", ".btnModalTwo.btnSchoolNumber", function(){
    	$(".modal").fadeIn();
	});
    

    $(".btnItemTwo.yes").on("click", function(){
    	console.log("수강신청")
    	console.log(schoolNumber)
    	  
    	$.ajax({
    		url: "/school/applyprogram.sc",
 			type: "get",
 			data: {schoolNumber : schoolNumber, memberNumber : memberNumber},
 			contentType: "application/json; charset=utf-8",
 			success:
 				function(){
 				$(".modal").fadeOut();
 				$(".Modal_Modal__root__lNnQN").fadeOut();
 			}
 		  });  
    	
    });
    
    $(".btnItemTwo.no").on("click", function(){
    	location.href = "/school/program.sc";
    });
	
    $(".EventDetailModalClose").click(function(){
        $(".modal").fadeOut();
    });
    
    

    
    
    
    
    $(document).ready(function(){
        $('.btnItemTwo').mouseover(function(){
            $(this).css("backgroundColor","rgb(51, 102, 255)");
        });
        $('.btnItemTwo').mouseout(function(){
            $(this).css("backgroundColor","rgb(204, 204, 204)");
        }); 
    });

    
</script>
</html>