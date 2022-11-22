<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터 - 내국인 회원</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/FAQ.css">
    <script src="https://kit.fontawesome.com/eef865b2f8.js" crossorigin="anonymous"></script>
</head>
<body>
    <main role="main">
        <style>
            .search input[type="search"] {
              background-color: #fff;
              border: 1px solid #ececec;
                border-radius: 5px;
              height: 50px;
              padding: 10px 55px 10px 15px;
              width: 100%;
              }
          
              ul.article-list > li a {
                  color: black;
              }
            
              ul.article-list > li,
              .article-sidebar section > ul > li,
              .searchbox-suggestions ul li {
                  padding: 10px 0px;
              }
            /*상단 문서 Path 및 검색 영역 [S]*/
            ol.breadcrumbs {
                padding-left: 0px;
              }
            .breadcrumb-container{
                margin-bottom: 20px;
                padding-right: 15px;
                padding-left: 0px;
            }
            .breadcrumb-container-path{
                padding-left:15px;
            }
            .breadcrumb-container-search{
              padding-left:0px;
              padding-right:0px;
            }
            @media (max-width: 769px) {
              .breadcrumb-container{
                margin-bottom: 20px;
                padding-right: 0px;
                padding-left: 0px;
              }
              .breadcrumb-container-search{
                padding-left:15px;
                    padding-right:15px;
              }
              form.search input[type="submit"] {
                  right: 10px;
              }
              .section{
                margin-bottom: 30px !important;
              }
            }
            /*상단 문서 Path 및 검색 영역 [E]*/
            .section-tree{
                margin-bottom:30px;
            }
          .breadcrumbs{
                padding-left: 0px;
            }
            .hc_title{
            margin-bottom: 20px;
            padding-top:10px;
            }
          </style>
          <div style="position: fixed;right: 17px;bottom: 17px; width: 55px; background: black; height: 55px; text-align: center; line-height: 55px;border-radius: 50%;">
            <a id="goTop" href="javascript:void(0)">
                <img src="${pageContext.request.contextPath}/assets/images/main/btn_top.png" style=" border-radius: 50%; margin: 0;margin-bottom: 3px">
            </a>
        </div>
        <section class="breadcrumb"></section>
        <div class="container breadcrumb-container">
            <div class="col-md-9 col-sm-9 col-xs-12 breadcrumb-container-path" style="float:left;">
                <ol class="breadcrumbs">
                    <li title="원티드 고객센터">
                        <a href="">서울체크인 고객센터</a>
                    </li>
                    <li title="개인회원">
                        내국인 회원
                    </li>
                </ol>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 breadcrumb-container-search" style="float:right;">
                <form role="search" class="search" data-search="" action="/hc/ko/search" accept-charset="UTF-8"
                    method="get">
                    <input name="utf8" type="hidden" value="✓">
                    <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
                    <input type="submit" name="commit" value="검색">
                </form>
            </div>
        </div>
        <div class="container" style="margin-bottom:50px;">
            <div class="row" style="padding-bottom:50px;">
                <div class="category_view">
                    <div class="col-xs-12">
                        <h2 class="hc_title">내국인 회원</h2>
                    </div>
                    <div class="list-items">
                        <div class="section-tree">
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a href="javascript:void(0)" style="cursor: default;">이용 방법</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a href="">내국인 - 이용방법 들어가야할 자리입니다</a>
                                        </li>
<!--                                         <li class="article">
                                            <a
                                                href="">서비스를 한국어로 이용하고 싶어요.</a>
                                        </li> -->
                                        <!--
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035844051-%EC%9D%B4%EC%9A%A9%EB%B0%A9%EB%B2%95%EA%B3%BC-%EC%B6%94%EC%B2%9C%EC%9D%B8%EC%9D%98-%EC%9E%90%EA%B2%A9%EC%9D%84-%EC%95%8C%EA%B3%A0-%EC%8B%B6%EC%96%B4%EC%9A%94-">이용방법과
                                                추천인의 자격을 알고 싶어요.</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035922291-%EC%A7%80%EC%9B%90-%EC%8B%9C-%EC%B6%94%EC%B2%9C%EC%82%AC%EA%B0%80-%EA%BC%AD-%ED%95%84%EC%9A%94%ED%95%9C%EA%B0%80%EC%9A%94-">지원
                                                시 추천사가 꼭 필요한가요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035565972-%EC%B6%94%EC%B2%9C%EC%9D%B8-%EB%B3%80%EA%B2%BD%EA%B3%BC-%EB%82%B4%EA%B0%80-%ED%95%9C-%EC%B6%94%EC%B2%9C-%EC%88%98%EC%A0%95-%EC%82%AD%EC%A0%9C-%EA%B0%80%EB%8A%A5%ED%95%9C%EA%B0%80%EC%9A%94-">추천인
                                                변경과 내가 한 추천 수정∙삭제 가능한가요?</a>
                                        </li> -->
                                        
                                    </ul>
                                </div>
                            </section>
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a href="javascript:void(0)" style="cursor: default;">지원하기 ∙ 관리</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a href="">내국인 - 지원하기/관리 내용이 들어가야할 자리입니다</a>
                                        </li>
                                        <!-- <li class="article">
                                            <a
                                                href="">원티드
                                                이력서 양식을 꼭 사용해야 하나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">삭제한
                                                이력서 복원이 가능한가요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">서류
                                                전형에 합격했습니다. 이후 절차는 어떻게 되나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">제출하기
                                                버튼이 비활성화(회색)되어 있어요.</a>
                                        </li> -->
                                        <!-- <li class="article">
                                            <a
                                                href="/hc/ko/articles/900005360666-%EC%9E%91%EC%84%B1-%EC%A4%91-%EB%AA%A9%EB%A1%9D%EC%9D%84-%EC%82%AD%EC%A0%9C%ED%95%98%EA%B3%A0-%EC%8B%B6%EC%96%B4%EC%9A%94">작성
                                                중 목록을 삭제하고 싶어요</a>
                                        </li> -->
                                    </ul>
                                    <!-- <a href=""
                                        class="see-all-articles btn"
                                        style="background: transparent;color: #3366FF !important;float: left;padding-left: 0px;font-size: 1.1em;">
                                        + 모두 보기
                                    </a> -->
                                </div>
                            </section>
                            <!--
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a href="/hc/ko/sections/360007632031-%EB%A7%A4%EC%B9%98%EC%97%85">매치업</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/900005744986-%EC%8B%A0%EC%9E%85-%EB%98%90%EB%8A%94-%EA%B2%BD%EB%A0%A5%EC%82%AC%ED%95%AD%EC%9D%B4-%EC%97%86%EC%9D%84-%EC%8B%9C-%EB%A7%A4%EC%B9%98%EC%97%85%EC%9C%BC%EB%A1%9C-%EB%93%B1%EB%A1%9D%ED%95%A0-%EC%88%98-%EC%97%86%EB%82%98%EC%9A%94-">신입
                                                또는 경력사항이 없을 시 매치업으로 등록할 수 없나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360041491911-%EB%A7%A4%EC%B9%98%EC%97%85-%EC%9D%B4%EB%A0%A5%EC%84%9C-%EC%97%B4%EB%9E%8C-%EC%A0%9C%ED%95%9C-%EA%B8%B0%EC%97%85-%EC%84%A4%EC%A0%95%EB%B0%A9%EB%B2%95">매치업
                                                이력서 열람 제한 기업 설정방법</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035972771-%EB%A7%A4%EC%B9%98%EC%97%85-%EC%84%9C%EB%B9%84%EC%8A%A4%EB%8A%94-%EB%AC%B4%EC%97%87%EC%9D%B8%EA%B0%80%EC%9A%94-">매치업
                                                서비스는 무엇인가요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035844351-%EB%A7%A4%EC%B9%98%EC%97%85-%EB%A9%94%EB%89%B4-%EB%8B%A8%EA%B3%84%EB%B3%84-%EC%9D%98%EB%AF%B8%EA%B0%80-%EA%B6%81%EA%B8%88%ED%95%B4%EC%9A%94">매치업
                                                메뉴 단계별 의미가 궁금해요</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035973131-%EB%A7%A4%EC%B9%98%EC%97%85-%EB%A9%B4%EC%A0%91-%EC%A0%9C%EC%95%88-%EC%88%98%EB%9D%BD%EC%9D%80-%EC%96%B8%EC%A0%9C%EA%B9%8C%EC%A7%80-%ED%95%B4%EC%95%BC-%EB%90%98%EB%82%98%EC%9A%94-">매치업
                                                면접 제안 수락은 언제까지 해야 되나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/900003828866-%EB%A7%A4%EC%B9%98%EC%97%85-%EC%A0%9C%EC%95%88-%EC%88%98%EB%9D%BD-%EC%9D%B4%ED%9B%84-%EC%A0%84%ED%98%95-%EC%95%88%EB%82%B4%EB%A5%BC-%EB%B0%9B%EC%A7%80-%EB%AA%BB%ED%96%88%EC%8A%B5%EB%8B%88%EB%8B%A4-">매치업
                                                제안 수락 이후 전형 안내를 받지 못했습니다.</a>
                                        </li>
                                    </ul>
                                    <a href="/hc/ko/sections/360007632031-%EB%A7%A4%EC%B9%98%EC%97%85"
                                        class="see-all-articles btn"
                                        style="background: transparent;color: #3366FF !important;float: left;padding-left: 0px;font-size: 1.1em;">
                                        + 모두 보기
                                    </a>
                                </div>
                            </section>
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a
                                            href="/hc/ko/sections/360007214611-%EB%B3%B4%EC%83%81%EA%B8%88-%EB%89%B4%EC%8A%A4%ED%83%80%ED%8A%B8-%ED%8C%A8%ED%82%A4%EC%A7%80">보상금
                                            ∙ 뉴스타트 패키지</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035844311-%EC%B6%94%EC%B2%9C-%EC%B1%84%EC%9A%A9-%EB%B3%B4%EC%83%81%EA%B8%88%EC%9D%80-%EC%96%B4%EB%96%BB%EA%B2%8C-%EC%A7%80%EA%B8%89%EB%90%98%EB%82%98%EC%9A%94-">추천∙채용
                                                보상금은 어떻게 지급되나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035611692-%EB%89%B4%EC%8A%A4%ED%83%80%ED%8A%B8-%ED%8C%A8%ED%82%A4%EC%A7%80-%EC%8B%A0%EC%B2%AD-%EB%B0%A9%EB%B2%95%EA%B3%BC-%EB%B0%B0%EC%86%A1%EC%9D%BC%EC%9D%80-%EC%96%B4%EB%96%BB%EA%B2%8C-%EB%90%98%EB%82%98%EC%9A%94-">뉴스타트
                                                패키지 신청 방법과 배송일은 어떻게 되나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/900001227126-%EB%B3%B4%EC%83%81%EA%B8%88-%EC%A7%80%EA%B8%89-%EB%8C%80%EC%83%81%EC%9E%90%EA%B0%80-%EC%95%84%EB%8B%88%EB%9D%BC%EA%B3%A0-%EB%9C%B9%EB%8B%88%EB%8B%A4-">보상금
                                                지급 대상자가 아니라고 뜹니다.</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035922431-%EC%B6%94%EC%B2%9C%EC%9D%B8-%EC%B6%94%EC%B2%9C%EC%82%AC-%EC%97%86%EC%9D%B4-%ED%95%A9%EA%B2%A9%ED%95%98%EC%85%A8%EC%9D%84-%EA%B2%BD%EC%9A%B0%EC%97%90%EB%8F%84-%EB%B3%B4%EC%83%81%EA%B8%88-%EC%A7%80%EA%B8%89-%EB%8C%80%EC%83%81%EC%9E%85%EB%8B%88%EB%8B%A4-">추천인∙추천사
                                                없이 합격하셨을 경우에도 보상금 지급 대상입니다.</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035972431-%EB%A7%A4%EC%B9%98%EC%97%85-%EC%A0%9C%EC%95%88%EC%9C%BC%EB%A1%9C-%ED%95%A9%EA%B2%A9%ED%95%98%EC%85%A8%EC%9D%84-%EA%B2%BD%EC%9A%B0%EC%97%90%EB%8F%84-%EB%B3%B4%EC%83%81%EA%B8%88-%EC%A7%80%EA%B8%89-%EB%8C%80%EC%83%81%EC%9E%85%EB%8B%88%EB%8B%A4-">매치업
                                                제안으로 합격하셨을 경우에도 보상금 지급 대상입니다.</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/360035972271-%EB%B3%B4%EC%83%81%EA%B8%88-%EC%A7%80%EA%B8%89-%EC%A0%95%EB%B3%B4%EB%A5%BC-%EB%8A%A6%EA%B2%8C-%EC%A0%9C%EC%B6%9C-%ED%96%88%EC%8A%B5%EB%8B%88%EB%8B%A4-%EC%96%B4%EB%96%BB%EA%B2%8C-%EB%90%98%EB%82%98%EC%9A%94-">보상금
                                                지급 정보를 늦게 제출 했습니다. 어떻게 되나요?</a>
                                        </li>
                                    </ul>
                                    <a href="/hc/ko/sections/360007214611-%EB%B3%B4%EC%83%81%EA%B8%88-%EB%89%B4%EC%8A%A4%ED%83%80%ED%8A%B8-%ED%8C%A8%ED%82%A4%EC%A7%80"
                                        class="see-all-articles btn"
                                        style="background: transparent;color: #3366FF !important;float: left;padding-left: 0px;font-size: 1.1em;">
                                        + 모두 보기
                                    </a>
                                </div>
                            </section>
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a
                                            href="/hc/ko/sections/900000417626-%EC%BB%A4%EB%A6%AC%EC%96%B4-%EC%84%B1%EC%9E%A5">커리어
                                            성장</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407062599065--%EC%98%81%EC%83%81-%EC%8B%9C%EC%B2%AD-%EC%98%81%EC%83%81%EC%9D%80-%EC%96%B4%EB%94%94%EC%97%90%EC%84%9C-%EB%B3%BC-%EC%88%98-%EC%9E%88%EB%82%98%EC%9A%94-">[영상
                                                시청] 영상은 어디에서 볼 수 있나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407068838169--%EC%98%81%EC%83%81-%EC%8B%9C%EC%B2%AD-wanted-%EC%98%81%EC%83%81%EC%9D%B4-%EB%84%88%EB%AC%B4-%EB%A7%8E%EC%95%84%EC%84%9C-%EC%98%81%EC%83%81%EC%9D%84-%EC%B0%BE%EA%B8%B0-%ED%9E%98%EB%93%A4%EC%96%B4%EC%9A%94-%EC%8B%9C%EC%B2%AD-%EC%A4%91%EC%9D%B4%EB%8D%98-%EC%98%81%EC%83%81%EC%9D%84-%ED%99%95%EC%9D%B8%ED%95%A0-%EC%88%98-%EC%97%86%EB%82%98%EC%9A%94-">[영상
                                                시청] wanted+ 영상이 너무 많아서 영상을 찾기 힘들어요. 시청 중이던 영상을 확인할 수 없나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407067912473--%EA%B5%AC%EB%8F%85-%EB%8B%A8%EC%B2%B4-%EA%B5%AC%EB%8F%85%EB%8F%84-%EA%B0%80%EB%8A%A5%ED%95%9C%EA%B0%80%EC%9A%94-">[구독]
                                                단체 구독도 가능한가요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407068638489--%EA%B5%AC%EB%8F%85-wanted-%EB%A5%BC-%EA%B5%AC%EB%8F%85%ED%95%98%EA%B8%B0-%EC%A0%84-%EC%BD%98%ED%85%90%EC%B8%A0-%EB%82%B4%EC%9A%A9%EC%9D%84-%EB%AF%B8%EB%A6%AC-%EB%B3%BC-%EC%88%98%EB%8A%94-%EC%97%86%EB%82%98%EC%9A%94-">[구독]
                                                wanted+ 를 구독하기 전 콘텐츠 내용을 미리 볼 수는 없나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407060729881--%EA%B5%AC%EB%8F%85-%EA%B5%AC%EB%8F%85-%EB%A7%8C%EB%A3%8C%EC%9D%BC-%EA%B5%AC%EB%8F%85-%ED%95%B4%EC%A7%80-%EB%93%B1-%EA%B5%AC%EB%8F%85-%EC%A0%95%EB%B3%B4%EB%8A%94-%EC%96%B4%EB%94%94%EC%97%90%EC%84%9C-%ED%99%95%EC%9D%B8%ED%95%98%EB%82%98%EC%9A%94-">[구독]
                                                구독 만료일, 구독 해지 등 구독 정보는 어디에서 확인하나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/4407062764185--%EA%B8%B0%ED%83%80-%ED%8F%AC%EC%9D%B8%ED%8A%B8%EB%A5%BC-%EC%82%AC%EC%9A%A9%ED%95%98%EC%97%AC-%EA%B2%B0%EC%A0%9C%ED%95%98%EA%B3%A0-%EC%8B%B6%EC%96%B4%EC%9A%94">[기타]
                                                포인트를 사용하여 결제하고 싶어요</a>
                                        </li>
                                    </ul>
                                    <a href="/hc/ko/sections/900000417626-%EC%BB%A4%EB%A6%AC%EC%96%B4-%EC%84%B1%EC%9E%A5"
                                        class="see-all-articles btn"
                                        style="background: transparent;color: #3366FF !important;float: left;padding-left: 0px;font-size: 1.1em;">
                                        + 모두 보기
                                    </a>
                                </div>
                            </section>
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a
                                            href="/hc/ko/sections/900000618526-%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4">프리온보딩
                                            코스</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/6640723424153--%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4-%EC%B7%A8%EC%97%85%EC%9D%80-%EC%96%B4%EB%96%BB%EA%B2%8C-%EC%9D%B4%EB%A3%A8%EC%96%B4%EC%A7%80%EB%82%98%EC%9A%94-">[프리온보딩
                                                코스] 취업은 어떻게 이루어지나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/6640747516057--%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4-%EC%9E%AC%EC%A7%81%EC%9E%90-%ED%83%80-%EA%B5%90%EC%9C%A1%EA%B8%B0%EA%B4%80-%EC%88%98%EA%B0%95%EC%A4%91%EC%9D%B8-%EC%82%AC%EB%9E%8C%EB%8F%84-%EC%B0%B8%EC%97%AC%ED%95%A0-%EC%88%98-%EC%9E%88%EB%82%98%EC%9A%94-">[프리온보딩
                                                코스] 재직자 / 타 교육기관 수강중인 사람도 참여할 수 있나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/6640819035673--%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4-%EC%B7%A8%EC%97%85%ED%99%9C%EB%8F%99-%EC%A7%80%EC%9B%90%EA%B8%88%EC%9D%80-%EC%96%B4%EB%96%BB%EA%B2%8C-%EB%B0%9B%EC%9D%84-%EC%88%98-%EC%9E%88%EB%82%98%EC%9A%94-">[프리온보딩
                                                코스] 취업활동 지원금은 어떻게 받을 수 있나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/6640867681561--%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4-%EC%88%98%EB%A3%8C-%EA%B8%B0%EC%A4%80%EC%9D%80-%EC%96%B4%EB%96%A4-%EA%B2%83%EB%93%A4%EC%9D%B4-%EC%9E%88%EB%82%98%EC%9A%94-">[프리온보딩
                                                코스] 수료 기준은 어떤 것들이 있나요?</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="/hc/ko/articles/6640901888665--%ED%94%84%EB%A6%AC%EC%98%A8%EB%B3%B4%EB%94%A9-%EC%BD%94%EC%8A%A4-%EC%88%98%EB%A3%8C-%EC%8B%9C-%EC%96%B4%EB%96%A4-%ED%98%9C%ED%83%9D%EC%9D%84-%EB%B0%9B%EC%9D%84-%EC%88%98-%EC%9E%88%EB%82%98%EC%9A%94-">[프리온보딩
                                                코스] 수료 시 어떤 혜택을 받을 수 있나요?</a>
                                        </li>
                                    </ul>
                                </div>
                            </section> -->
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a href="javascript:void(0)" style="cursor: default;">기타</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a href="">내국인 - 기타 내용이 들어가야할 자리입니다</a>
                                        </li>
                                        <!-- <li class="article">
                                            <a
                                                href="">원티드
                                                포인트는 어떻게 사용할 수 있나요</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">혜택/이벤트
                                                및 추천 포지션 메일을 받고 싶지 않아요</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">입력한
                                                연봉 정보를 삭제하고 싶어요</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">카카오톡,
                                                페이스북, 애플, 구글 로그인으로 이용 시 프로필 사진이 변경되지 않아요</a>
                                        </li>
                                        <li class="article">
                                            <a
                                                href="">원티드
                                                카카오톡 알림을 받고 싶지 않아요</a>
                                        </li> -->
                                    </ul>
                                    <!-- <a href=""
                                        class="see-all-articles btn"
                                        style="background: transparent;color: #3366FF !important;float: left;padding-left: 0px;font-size: 1.1em;">
                                        + 모두 보기
                                    </a> -->
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    let $top = $("#goTop").click(function(){
        $("html,body").animate({
            scrollTop:0
        },300);
    });
</script>
</html>