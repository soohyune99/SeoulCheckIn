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
    <title>게시판</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/community.css">
</head>

<body>
	    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    	<div id="wrapper">

        <div class="Padding_padding___Nyki Padding_padding_isLoggedOut__WyPs1"></div>
        <div class="CommunityPostList_CommunityPostList_SFEO_">
            <aside class="CommunityPostList_aside_TzJuG">
                <div class="CommunityPostList_aside_area__wQBK7">
                    <div class="MyCommunityProfile_MyCommunityProfile___6Q8U">
                        <h2 class="MyCommunityProfile_MyCommunityProfile__title__k_Sd1">MY 커뮤니티</h2>
                        <button type="button" class="MyCommunityProfile_MyCommunityProfile__link__GUqqM" onclick="${empty sessionScope.memberNumber ? 'modalLogin()' : 'mypage()'}">
                            <div class="UserAvatar_UserAvatar__Wi20b MyCommunityProfile_avatar__zzVKY">
                                <img src="https://static.wanted.co.kr/images/profile_default.png" alt="">
                            </div>
                            <div class="MyCommunityProfile_username_wrapper__ciN9I">
                                <span class="MyCommunityProfile_notLoggedIn__ATIKB">
                                	<c:out value="${empty sessionScope.memberNumber ? '로그인해주세요' : sessionScope.memberEmail}" /></span>
                            </div>
                            <span class="MyCommunityProfile_arrow__sXoaK">
                                <svg width="18" height="18">
                                    <path
                                        d="M5.21967 2.21967C5.48594 1.9534 5.9026 1.9292 6.19621 2.14705L6.28033 2.21967L12.5303 8.46967C12.7966 8.73594 12.8208 9.1526 12.6029 9.44621L12.5303 9.53033L6.28033 15.7803C5.98744 16.0732 5.51256 16.0732 5.21967 15.7803C4.9534 15.5141 4.9292 15.0974 5.14705 14.8038L5.21967 14.7197L10.939 9L5.21967 3.28033C4.9534 3.01406 4.9292 2.5974 5.14705 2.30379L5.21967 2.21967Z"
                                        fill="#666666"></path>
                                </svg>
                            </span>
                        </button>
                    </div>
                    <button type="button" class="InterestTagBanner_InterestTagBanner__r3IQu">
                        <div class="InterestTagBanner_message__Hn2A6">
                            요즘 내 관심사는?<br>선택하고 맞춤 콘텐츠 받기!
                        </div>
                        <div class="InterestTagBanner_arrow_right__ePmaX">
                            <span class="SvgIcon_SvgIcon__root__8vwon">
                                <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 18 18">
                                    <path
                                        d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">
                                    </path>
                                </svg>
                            </span>
                        </div>
                    </button>
                </div>
            </aside>
            <main class="CommunityPostList_content__WS_6a">
                <div class="CommunityPostList_categories__bnUB6">
                    <div class="InterestCategory_InterestCategory__ZD7gb">
                        <div class="InterestCategory_InterestCategory__scrollContainer___CTW9">
                            <div
                                class="InterestCategory_InterestCategory__arrow__SiC0l InterestCategory_InterestCategory__leftArrow__DiqZD">
                                <button type="button" class="ArrowButton_ArrowButton__zK5U5 prev">
                                    <span class="SvgIcon_SvgIcon__root__8vwon">
                                        <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 18 18">
                                            <path
                                                d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z">
                                            </path>
                                        </svg>
                                    </span>
                                </button>
                            </div>
                            <div
                                class="InterestCategory_InterestCategory__arrow__SiC0l InterestCategory_InterestCategory__rightArrow__4dDbu InterestCategory_visible__j2sDc">
                                <button type="button" class="ArrowButton_ArrowButton__zK5U5 next">
                                    <span class="SvgIcon_SvgIcon__root__8vwon">
                                        <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 18 18">
                                            <path
                                                d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">
                                            </path>
                                        </svg>
                                    </span>
                                </button>
                            </div>
                            <div class="InterestCategory_InterestCategory__scroll__WiqGV">
                                <button type="button" class="TagButton_TagButton__rnXgO">전체</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">커리어고민</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">취업/이직</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">회사생활</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">인간관계</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">IT/기술</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">라이프스타일</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">리더십</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">조직문화</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">경영/전략</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">노무</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">MD</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">콘텐츠 제작</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">UX/UI</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">개발</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">마케팅</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">서비스기획</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">데이터</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">CS/CX</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">HR</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">디자인</button>
                                <button type="button" class="TagButton_TagButton__rnXgO">브랜딩</button>
                            </div>
                        </div>
                        <div class="ProfileForMobile_ProfileForMobile__4hLPz">
                            <button type="button">
                                <div class="UserAvatar_UserAvatar__Wi20b ProfileForMobile_avatar__sSU9z">
                                    <img src="https://static.wanted.co.kr/images/profile_default.png" alt="">
                                </div>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="CommunityPostList_content__body__Nxv1x">
                    <section class="TopPickPostView_TopPickPostView__n6Hwb">
                        <div class="TopPickPostView_header__meCFS">
                            <div class="TopPickPostView_header__title__jaTXx">
                                <h2 class="TopPickPostView_wantedPickTitle__LP_JP">이번 주 많이 본 글 🏆</h2>
                            </div>
                        </div>
                        <div class="TopPickPostView_verticalPostList__0ZYQO">
                            <a class="TopPickPostItem_TopPickPostItem__pq2re TopPickPostItem_bgColor__1__aF2ad"
                                href="javascript:errorPage();">
                                <article>
                                    <div class="TopPickPostItem_TopPickPostItem__category__3ldvK">댓글수 TOP</div>
                                    <h3 class="TopPickPostItem_TopPickPostItem__title__truaT">원티드 이력서 질문 있습니다</h3>
                                    <div class="AuthorBox_AuthorBox__JrXUr TopPickPostItem_authorBox__QTMtr">
                                        <div class="AuthorBox_AuthorBox__horizontalBox__D0ij7">
                                            <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                                <div
                                                    class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                    <img src="https://static.wanted.co.kr/images/avatars/1858295/d9e1951e.jpg"
                                                        alt="">
                                                </div>
                                            </div>
                                            <span class="AuthorBox_AuthorBox__username__94umS username">mimi</span>
                                        </div>
                                    </div>
                                </article>
                            </a>
                            <a class="TopPickPostItem_TopPickPostItem__pq2re TopPickPostItem_bgColor__2__G98Ru"
                                data-attribute-id="community__recommend__content__click"
                                data-content-title="성공한 사람들이 금요일 오후에 꼭 하는 일!!!!!!!" data-content-id="6736"
                                data-interest-tag="회사생활,인간관계,라이프스타일" data-is-top-fixed="true"
                                href="javascript:errorPage();">
                                <article>
                                    <div class="TopPickPostItem_TopPickPostItem__category__3ldvK">댓글수 TOP</div>
                                    <h3 class="TopPickPostItem_TopPickPostItem__title__truaT">성공한 사람들이 금요일 오후에 꼭 하는
                                        일!!!!!!!</h3>
                                    <div class="AuthorBox_AuthorBox__JrXUr TopPickPostItem_authorBox__QTMtr">
                                        <div class="AuthorBox_AuthorBox__horizontalBox__D0ij7">
                                            <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                                <div
                                                    class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                    <img src="https://static.wanted.co.kr/images/avatars/2585667/6f8fb2d6.jpg"
                                                        alt="">
                                                </div>
                                            </div>
                                            <span class="AuthorBox_AuthorBox__username__94umS username">쳇바퀴탈피</span>
                                        </div>
                                    </div>
                                </article>
                            </a>
                            <a class="TopPickPostItem_TopPickPostItem__pq2re TopPickPostItem_bgColor__3__PRAsl"
                                data-attribute-id="community__recommend__content__click" data-content-title="1년미만 이직고민"
                                data-content-id="6724" data-interest-tag="커리어고민,취업/이직,개발" data-is-top-fixed="true"
                                href="javascript:errorPage();">
                                <article>
                                    <div class="TopPickPostItem_TopPickPostItem__category__3ldvK">댓글수 TOP</div>
                                    <h3 class="TopPickPostItem_TopPickPostItem__title__truaT">1년미만 이직고민</h3>
                                    <div class="AuthorBox_AuthorBox__JrXUr TopPickPostItem_authorBox__QTMtr">
                                        <div class="AuthorBox_AuthorBox__horizontalBox__D0ij7">
                                            <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                                <div
                                                    class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                    <img src="https://static.wanted.co.kr/images/avatars/2687857/3d1fbd06.jpg"
                                                        alt="">
                                                </div>
                                            </div>
                                            <span class="AuthorBox_AuthorBox__username__94umS username">이기범</span>
                                        </div>
                                    </div>
                                </article>
                            </a>
                        </div>
                    </section>
                    <section class="PostWriteButton_PostWriteButton__E5DAF">
                        <button type="button" class="PostWriteButton_writeButton__pWbNC" onclick="errorPage()"
                            data-attribute-id="community__content__write" onclick="location.href = '${pageContext.request.contextPath}/board/newpost.bo'">커리어와 라이프스타일에 대해 자유롭게 이야기 해주세요!
                            <svg class="PostWriteButton_writeIcon__D2d5u">
                                <svg width="24" height="24">
                                    <path fill="currentColor"
                                        d="M17.21 2.23a.75.75 0 0 1 1.07-.01l3.5 3.5a.75.75 0 0 1 .011 1.05l-12 12.5a.75.75 0 1 1-1.082-1.04l8.062-8.398-2.451-2.451L4.5 17.553V20h2.75a.75.75 0 0 1 0 1.5h-3.5a.75.75 0 0 1-.75-.75v-3.5a.75.75 0 0 1 .21-.52zm.55 1.59-2.397 2.482 2.447 2.447 2.39-2.488-2.44-2.441z">
                                    </path>
                                </svg>
                            </svg>
                        </button>
                    </section>
                    
                    <section class="RecommendedPostsView_RecommendedPostsView__9d4uy">
                        <div class="RecommendedPostsTags_RecommendedPostsTags__yjgLI">
                            <h2>커뮤니티글 💘</h2>
                            <div class="RecommendedPostsTags_tag_list__Ory4H" role="button"
                                aria-label="Open my interest tag modal popup">
                                요즘 내 관심사는?<br>선택하고 맞춤 콘텐츠 받기!
                               <!-- <ul>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#커리어고민</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#취업/이직</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#회사생활</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#인간관계</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#IT/기술</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#라이프스타일</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#리더십</li>
                                    <li class="RecommendedPostsTags_tag__u_07Y">#조직문화</li>
                                </ul>
                                <span class="SvgIcon_SvgIcon__root__8vwon">
                                    <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 18 18">
                                        <path
                                            d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">
                                        </path>
                                    </svg>
                                </span> --> 

                            </div>
                        </div>
                        
                        <!-- 게시글  -->
                      <!-- <a class="PostItem_PostItem__txAPP" data-attribute-id="community__recommend__content__click" data-content-title="고졸 33세 국비개발" data-content-id="6802" data-like-count="0" data-comment-count="0" data-interest-tag="취업/이직" data-is-top-fixed="false" href="/community/post/6802">-->
                            <c:choose>
                            <c:when test="${kboards != null and fn:length(kboards) > 0}">
                            <c:forEach var="kboard" items="${kboards}">
                            <article class ="boardAll">
                                <div class="PostItem_PostItem__top__0qIud">
                                    <div class="AuthorBox_AuthorBox__JrXUr">
                                        <button class="AuthorBox_AuthorBox__verticalArea__2C_q0" data-attribute-id="community__content__profile__click" data-content-title="고졸 33세 국비개발" data-content-id="6802" data-like-count="0" data-comment-count="0" data-interest-tag="취업/이직" data-feed-type="recommend">
                                            <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                                <div class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                    <img src="https://s3.ap-northeast-2.amazonaws.com/wanted-public/profile_default.png" alt="">
                                                </div>
                                            </div>
                                            
                                            <div class="AuthorBox_AuthorBox__verticalBox__sb3aa">
                                                <div class="AuthorBox_AuthorBox__userInfo__3dtQ9">
                                                    <div class="AuthorBox_AuthorBox__username__94umS username"><c:out value="${kboard.getMemberName()}"/></div>
                                                </div>
                                                <span class="AuthorBox_AuthorBox__createAt__iXxYT create_time"><c:out value="${kboard.getkBoardDate()}"/></span>
                                            </div>
                                        </button>
                                    </div>
                                </div>
                                <div class="PostItem_PostItem__body__M5MNv">
                                    <h3 class="PostItem_PostItem__title__BMwsW"><a href='${pageContext.request.contextPath}/board/viewpost.bo?kBoardNumber=${kboard.getkBoardNumber()}'><c:out value="${kboard.getkBoardTitle()}"/></a></h3>
                                    <p class="PostItem_PostItem__content__lkI6t"><c:out value="${kboard.getkBoardArticle()}"/></p>
                                   
                                    <div class="PostItem_PostItem__bottom__CM_QT">
	                                    <div aria-label="comments: 0" aria-pressed="false" class="button_Button__lqb0B PostItem_PostItem__comments___7S6q" data-attribute-id="community__content__commentBtn__click" data-content-title="고졸 33세 국비개발" data-content-id="6802" data-like-count="0" data-comment-count="0" data-interest-tag="취업/이직" data-feed-type="recommend">
	                                    	<svg width="18" height="18" viewBox="0 0 18 18">
	                                    		<path fill="currentColor" transform="matrix(-1 0 0 1 18 0)" d="M9 1c4.377 0 8 3.14 8 7s-3.623 7-8 7c-.317 0-.593-.026-.954-.088l-.395-.074-.205-.043-3.295 2.089a.75.75 0 0 1-.968-.143l-.067-.09a.75.75 0 0 1 .143-.968l.09-.067 3.55-2.25a.75.75 0 0 1 .551-.1l.652.132.301.052c.228.036.408.05.597.05 3.592 0 6.5-2.52 6.5-5.5S12.592 2.5 9 2.5C5.407 2.5 2.5 5.02 2.5 8c0 1.858 1.039 3.573 2.773 4.348a.75.75 0 1 1-.612 1.37C2.37 12.693 1 10.432 1 8c0-3.86 3.622-7 8-7z"></path>
	                                        </svg>
	                                        <span class="button_Button__count__L1T_j count">댓글 수</span>
	                                    </div>
                                    </div>
                                </div>
                            </article>
                                </c:forEach>
                                </c:when>
                                <c:otherwise>
                                <div>
                                	<div class="PostItem_PostItem__top__0qIud">등록된 게시물이 없습니다.</td>
                                </div>
                                </c:otherwise>
                                </c:choose>
                        </a>
                        
 					 <div class="scrollObserver"></div>
                    </section>
                </div>
            </main>
        </div>




        
        <!-- <footer class="footer">

            <div class="border-box">
                <div class="wrapper">
                    <div id="logimg">
                        <img src="/images/완벽한 서울체크인이미지(글자).jpg" style="width: 64.8px;height: 15.3px;">
                    </div>
                    <div id="links">
                        <a href="">기업소개</a>
                        <a href="">이용약관</a>
                        <a href="">개인정보 처리 방침</a>
                        <a href="">고객센터</a>
                    </div>
                </div>

                <div id="iconwrapper">
                    <img src="./images/fan.png" alt="">
                    <img src="/images/ginseng.png" alt="">
                    <img src="/images/jeju.png" alt="">
                    <img src="/images/kite.png" alt="">
                    <img src="/images/gyeongbokgung-palace.png" alt="">
                    <img src="/images/king-sejong.png" alt="">

                </div>
            </div>

            <div class="lastwrapper">
                <p class="lastp">
                    "(주)개발도상국(대표이사:이하빈) | 서울 강남구 테헤란로 146 4층 H CLASS"
                    <br>
                    유료직업소개사업등록번호 : (국내) 제2020-3230259-14-5-XXXXX호 | (국외) 서울동부-유-XXXX-2 | 02-XXX-7118
                    <br>
                    "© Wantedlab, Inc."
                </p>

                <div class="LocaleSelect">
                    <img class="countryIcon" src="https://static.wanted.co.kr/images/userweb/ico_KR.svg"
                        alt="country flag KR">
                    <select name="" id="">
                        <option value="KR">한국 (한국어)</option>
                        <option value="WW">Worldwide (English)</option>
                    </select>
                </div>

            </div>

        </footer>
    </div> -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/board/community.js"></script>
<script>
	function errorPage(){
		alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
	}
	
	function modalLogin(){
		$(".Modal_root__aEM8D.login").css('display', 'block');d
	}
	
	function mypage(){
		location.href="/member/mypage.me"		
	}
</script>
</html>