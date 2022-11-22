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
<title>서울체크인 - 고객센터</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice/support.css">
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<main>
		<div
			style="position: fixed; right: 17px; bottom: 17px; width: 55px; background: black; height: 55px; text-align: center; line-height: 55px; border-radius: 50%;">
			<a id="goTop" href="javascript:void(0)"> <img
				src="${pageContext.request.contextPath}/assets/images/main/btn_top.png"
				style="border-radius: 50%; margin: 0; margin-bottom: 3px">
			</a>
		</div>
		<section class="hero-unit text-center hero-image">
			<div class="container">
				<h1 class="help-center-name" id="help_center_title1">서울체크인에 대해</h1>
				<h1 class="help-center-name" id="help_center_title2">궁금한 점을
					검색해주세요.</h1>
				<p class="help-center-details"></p>
				<div class="hc_search">
					<form role="search" class="search" data-search=""
						data-instant="true" autocomplete="off"
						action="${pageContext.request.contextPath}/notice/searchresult.nt"
						accept-charset="UTF-8" method="get" name="faqSearchForm">
						<input name="utf8" type="hidden" value="✓"> <input
							type="search" name="query" id="query"
							placeholder="예) 서비스 이용방법, 비밀번호 찾기 등" autocomplete="off"
							aria-label="예) 서비스 이용방법, 비밀번호 찾기 등"> <input type="button"
							name="commit" value="검색" onclick="searchSubmit()">
					</form>
				</div>
			</div>
		</section>
		<!-- 2번째 -->
		<section class="home-category-blocks padding"
			style="padding-bottom: 0px;">
			<div class="container" style="padding-left: 0px; padding-right: 0px;">
				<div class="row">
					<div class="col-sm-12 col-xs-12 col-md-12" id="main_categorie_div">
						<ul class="category-list navigator text-center" id="with-id">
							<li id="360001834352" class="col-sm-6"
								style="border-radius: 5px;"><a
								style="cursor: pointer-event: none;" class="main-cat-li"> <!-- <span class="category-icon"></span> -->
									<h3 class="mainct-inner">외국인 회원</h3>
									<p>외국인 회원을 위한 이용 안내입니다.</p>
							</a></li>
							<li id="360001832811" class="col-sm-6"
								style="border-radius: 5px;"><a
								style="cursor: pointer-event: none;" class="main-cat-li"> <!-- <span class="category-icon"></span> -->
									<h3 class="mainct-inner">내국인 회원</h3>
									<p>내국인 회원을 위한 이용 안내입니다.</p>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<!-- 3번 째 -->
		<section class="home-category-blocks padding">
			<div class="container" style="padding-left: 0px; padding-right: 0px;">
				<div class="category_view">
					<div class="col-sm-6">
						<section class="articles">
							<h3>서울체크인 - 외국인 회원 질문</h3>
							<ul class="article-list">
								<c:choose>
									<c:when
										test="${forTitles != null and fn:length(forTitles) > 0}">
										<c:forEach var="forTitle" items="${forTitles}">
											<!-- 자주묻는 질문 리스트 공간 : 제목만 다 보여주는 곳 -->
											<li class="promoted-articles-item"
												style="list-style: none; margin-left: 15px;"><a
												href="${pageContext.request.contextPath}/notice/fordetail.nt?faqNumber=${forTitle.getFaqNumber()}"><font>
														<c:out value="${forTitle.getFaqTitle()}" />
												</font> <font style="float: right;"></font> </a></li>
										</c:forEach>
									</c:when>

									<c:otherwise>
										<li class="promoted-articles-item"
											style="list-style: none; margin-left: 15px;"><a href=""><font>
													<c:out value="등록된 사항이 없습니다" />
											</font> <font style="float: right;"></font> </a></li>
									</c:otherwise>
								</c:choose>
							</ul>
							<br> <br>
						</section>
					</div>
					<div class="col-sm-6">
						<section class="articles">
							<h3>서울체크인 - 내국인 회원 질문</h3>
							<ul class="article-list">
								<c:choose>
									<c:when
										test="${locTitles != null and fn:length(locTitles) > 0}">
										<c:forEach var="locTitle" items="${locTitles}">
											<!-- 자주묻는 질문 리스트 공간 : 제목만 다 보여주는 곳 -->
											<li class="promoted-articles-item"
												style="list-style: none; margin-left: 15px;"><a
												href="${pageContext.request.contextPath}/notice/locdetail.nt?faqNumber=${locTitle.getFaqNumber()}"><font>
														<c:out value="${locTitle.getFaqTitle()}" />
												</font> <font style="float: right;"></font> </a></li>
										</c:forEach>
									</c:when>

									<c:otherwise>
										<li class="promoted-articles-item"
											style="list-style: none; margin-left: 15px;"><a href=""><font>
													<c:out value="등록된 사항이 없습니다" />
											</font> <font style="float: right;"></font> </a></li>
									</c:otherwise>
								</c:choose>
							</ul>
							<!--<a href="" class="see-all-articles btn" style="font-size: 1.1em;">
                                + 모두 보기
                            </a> -->
							<br> <br>
						</section>
					</div>
				</div>
			</div>
		</section>
		<!-- 서울체크인 공지사항 -->
		<div class="container">
			<div class="row">
				<div class="category_view">
					<div class="col-xs-12">
						<h2 class="hc_title" style="float: left;">서울체크인 공지사항</h2>
						<!-- <h6 class="hc_title_more" style="float:right;margin-top:25px;"><a style="font-size: 14px;" href="">더 보기</a></h6> -->
						<p class="description"></p>
					</div>
					<div class="list-items">
						<div class="section-tree">
							<section class="section col-md-12 col-sm-12 col-xs-12">
								<div class="section-with-article-block"
									id="Notice_Promoted_Article_DIV">
									<ul class="article-list promoted-noticeList"
										id="Notice_Promoted_Article_UL">
										<!-- 반복해서 들어가야 할 부분 li 로 넣기 -->
										<c:choose>
											<c:when test="${titles != null and fn:length(titles) > 0}">
												<c:forEach var="title" items="${titles}">
													<li class="promoted-articles-item"
														style="padding-left: 22px; padding-right: 22px; padding-top: 10px; padding-bottom: 10px;">
														<a
														href="${pageContext.request.contextPath}/notice/noticedetail.nt?noticeNumber=${title.getNoticeNumber()}"><font>
																<c:out value="${title.getNoticeTitle()}" />
														</font> <font style="float: right;"></font> </a>
													</li>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<li class="promoted-articles-item"
													style="padding-left: 22px; padding-right: 22px; padding-top: 10px; padding-bottom: 10px;">
													<a href=""><font> <c:out value="등록된 공지사항이 없습니다" /></font>
														<font style="float: right;"></font> </a>
												</li>
											</c:otherwise>
										</c:choose>

									</ul>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 서비스 바로가기 링크 연결 필수-->
		<div class="container" id="service_info_div_con">
			<div class="row">
				<div class="category_view">
					<div class="col-xs-12">
						<h2 class="hc_title">서비스 바로가기</h2>
						<div class="row text-center" id="ser_inc_div">
							<div class="col-lg-3 col-md-6"
								style="padding-left: 0px; padding-right: 0px;">
								<div class="card h-100">
									<a href="${pageContext.request.contextPath}/map/map.mp" onclick="OnclickServiceIntroduce(1);">
										<div class="card-body"
											style="border: transparent; padding: 0px;">
											<img class="card-img-top"
												src="//theme.zdassets.com/theme_assets/9309779/55e4b007832b7286ad1a812e5656cbaeef245408.jpg"
												alt=""
												style="width: 100%; border-top-left-radius: 5px; border-top-right-radius: 5px;">
										</div>
										<div class="card-body">
											<h4 class="card-title">서울은 처음이지</h4>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6"
								style="padding-left: 0px; padding-right: 0px;">
								<div class="card h-100">
									<a href="${pageContext.request.contextPath}/school/program.sc" onclick="OnclickServiceIntroduce(2);">
										<div class="card-body"
											style="border: transparent; padding: 0px;">
											<img class="card-img-top"
												src="//theme.zdassets.com/theme_assets/9309779/1e0e201392c85f0902bab24eb9d2fcdb6d288afc.jpg"
												alt=""
												style="width: 100%; border-top-left-radius: 5px; border-top-right-radius: 5px;">
										</div>
										<div class="card-body">
											<h4 class="card-title">강의/프로그램</h4>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6"
								style="padding-left: 0px; padding-right: 0px;">
								<div class="card h-100">
									<a
										href="${pageContext.request.contextPath}/app/visa/visanavigator.jsp"
										onclick="OnclickServiceIntroduce(3);">
										<div class="card-body"
											style="border: transparent; padding: 0px;">
											<img class="card-img-top"
												src="//theme.zdassets.com/theme_assets/9309779/526de96e78df31e88c1ce43a7dcbcd01ad7f3f0e.jpg"
												alt=""
												style="width: 100%; border-top-left-radius: 5px; border-top-right-radius: 5px;">
										</div>
										<div class="card-body">
											<h4 class="card-title">비자 네비게이터</h4>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6"
								style="padding-left: 0px; padding-right: 0px;">
								<div class="card h-100">
									<a href="${pageContext.request.contextPath}/Seoul-Checkout.kr" onclick="OnclickServiceIntroduce(4);">
										<div class="card-body"
											style="border: transparent; padding: 0px;">
											<img class="card-img-top"
												src="//theme.zdassets.com/theme_assets/9309779/a6a42b843115a314594f267d42120b667e0d45e9.jpg"
												alt=""
												style="width: 100%; border-top-left-radius: 5px; border-top-right-radius: 5px;">
										</div>
										<div class="card-body">
											<h4 class="card-title">게시판</h4>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	$("#goTop").click(function() {
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