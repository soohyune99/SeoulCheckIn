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
<title>서울체크인 - 검색 결과</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice/support_searchResult.css">
<script src="https://kit.fontawesome.com/eef865b2f8.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<main role="main">
		<style>
.search-results-heading {
	color: #333333;
	font-size: 1.5em;
	margin-top: 10px;
	padding-bottom: 15px;
}

@media ( min-width : 770px) {
	.search-results-heading {
		font-size: 1.6em !important;
		font-weight: 600;
		padding-bottom: 30px !important;
	}
}

section.breadcrumb {
	padding: inherit;
	background-color: transparent;
	border-bottom: 1px solid #ececec;
}

.v2 {
	margin-bottom: 80px;
}
</style>
		<div
			style="position: fixed; right: 17px; bottom: 17px; width: 55px; background: black; height: 55px; text-align: center; line-height: 55px; border-radius: 50%;">
			<a id="goTop" href="javascript:void(0)"> <img
				src="${pageContext.request.contextPath}/assets/images/main/btn_top.png"
				style="border-radius: 50%; margin: 0; margin-bottom: 3px">
			</a>
		</div>
		<section class="breadcrumb">
			<div class="container">
				<ol class="breadcrumbs">
					<li title="서울체크인 고객센터"><a href="${pageContext.request.contextPath}/notice/noticelist.nt">서울체크인 고객센터</a></li>
					<li title="검색 결과">검색 결과</li>
				</ol>
			</div>
		</section>
		<div class="container v2">
			<div class="search-results">
				<h1 class="search-results-heading page-header">
					"${searchContent}"에 대한 검색 결과</h1>
					
					<!-- 공지사항 검색결과 -->
				<div class="row">
					<section class="search-results-column">
						<h2 class="search-results-subheading">공지사항</h2>
						<ul class="search-results-list">
							<c:choose>
								<c:when
									test="${noticeSearchSubmitResults != null and fn:length(noticeSearchSubmitResults) > 0}">
									<c:forEach var="noticeSearchSubmitResult"
										items="${noticeSearchSubmitResults}">
										<li class="search-result"><a href="${pageContext.request.contextPath}/notice/noticedetail.nt?noticeNumber=${noticeSearchSubmitResult.getNoticeNumber()}"
											class="search-result-link"><c:out
													value="${noticeSearchSubmitResult.getNoticeTitle()}" /></a>

											<div class="search-result-meta">
												<a
													href="${pageContext.request.contextPath}/notice/noticelist.nt">서울체크인
													고객센터</a> <a>공지사항</a>
											</div>
											<div class="search-result-description">
												<c:out
													value="${noticeSearchSubmitResult.getNoticeArticle()}" />
											</div></li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<li class="search-result"><a
										class="search-result-link">"검색결과가 없습니다"</a></li>

								</c:otherwise>
							</c:choose>
						</ul>
					</section>
				</div>
					<!-- 외국인 검색결과 -->
				<div class="row">
					<section class="search-results-column">
						<h2 class="search-results-subheading">외국인</h2>
						<ul class="search-results-list">
						
							<c:choose>
								<c:when
									test="${forSearchResultContents != null and fn:length(forSearchResultContents) > 0}">
									<c:forEach var="forSearchResultContent"
										items="${forSearchResultContents}">
										<li class="search-result"><a href="${pageContext.request.contextPath}/notice/fordetail.nt?faqNumber=${forSearchResultContent.getFaqNumber()}"
											class="search-result-link"><c:out
													value="${forSearchResultContent.getFaqTitle()}"/></a>

											<div class="search-result-meta">
												<a
													href="${pageContext.request.contextPath}/notice/noticelist.nt">서울체크인
													고객센터</a> <a>외국인</a>
											</div>
											<div class="search-result-description">
												<c:out
													value="${forSearchResultContent.getFaqArticle()}" />
											</div></li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<li class="search-result"><a
										class="search-result-link">"검색결과가 없습니다"</a></li>

								</c:otherwise>
							</c:choose>
						</ul>
					</section>
				</div>
				<!-- 내국인 검색결과 -->
				<div class="row">
					<section class="search-results-column">
						<h2 class="search-results-subheading">내국인</h2>
						<ul class="search-results-list">
							<c:choose>
								<c:when
									test="${locSearchResultContents != null and fn:length(locSearchResultContents) > 0}">
									<c:forEach var="locSearchResultContent"
										items="${locSearchResultContents}">
										<li class="search-result"><a href="${pageContext.request.contextPath}/notice/locdetail.nt?faqNumber=${locSearchResultContent.getFaqNumber()}"
											class="search-result-link"><c:out
													value="${locSearchResultContent.getFaqTitle()}" /></a>

											<div class="search-result-meta">
												<a
													href="${pageContext.request.contextPath}/notice/noticelist.nt">서울체크인
													고객센터</a> <a>내국인</a>
											</div>
											<div class="search-result-description">
												<c:out
													value="${locSearchResultContent.getFaqArticle()}" />
											</div></li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<li class="search-result"><a
										class="search-result-link">"검색결과가 없습니다"</a></li>

								</c:otherwise>
							</c:choose>
						</ul>
					</section>
				</div>
			</div>
		</div>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let $top = $("#goTop").click(function() {
		$("html,body").animate({
			scrollTop : 0
		}, 300);
	});
</script>
</html>