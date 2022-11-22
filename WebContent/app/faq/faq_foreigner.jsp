<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터 - 외국인 회원</title>
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
          <div style="position: fixed;right: 17px; bottom: 17px; width: 55px; background: black; height: 55px; text-align: center; line-height: 55px;border-radius: 50%;">
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
                        외국인 회원
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
                        <h2 class="hc_title">외국인 회원</h2>
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
                                            <a href="">외국인 - 이용방법 들어가야할 자리입니다</a>
                                        </li>
                                        <!-- <li class="article">
                                            <a href="">외국인 서비스 가입, 이용 절차가 궁금합니다.</a>
                                        </li>
                                        <li class="article">
                                            <a href="">서비스를 영어로 이용하고 싶어요.</a>
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
                                            <a href="">외국인 - 지원하기/관리 내용이 들어가야할 자리입니다</a>
                                        </li>
                                        <!-- <li class="article">
                                            <a
                                                href="">서울체크인
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
                                                href="">작성
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
                            <section class="section col-md-6 col-sm-6 col-xs-12">
                                <div class="section-with-article-block">
                                    <h3>
                                        <a href="javascript:void(0)" style="cursor: default;">기타</a>
                                    </h3>
                                    <ul class="article-list">
                                        <li class="article">
                                            <a href="">외국인 - 기타 내용이 들어가야할 자리입니다</a>
                                        </li>
                                       <!--  <li class="article">
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