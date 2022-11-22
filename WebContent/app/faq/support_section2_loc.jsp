<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 서울체크인 - 내국인 결과 페이지  -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>서울체크인 - 답변 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice/support_section.css">
<script src="https://kit.fontawesome.com/eef865b2f8.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<main role="main">
		<style>
#MOBILERealatedArticlesDIV>section>ul>li {
	padding-left: 0px !important;
	padding-right: 0px !important;
}

.search input[type="search"] {
	background-color: #fff;
	border: 1px solid #ececec;
	border-radius: 5px;
	height: 50px;
	padding: 10px 55px 10px 15px;
	width: 100%;
}

#article_new_request_button {
	color: #3366FF;
	font-weight: bold;
}

#article_new_request_label {
	color: #747474;
}

@media ( max-width : 992px) {
	#article_new_request_button {
		color: #3366FF;
		font-weight: bold;
		display: block;
	}
}

/*모바일 버전 관련문서 보이기*/
@media ( max-width : 769px) {
	#mobile_related_articles_DIV {
		display: block;
	}
	#pc_related_articles_DIV {
		display: none;
	}
}

@media ( min-width : 770px) {
	/*모바일 버전 관련문서 보이기*/
	#mobile_related_articles_DIV {
		display: none;
	}
	#pc_related_articles_DIV {
		display: block;
	}
}

/*모바일 버전 관련문서 버튼 스타일*/
#related_articles_div_collapse_btn {
	width: 100%;
	background-color: #FFFFFF;
	color: #333333;
	border-color: #EAEAEA;
	text-align: left;
	padding-right: 23px;
	padding-top: 15px;
	padding-bottom: 15px;
}

/*모바일 버전 관련문서 버튼 after*/
#related_articles_div_collapse_btn:after {
	content: "";
	background-image:
		url("//theme.zdassets.com/theme_assets/9309779/32a2fa4e5ce568e7fb16063205277a8abd1c66b3.png");
	background-size: 25px 25px;
	display: inline-block;
	width: 20px;
	height: 20px;
	color: #333333;
	/* float: right; */
}

#related_articles_div_collapse_btn[aria-expanded="false"]:after {
	content: "";
	background-image:
		url("//theme.zdassets.com/theme_assets/9309779/32a2fa4e5ce568e7fb16063205277a8abd1c66b3.png");
	background-size: 25px 25px;
	display: inline-block;
	width: 20px;
	height: 20px;
	color: #333333;
	/* float: right; */
}

#related_articles_div_collapse_btn[aria-expanded="true"]:after {
	content: "";
	background-image:
		url("//theme.zdassets.com/theme_assets/9309779/b9726d609a703175d8fc43f279dd6e8687aa1439.png");
	background-size: 25px 25px;
	display: inline-block;
	width: 20px;
	height: 20px;
	color: #333333;
	/* float: right; */
}

/*Zendesk 기본 관련문서 타이틀 숨기기*/
#MOBILERealatedArticlesDIV>section>h3 {
	display: none;
}

ol.breadcrumbs {
	padding-left: 0px;
}

/*상단 문서 Path 및 검색 영역 [S]*/
.breadcrumb-container {
	margin-bottom: 20px;
	padding-right: 15px;
	padding-left: 0px;
}

.breadcrumb-container-path {
	padding-left: 15px;
}

.breadcrumb-container-search {
	padding-left: 0px;
	padding-right: 0px;
}

@media ( max-width : 769px) {
	#article-content-div {
		padding-right: 0px;
	}
	.breadcrumb-container {
		margin-bottom: 20px;
		padding-right: 0px;
		padding-left: 0px;
	}
	.breadcrumb-container-search {
		padding-left: 15px;
		padding-right: 15px;
	}
	form.search input[type="submit"] {
		right: 10px;
	}
}

/*상단 문서 Path 및 검색 영역 [E]*/
@media ( min-width : 992px) {
	#article-content-div {
		padding-right: 80px;
	}
}

.breadcrumbs {
	padding-left: 0px;
}

#new_request_container {
	padding-top: 120px;
	padding-bottom: 150px;
}

@media ( max-width : 769px) {
	#new_request_container {
		padding-top: 60px;
		padding-bottom: 75px;
	}
}
</style>
		<div
			style="position: fixed; right: 17px; bottom: 17px; width: 55px; background: black; height: 55px; text-align: center; line-height: 55px; border-radius: 50%;">
			<a id="goTop" href="javascript:void(0)"> <img
				src="${pageContext.request.contextPath}/assets/images/main/btn_top.png"
				style="border-radius: 50%; margin: 0; margin-bottom: 3px">
			</a>
		</div>
		<section class="breadcrumb"></section>
		<div class="container breadcrumb-container">
			<div class="col-md-9 col-sm-9 col-xs-12 breadcrumb-container-path"
				style="float: left;">
				<ol class="breadcrumbs">
					<li title="서울체크인 고객센터"><a
						href="${pageContext.request.contextPath}/notice/noticelist.nt">서울체크인
							고객센터</a></li>
					<li title="내국인 회원"><a>내국인 회원</a></li>
				</ol>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-12 breadcrumb-container-search"
				style="float: right;">
				<form role="search" class="search" data-search="" action="${pageContext.request.contextPath}/notice/searchresult.nt"
					accept-charset="UTF-8" method="get" name="faqSearchForm">
					<input name="utf8" type="hidden" value="✓">
					<input
						type="search" name="query" id="query" placeholder="검색"
						aria-label="검색"> 
						<input type="button" name="commit"
						value="검색" onclick="searchSubmit()"
						style="border: medium none; height: 48px; overflow: hidden; position: absolute; right: 1px; top: 1px; background: #fff; padding: 0 15px; border-radius: 25px; color: #ababab; color: transparent; background: url(https://theme.zdassets.com/theme_assets/9309779/32d50e5e2e82fe3a2e1cab8abc09336bed336b0c.png); background-size: 50px; background-repeat: no-repeat; display: block; background-position: -15px 15px;">
				</form>
			</div>
		</div>
		<div class="container">
			<section class="article-wrapper">
				<div class="row" style="margin-right: 0px;">
					<div class="col-md-9 col-sm-9 col-xs-12" id="article-content-div">
						<div class="article__bg">
							<h3 class="article-head">
								<!-- 제목 -->
								<c:out value="${faqLocDetail.getFaqTitle()}" />
							</h3>
							<div class="article-body">
								<!-- 내용 -->
								<p>
									<c:out value="${faqLocDetail.getFaqArticle()}" />
								</p>
							</div>
						</div>
					</div>
					<div id="pc_related_articles_DIV">
						<p></p>
						<div class="col-md-3 col-sm-3 col-xs-12"
							style="float: right; border: 1px solid #ececec; padding-top: 20px; padding-bottom: 20px; margin-top: 40px !important; border-radius: 5px; padding-left: 0px; padding-right: 0px;">
							<aside class="article-sidebar side-column"
								style="font-size: 12px;" id="PCRealatedArticlesDIV">
								<section class="section-articles collapsible-sidebar">
									<h3 class="collapsible-sidebar-title sidenav-title"
										style="padding-left: 15px;">이 섹션의 문서</h3>
									<ul>
										<c:choose>
											<c:when
												test="${selLocTitles != null and fn:length(selLocTitles) > 0}">
												<c:forEach var="selLocTitle" items="${selLocTitles}">
													<li style="padding-left: 15px; padding-right: 15px;"><a
														href="${pageContext.request.contextPath}/notice/locdetail.nt?faqNumber=${selLocTitle.getFaqNumber()}"
														class="sidenav-item"><c:out
																value="${selLocTitle.getFaqTitle()}" /> </a></li>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<li style="padding-left: 15px; padding-right: 15px;"><a
													href="" class="sidenav-item"><c:out value="해당 내용이 없습니다" />
												</a></li>
											</c:otherwise>
										</c:choose>
									</ul>
								</section>
							</aside>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="container" id="new_request_container">
			<span id="article_new_request_label">또 다른 질문이
				있으십니까?&nbsp;&nbsp;&nbsp; <a
				href="${pageContext.request.contextPath}/notice/noticelist.nt"
				id="article_new_request_button">고객센터로 돌아가기 &gt; </a>
			</span>
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
	/* 검색 유효성 검사 */
	function searchSubmit() {
		var content = faqSearchForm.query.value;
		if (!content) {
			alert("검색어를 입력하세요");
			return;
		}
		faqSearchForm.submit();
	}
</script>
</html>