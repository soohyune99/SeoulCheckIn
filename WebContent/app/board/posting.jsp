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
    <title>게시글</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/posting.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/chat.css">

<body>

    <body>
    	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
        <div id="__next" data-reactroot="">
            <div class="Padding_padding___Nyki Padding_padding_isLoggedOut__WyPs1"></div>
            <main class="CommunityPostDetail_CommunityPostDetail__07nTA">
                <aside class="CommunityPostDetail_CommunityPostDetail__side__vydMg">
                    <div>
                        <div class="PostLeftSide_PostLeftSide__top__kN7TY">
                            <div
                                class="AuthorBox_AuthorBox__JrXUr AuthorBox_AuthorBox__xlarge__UeqLy PostLeftSide_PostLeftSide__authorBox__W5scq">
                                <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                    <div class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                        <img src="https://static.wanted.co.kr/images/avatars/11466/3bb1fc9e.jpg" alt="">
                                    </div>
                                </div>
                                <div class="AuthorBox_AuthorBox__verticalBox__sb3aa">
                                    <div class="AuthorBox_AuthorBox__username__94umS username">${kboard.getMemberName()}</div>
                                </div>
                            </div>

                        </div>
                        <div class="PostLeftSide_PostLeftSide__bottom__DQAGW">
                            <div>
                                <button type="button" aria-label="comments: 1" aria-pressed="false" class="button_Button__lqb0B" data-attribute-id="community__contentDetail__commentBtn__click"
                                    data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                    data-comment-count="1" data-interest-tag="취업/이직,콘텐츠 제작">
                                    <svg width="20" height="20" viewBox="0 0 18 18">
                                        <path fill="currentColor" transform="matrix(-1 0 0 1 18 0)"
                                            d="M9 1c4.377 0 8 3.14 8 7s-3.623 7-8 7c-.317 0-.593-.026-.954-.088l-.395-.074-.205-.043-3.295 2.089a.75.75 0 0 1-.968-.143l-.067-.09a.75.75 0 0 1 .143-.968l.09-.067 3.55-2.25a.75.75 0 0 1 .551-.1l.652.132.301.052c.228.036.408.05.597.05 3.592 0 6.5-2.52 6.5-5.5S12.592 2.5 9 2.5C5.407 2.5 2.5 5.02 2.5 8c0 1.858 1.039 3.573 2.773 4.348a.75.75 0 1 1-.612 1.37C2.37 12.693 1 10.432 1 8c0-3.86 3.622-7 8-7z">
                                        </path>
                                    </svg>
                                    <span class="button_Button__count__L1T_j count">1</span>
                                </button>
                            </div>
                            <div>
                                <button type="button" id="chatOpenButton"
                                    style="background-image: url('${pageContext.request.contextPath}/assets/images/board/chat2.png');background-repeat: no-repeat;background-size: contain; width: 20px;height: 20px;"></button>
                            </div>

                        </div>
                    </div>
                </aside>
                <section class="CommunityPostDetail_CommunityPostDetail__contents__Xsp_C">
                    <article class="PostContents_PostContents__kN8W3">
                        <div class="PostContents_PostContents__header__Z_Y18">
                            <div class="PostContents_PostContents__author__fZZI2">
                                <div class="AuthorBox_AuthorBox__JrXUr AuthorBox_AuthorBox__xlarge__UeqLy">
                                    <div class="AuthorBox_AuthorBox__verticalArea__2C_q0">
                                        <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                            <div
                                                class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                <img src="https://static.wanted.co.kr/images/avatars/11466/3bb1fc9e.jpg"
                                                    alt="">
                                            </div>
                                        </div>
                                        <div class="AuthorBox_AuthorBox__verticalBox__sb3aa">
                                            <div class="AuthorBox_AuthorBox__userInfo__3dtQ9">
                                                <div class="AuthorBox_AuthorBox__username__94umS username">${kboard.getMemberName()}
                                                </div>
                                            </div><span class="AuthorBox_AuthorBox__createAt__iXxYT create_time">${kboard.getkBoardDate()}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h1 itemprop="headline" class="PostContents_PostContents__title__GuxvZ">${kboard.getkBoardTitle()}</h1>
                        </div>
                        <div class="PostContents_PostContents__body__UUx5p">
                        	<pre>${kboard.getkBoardArticle()}</pre>
                        	<div class="PostContents_PostContents__images__Cse1G">
                        		${kboard.getkBoardPhoto()}
                        	</div>
                        </div>
                        <div class="PostContents_tags__haYwT"><a class="PostContents_tag_button___4SNm"
                                data-attribute-id="community__contentDetail__interestTag__click"
                                data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                data-comment-count="1" data-interest-tag="취업/이직"
                                href="/community/10241/results">취업/이직</a><a class="PostContents_tag_button___4SNm"
                                data-attribute-id="community__contentDetail__interestTag__click"
                                data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                data-comment-count="1" data-interest-tag="콘텐츠 제작" href="/community/10279/results">콘텐츠
                                제작</a></div>
                        <div class="PostContents_bottomActions__EgEWh">
                            <div class="PostContents_bottomActions__comment__KLiD3">
                            <button type="button"
                                    aria-label="comments: 1" aria-pressed="false" class="button_Button__lqb0B"
                                    data-attribute-id="community__contentDetail__commentBtn__click"
                                    data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                    data-comment-count="1" data-interest-tag="취업/이직,콘텐츠 제작"><svg width="24" height="24"
                                        viewBox="0 0 24 24">
                                        <path fill="currentColor" transform="matrix(-1 0 0 1 24 0)"
                                            d="M9.826 19.561c.71.125 1.438.189 2.174.189 5.912 0 10.75-4.112 10.75-9.25S17.912 1.25 12 1.25c-5.913 0-10.75 4.112-10.75 9.25 0 3.273 1.841 6.389 4.882 7.747a.75.75 0 0 0 .611-1.37C4.267 15.772 2.75 13.205 2.75 10.5c0-4.251 4.116-7.75 9.25-7.75 5.133 0 9.25 3.5 9.25 7.75s-4.117 7.75-9.25 7.75c-.747 0-1.482-.074-2.194-.22a.75.75 0 0 0-.578.12l-4.656 3.234a.75.75 0 0 0 .856 1.232l4.398-3.055z">
                                        </path>
                                    </svg>
                                    <!-- 댓글 수 -->
                                    <span class="button_Button__count__L1T_j count">1</span>
                                    </button>
                                    </div>

							<!--  댓글 수정 & 삭제 버튼 -->
							<div class="MenuPopup_MenuPopup__kcJI1 MenuPopup_MenuPopup__paddingBottom__SUQod">
                                <ul>
                                    <li class="MenuPopup_MenuPopup__menu_item__p_vG7">
                                    	<button type="button" onclick="location.href = '${pageContext.request.contextPath}/board/updatepost.bo?kBoardNumber=${kboard.getkBoardNumber()}'"
                                            class="MenuPopup_MenuPopup__menu_link___Rsar MenuPopup_MenuPopup__menu_link__red__k5iWj">게시글 수정하기</button>
                                    </li>
                                    <li class="MenuPopup_MenuPopup__menu_item__p_vG7">
                                    	<button type="button" onclick="location.href = '${pageContext.request.contextPath}/board/deletepost.bo?kBoardNumber=${kboard.getkBoardNumber()}'"
                                    	  class="MenuPopup_MenuPopup__menu_link___Rsar MenuPopup_MenuPopup__menu_link__red__k5iWj" >게시글 삭제하기</button>
                                    </li>
                                </ul>
                                <div
                                    class="MenuPopup_MenuPopup__bubblePoint__j2qkU MenuPopup_MenuPopup__bubblePoint_bottom__EqWcp">
                                </div>
                            </div>

                            <button type="button" class="PostContents_PostContents__menu_link_button__3VxlO"
                                data-attribute-id="community__contentDetail__more__copyLink"
                                data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                data-comment-count="1"><svg xmlns="https://www.w3.org/2000/svg"
                                    xmlns:xlink="https://www.w3.org/1999/xlink" width="20" height="20"
                                    viewBox="0 0 19 19">
                                    <defs>
                                        <path id="shareIcon"
                                            d="M5.336 7.75c-.551-.703-1.418-1.136-2.365-1.136C1.337 6.614 0 7.898 0 9.494c0 1.596 1.336 2.879 2.971 2.879.93 0 1.785-.419 2.338-1.102l8.495 4.482c.128.068.276.092.42.068l.025-.004c.213-.036.395-.173.489-.367.101-.21.249-.393.437-.54.673-.526 1.643-.407 2.168.266.526.673.407 1.643-.265 2.167-.673.526-1.643.407-2.168-.266-.226-.29-.644-.34-.933-.115-.29.226-.34.644-.115.933.977 1.251 2.783 1.473 4.034.496 1.25-.976 1.472-2.782.495-4.033-.977-1.251-2.783-1.473-4.033-.496-.169.132-.32.28-.454.442L5.478 9.858c-.322-.241-.816-.145-1 .255-.259.558-.844.93-1.507.93-.913 0-1.642-.7-1.642-1.55 0-.849.73-1.55 1.642-1.55.636 0 1.2.343 1.473.863.107.368.526.64.954.413l9.026-4.762.118-.079.029-.024c.233-.197.303-.527.169-.8-.104-.212-.158-.442-.158-.68 0-.853.692-1.545 1.544-1.545.853 0 1.545.692 1.545 1.544 0 .854-.691 1.545-1.545 1.545-.367 0-.664.297-.664.664 0 .367.297.665.664.665C17.714 5.747 19 4.46 19 2.873 19 1.287 17.713 0 16.126 0c-1.586 0-2.873 1.287-2.873 2.873 0 .224.026.445.076.66L5.336 7.748z">
                                        </path>
                                    </defs>
                                    <g fill="none" fill-rule="evenodd">
                                        <use fill="#36F" xlink:href="#shareIcon"></use>
                                    </g>
                                </svg></button><button type="button"
                                class="PostContents_PostContents__menu_button__fCW0J"
                                data-attribute-id="community__contentDetail__more__click"
                                data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                                data-comment-count="1"><svg width="24" height="24" viewBox="0 0 24 24">
                                    <path fill="currentColor"
                                        d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z">
                                    </path>
                                </svg></button>
                        </div>
                    </article>
                    <!-- <div class="CommunityPostDetail_commentsView__sIMie">
                        <div class="CommentItem_CommentItem__xtW4O">
                            <div class="CommentItem_CommentItem__header__5CEoM">
                                <div class="AuthorBox_AuthorBox__JrXUr AuthorBox_AuthorBox__xlarge__UeqLy CommentItem_CommentItem__author__ubFrt">
                                    <div class="AuthorBox_AuthorBox__verticalArea__2C_q0">
                                        <div class="AuthorBox_AuthorBox__avatarWrapper__pUxrC avatar_wrapper">
                                            <div class="UserAvatar_UserAvatar__Wi20b AuthorBox_AuthorBox__avatar__UL_vr avatar">
                                                <img src="https://static.wanted.co.kr/images/avatars/2729223/6e768cfc.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="AuthorBox_AuthorBox__verticalBox__sb3aa">
                                            <div class="AuthorBox_AuthorBox__userInfo__3dtQ9">
                                                <div class="AuthorBox_AuthorBox__username__94umS username">구보경</div>
                                            </div>
                                            <span class="AuthorBox_AuthorBox__createAt__iXxYT create_time">3시간전</span>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" aria-label="popup menu" class="CommentItem_CommentItem__menu__1yY_N" data-attribute-id="community__contentDetail__comment__more__click" data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1" data-comment-count="1" data-is-like="true">
                                	<svg width="18" height="18" viewBox="0 0 24 24">
                                        <path fill="currentColor"d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z">
                                        </path>
                                    </svg>
                               	</button>

                                <div
                                    class="MenuPopup_MenuPopup__kcJI1 MenuPopup_MenuPopup__paddingTop__VUYHS CommentItem_CommentItem__menuPopup__I6dGz">
                                    <div
                                        class="MenuPopup_MenuPopup__bubblePoint__j2qkU MenuPopup_MenuPopup__bubblePoint_top__Y2lWK">
                                    </div>
                                    <ul>
                                        <li class="MenuPopup_MenuPopup__menu_item__p_vG7">
                                        	<button type="button" class="MenuPopup_MenuPopup__menu_link___Rsar MenuPopup_MenuPopup__menu_link__red__k5iWj" data-attribute-id="community__contentDetail__comment__more__report"
                                                data-content-title="데이터 엔지니어를 하고싶은데" data-content-id="6854"
                                                data-like-count="6" data-comment-count="4">댓글 수정하기</button>
                                        </li>
                                        <li class="MenuPopup_MenuPopup__menu_item__p_vG7"><button type="button"
                                                class="MenuPopup_MenuPopup__menu_link___Rsar MenuPopup_MenuPopup__menu_link__red__k5iWj"
                                                data-attribute-id="community__contentDetail__user__more__report"
                                                data-content-title="데이터 엔지니어를 하고싶은데" data-content-id="6854"
                                                data-like-count="6" data-comment-count="4">댓글 삭제하기</button></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="CommentItem_CommentItem__content__m8OFt">
                                회사를 다녀도 일을 쉬어도 언제나 불안감은 함께인것 같습니다.
                                같은 취업준비하는 입장으로써 정말 공감이 되는 마음이에요.
                                저도 오늘도 이력서를 쓰러 카페 갑니다
                                시간제약없이 제 자신에게 집중할수있다는 것도 좋은기회 인것같아요.
                                글쓴이님께서도 꼭 원하시는 곳에 좋은결과 있으셨으면 좋겠어요.</div>
                        </div> -->
                        
                        <!-- 댓글 작성하는 곳 -->
                	    <form action="#" id="comments" class="combined" style="flex-direction:column; margin:0; display:contents;">
                        </form>
                        <div class="CommentWrite_CommentWrite__juAYI">
	                        <header class="major" style="text-align:left;">
	                           <h2>댓글</h2>
	                           <p>여러분의 소중한 댓글을 작성해주세요.</p>
	                        </header>
                            <div class="CommentWrite_CommentWrite__bottom__TTaoc">
                                <form method="post" action="#" class="combined" style="width:auto;" name="replyForm">
	                                <textarea class="CommentWrite_CommentWrite__textarea__3lpfm" placeholder="로그인 후 댓글 남기기" disabled=""></textarea>
	                                <button class="Button_Button__root__V1ie3 Button_Button__contained__toUI5 undefined Button_Button__sizeMedium__k0A1w CommentWrite_CommentWrite__saveButton__Ao_V8" type="submit" onclick>
	                                	<span class="Button_Button__label__1Kk0v">등록</span>
	                                </button>
                                </form>
                            </div>
                        </div>
                        
                        
                        <!-- 목록 버튼 -->
                        <button onclick="location.href='${pageContext.request.contextPath}/board/board.bo'"
                            class="Button_Button__root__V1ie3 Button_Button__outlined__H2mkd undefined Button_Button__sizeMedium__k0A1w CommunityPostDetail_backToList__EpKXX"
                            type="button" data-attribute-id="community__contentDetail__goList"
                            data-content-title="취업이 너무 안되네요...ㅠㅠ" data-content-id="6803" data-like-count="1"
                            data-comment-count="1" data-is-like="false"><span class="Button_Button__label__1Kk0v"><span
                                    class="Button_Button__startIcon__DtqdY"><svg width="6" height="10"
                                        viewBox="0 0 6 10">
                                        <path
                                            d="M1.94054 5L5.66021 1.28033C5.95311 0.987437 5.95311 0.512563 5.66021 0.21967C5.36732 -0.0732233 4.89245 -0.0732233 4.59955 0.21967L0.349553 4.46967C0.0566595 4.76256 0.0566595 5.23744 0.349553 5.53033L4.59955 9.78033C4.89245 10.0732 5.36732 10.0732 5.66021 9.78033C5.95311 9.48744 5.95311 9.01256 5.66021 8.71967L1.94054 5Z"
                                            fill="currentColor"></path>
                                    </svg></span>목록으로</span></button>
                    </div>
                </section>
            </main>
            <div class="toastMessage Notice_Notice__iWaxc"><span
                    class="Notice_Notice_icon__8Pg2e Notice_green__xs_w_ Notice_noIcon__2sBEB"><i
                        class="icon-check"></i></span><span></span></div>
            <div id="modal"></div>
        </div>
 <!-- 쪽지 작성 -->
 <div id="messageWrap">
    <div class="inqueryWrapper One inqueryoff">
        <div class="inquery">
            <header class="inqueryHeader">
                <div class="inqueryHeaderLeft">
                    <div class="inqueryHeaderLeftWrapper">
                        <div class="inqeuryHeaderLogo">
                            <img width="30" height="30" src="${pageContext.request.contextPath}/assets/images/fix/ginseng.png" alt="avatar">
                        </div>
                        <span class="inqueryHeaderTitle">
                            <div class="inqueryheaderTitleText">서울 체크인</div>
                        </span>
                    </div>
                </div>
                <div class="inqueryHeaderRight">
                    <button type="button" class="PostContents_PostContents__menu_button__fCW0J_1"
                        style="cursor: pointer; padding: 6px;">
                        <svg width="24" height="24" viewBox="0 0 24 24">
                            <path fill="currentColor"
                                d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z">
                            </path>
                        </svg>
                    </button>
                    <button class="Buttonsstyled__Button-ch-front__sc-1ym1uvv-0 bHwPlI">
                        <span class="a11y-hidden"> Close chat </span>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                            xmlns="http://www.w3.org/2000/svg" foundation="[object Object]"
                            class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk" defaultopacity="1"
                            hoveredopacity="1" margintop="0" marginright="0" marginbottom="0" marginleft="0"
                            withtheme="true">
                            <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                                d="M16.4818 4.69668L15.3033 3.51817L10 8.82147L4.69671 3.51817L3.5182 4.69668L8.8215 9.99998L3.51819 15.3033L4.6967 16.4818L10 11.1785L15.3033 16.4818L16.4818 15.3033L11.1785 9.99998L16.4818 4.69668Z">
                            </path>
                        </svg>
                    </button>
                </div>
            </header>
            <main class="inqueryMain">
                <section class="inqueryAnswerWrapper" style="height: 327px;">
                    <div class="inqueryCardHeader">
                        <div class="inqueryCardHeaderTitleWrapper">
                            <div class="inqeuryCardHeaderTitle">쪽지 보내기</div>
                        </div>

                    </div>
                    <div class="chatStart">
                        <div class="chatMain">
                            <div class="chatTitle" style="margin-left: 10px;">
                                <table style="margin: 0px 0px 7px 5px;">
                                    <tr>
                                        <td>To.</td>
                                        <td class="chatReceiveName" style="padding-left: 14px;">잇츠유!!</td>
                                    </tr>
                                    <tr>
                                        <td>From.</td>
                                        <td class="chatSendName" style="padding-left: 15px;">잇츠미!!</td>
                                    </tr>
                                </table>
                            <div class="chatBody" style="margin-left: 3px;">
                                <textarea name="chatContent" id="" cols="30" rows="10" placeholder="내용" style=" width: 250px; resize: none; height: 240px; border-radius: 0px; border: 3px solid rgba(0, 0, 0, 0.03);"></textarea>
                            </div>
                        </div>

                    </div>
                </section>
                <div class="btnPart"
                    style="display: flex;  flex-direction: row-reverse; margin-right: 17px; margin-top: 6px;">
                    <div class="btnOne">
                        <button id="sendBtn" class="btnItemTwo" type="button"
                            style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255); border: none; border-radius: 10px; height: 30px; width: 60px;">보내기</button>
                    </div>
                    <div class="btnTwo" style="padding-right: 10px;  padding-left: 10px;">
                        <button id="translateBtn" class="btnItemTwo" type="button"
                            style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255); border: none; border-radius: 10px; height: 30px; width: 70px;">번역하기</button>
                    </div>
                </div>

            </main>
        </div>
    </div>


    <!-- 쪽지 목록 -->

    <div class="inqueryWrapper Two inqueryoffTwo inqueryoff">
            <header class="inqueryHeader">
                <div class="inqueryHeaderLeft">
                    <div class="inqueryHeaderLeftWrapper">
                        <div class="inqeuryHeaderLogo">
                            <img width="30" height="30" src="${pageContext.request.contextPath}/assets/images/fix/jeju.png" alt="avatar">
                        </div>
                        <span class="inqueryHeaderTitle">
                            <div class="inqueryheaderTitleText">서울 체크인</div>
                        </span>
                    </div>
                </div>
                <div class="inqueryHeaderRight">
                    <button type="button" class="PostContents_PostContents__menu_button__fCW0J_1" style="cursor: pointer; padding: 6px;">
                        <svg width="24" height="24" viewBox="0 0 24 24">
                            <path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z">
                            </path>
                        </svg>
                    </button>
                    <button class="Buttonsstyled__Button-ch-front__sc-1ym1uvv-0 bHwPlI">
                        <span class="a11y-hidden"> Close chat </span>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" foundation="[object Object]" class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk" defaultopacity="1" hoveredopacity="1" margintop="0" marginright="0" marginbottom="0" marginleft="0" withtheme="true">
                            <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd" d="M16.4818 4.69668L15.3033 3.51817L10 8.82147L4.69671 3.51817L3.5182 4.69668L8.8215 9.99998L3.51819 15.3033L4.6967 16.4818L10 11.1785L15.3033 16.4818L16.4818 15.3033L11.1785 9.99998L16.4818 4.69668Z">
                            </path>
                        </svg>
                    </button>
                </div>
            </header>
        <!-- <header class="inqueryHeader">
            <div class="inqueryHeaderLeft">
                <div class="inqueryHeaderLeftWrapper">
                    <div class="inqeuryHeaderLogo">
                        <button class="BaseHeaderstyled__BackButtonWrapper-ch-front__sc-aselju-1 eeIupr">
                            <span class="a11y-hidden"> Go to previous page </span>
                            <svg width="20" height="20" viewBox="0 0 13 20" fill="none"
                                xmlns="http://www.w3.org/2000/svg" foundation="[object Object]"
                                class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk" defaultopacity="1"
                                hoveredopacity="1" margintop="0" marginright="0" marginbottom="0" marginleft="0"
                                withtheme="true">
                                <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                                    d="M9.17255 16.4226C8.84711 16.748 8.31947 16.748 7.99404 16.4226L2.1607 10.5893C1.83527 10.2638 1.83527 9.73619 2.1607 9.41075L7.99404 3.57742C8.31947 3.25198 8.84711 3.25198 9.17255 3.57742C9.49799 3.90285 9.49799 4.43049 9.17255 4.75593L3.92847 10L9.17255 15.2441C9.49799 15.5695 9.49799 16.0972 9.17255 16.4226Z">
                                </path>
                            </svg>
                            <div class="BaseHeaderstyled__Badge-ch-front__sc-aselju-2 eTldLV">
                                <span class="Text--1uzltr3 kJwJXW" data-testid="bezier-react-text"></span>
                            </div>
                        </button>
                    </div>
                    <span class="inqueryHeaderTitle">
                        <div class="inqueryheaderTitleText">서울 체크인</div>
                    </span>
                </div>
            </div>
            <div class="inqueryHeaderRightTwo">
                <button class="Buttonsstyled__Button-ch-front__sc-1ym1uvv-0 bHwPlI">
                    <span class="a11y-hidden"> Close chat </span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"
                        foundation="[object Object]" class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk"
                        defaultopacity="1" hoveredopacity="1" margintop="0" marginright="0" marginbottom="0"
                        marginleft="0" withtheme="true">
                        <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                            d="M16.4818 4.69668L15.3033 3.51817L10 8.82147L4.69671 3.51817L3.5182 4.69668L8.8215 9.99998L3.51819 15.3033L4.6967 16.4818L10 11.1785L15.3033 16.4818L16.4818 15.3033L11.1785 9.99998L16.4818 4.69668Z">
                        </path>
                    </svg>
                </button>
            </div>
        </header> -->
        <main class="inqueryMain">
            <section class="inqueryAnswerWrapper">
                <div class="inqueryCardHeader">
                    <div class="inqueryCardHeaderTitleWrapper">
                        <div class="inqeuryCardHeaderTitle">채팅목록</div>
                    </div>

                </div>
                <ol class="inqueryChatList">
                    <!--<li class="inqueryChat">
                        <a href="javascript:void(0)" class="UserChatItem">
                            <div class="UserChatItemLogoWrapper">
                                <div class="UserChatItemLogo">
                                    <img width='15' height="15" src="https://cf.channel.io/thumb/200x200/pub-file/4864/60cb7266a8594bb3cea9/image-from-ios.png" alt="">
                                </div>
                            </div>
                            <div class="UserChatItemContent">
                                 <div class="UserChatItemContentTitle">
                                    <div class="Head-ch-front">서울체크인</div>
                                    <div class="Time-ch-front">7:23PM</div>
                                </div>
                                <div class="UserChatItemContentList">쪽지가 도착했습니다.</div> -->
                            </div>
                            <!-- <div class="UserChatItemButtons">
                                <div class="UserChatItemBadge">1</div>
                                <div class="UserChatItemPrev"></div>
                            </div> -->

                        </a>
                    </li>
                 <!--    <li class="inqueryChat">
                        <a href="javascript:void(0)" class="UserChatItem">
                            <div class="UserChatItemLogoWrapper">
                                <div class="UserChatItemLogo">
                                    <img width='36' height="36"
                                        src="https://cf.channel.io/thumb/200x200/pub-file/4864/60cb7266a8594bb3cea9/image-from-ios.png"
                                        alt="">
                                </div>
                            </div>
                            <div class="UserChatItemContent">
                                <div class="UserChatItemContentTitle">
                                    <div class="Head-ch-front">서울체크인</div>
                                    <div class="Time-ch-front">7:23PM</div>
                                </div>
                                <div class="UserChatItemContentList">쪽지가 도착했습니다.</div>
                            </div>
                            <div class="UserChatItemButtons">
                                <div class="UserChatItemBadge">1</div>
                                <div class="UserChatItemPrev"></div>
                            </div>

                        </a>
                    </li>
                    <li class="inqueryChat">
                        <a href="javascript:void(0)" class="UserChatItem">
                            <div class="UserChatItemLogoWrapper">
                                <div class="UserChatItemLogo">
                                    <img width='36' height="36"
                                        src="https://cf.channel.io/thumb/200x200/pub-file/4864/60cb7266a8594bb3cea9/image-from-ios.png"
                                        alt="">
                                </div>
                            </div>
                            <div class="UserChatItemContent">
                                <div class="UserChatItemContentTitle">
                                    <div class="Head-ch-front">서울체크인</div>
                                    <div class="Time-ch-front">7:23PM</div>
                                </div>
                                <div class="UserChatItemContentList">쪽지가 도착했습니다.</div>
                            </div>
                            <div class="UserChatItemButtons">
                                <div class="UserChatItemBadge">1</div>
                                <div class="UserChatItemPrev"></div>
                            </div>
                        </a>
                    </li> -->
                </ol>
            </section>
        </main>
    </div>
    
    <!-- 쪽지 보는 창 -->
<div class="inqueryWrapper Three inqueryoff">
    <div class="inquery">
        <header class="inqueryHeader">
            <div class="inqueryHeaderLeft">
                <div class="inqueryHeaderLeftWrapper">
                    <div class="inqeuryHeaderLogo Three">
                       <!--  <img width="30" height="30" src="" alt="avatar"> -->
                       <svg width="20" height="20" viewBox="0 0 13 20" fill="none"
                                xmlns="http://www.w3.org/2000/svg" foundation="[object Object]"
                                class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk" defaultopacity="1"
                                hoveredopacity="1" margintop="0" marginright="0" marginbottom="0" marginleft="0"
                                withtheme="true">
                                <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                                    d="M9.17255 16.4226C8.84711 16.748 8.31947 16.748 7.99404 16.4226L2.1607 10.5893C1.83527 10.2638 1.83527 9.73619 2.1607 9.41075L7.99404 3.57742C8.31947 3.25198 8.84711 3.25198 9.17255 3.57742C9.49799 3.90285 9.49799 4.43049 9.17255 4.75593L3.92847 10L9.17255 15.2441C9.49799 15.5695 9.49799 16.0972 9.17255 16.4226Z">
                                </path>
                            </svg>
                    </div>
                    <span class="inqueryHeaderTitle">
                        <div class="inqueryheaderTitleText">서울 체크인</div>
                    </span>
                </div>
            </div>
            <div class="inqueryHeaderRight">
                
                <button class="Buttonsstyled__Button-ch-front__sc-1ym1uvv-0 bHwPlI">
                    <span class="a11y-hidden"> Close chat </span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"
                    foundation="[object Object]" class="InnerIconstyled__Icon-ch-front__sc-197h5bb-0 gSmFGk"
                    defaultopacity="1" hoveredopacity="1" margintop="0" marginright="0" marginbottom="0"
                    marginleft="0" withtheme="true">
                        <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                        d="M16.4818 4.69668L15.3033 3.51817L10 8.82147L4.69671 3.51817L3.5182 4.69668L8.8215 9.99998L3.51819 15.3033L4.6967 16.4818L10 11.1785L15.3033 16.4818L16.4818 15.3033L11.1785 9.99998L16.4818 4.69668Z">
                        </path>
                    </svg>
                </button>
            </div>
        </header>
        <main class="inqueryMain">
            <section class="inqueryAnswerWrapper" style="height: 327px;">
                <div class="inqueryCardHeader">
                    <div class="inqueryCardHeaderTitleWrapper">
                        <div class="inqeuryCardHeaderTitle">쪽지 보기</div>
                    </div>

                </div>
                <div class="chatStart" style="margin: 0 13px;">
                    <div class="chatMain">
                        <div class="chatTitle">
                            <table>
                                <tr>
                                    <td>From.</td>
                                    <td class="chatName" style="padding-left: 14px;">hds1234@koreait.co.kr</td>
                                </tr>
                            </table>
                            <!-- <p>보낸 사람</p>
                            <div class="chatName">hds1234@koreait.co.kr</div> -->
                        </div>
                        <div class="chatTimeWrap">
                            <table style="margin: 0px 0px 7px 0px;">
                                <tr>
                                    <td>Date.</td>
                                    <td class="chatTime" style="padding-left: 16px;">2022-10-12 13:25:00</td>
                                </tr>
                            </table>
<!--                                 <p>보낸 시간</p>
                            <div class="chatTime">2022-10-12 13:25:00</div>
-->                            </div>
                        <div class="chatBody" style="display: flex;">
                            <div class="chatContent" id="" cols="30" rows="10" placeholder=""
                            style=" width: 250px; resize: none; height: 240px; border-radius: 0px; border: 3px solid rgba(0, 0, 0, 0.03);">
                            <pre></pre>
                        </div>
                        </div>
                    </div>

                </div>
            </section>
            <div class="btnPart"
                style="display: flex;  flex-direction: row-reverse; margin-right: 17px; margin-top: 6px;">
                <div class="btnOne">
                    <button class="btnItemTwo reply" type="button"
                    style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255); border: none; border-radius: 10px; height: 30px; width: 70px;">답장하기</button>
                </div>
                <div class="btnTwo" style="padding-right: 10px;  padding-left: 10px;">
                    <button class="btnItemTwo" type="button"
                    style="background: rgb(204, 204, 204); border: 1px solid rgb(204, 204, 204); color: rgb(255, 255, 255); border: none; border-radius: 10px; height: 30px; width: 70px;">번역하기</button>
                </div>
            </div>
            
        </main>
    </div>
</div>
</div>

</body>
<script>
let kBoardNumber = "${kboard.getkBoardNumber()}";
console.log("게시글 넘버")
console.log(kBoardNumber)
let kBoardEmail = "${kboard.getMemberEmail()}";
console.log("게시글이메일")
console.log(kBoardEmail)
let kMemberNumber = "${kboard.getMemberNumber()}";
console.log("게시글 멤버넘버")
console.log(kMemberNumber)
let memberNumbers = sessionStorage.getItem("memberNumber");
console.log("로그인 한 멤버")
console.log(memberNumbers)
</script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/board/community.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/board/comment.js"></script>
<script>
    
    var checkDotThree = -1;
    var checkChat = -1;
    
    // 쪽지창 띄우기
    $("#chatOpenButton").on('click', function () {
            if(checkChat < 0){
                $(".inqueryWrapper.One").removeClass('inqueryoff').addClass('inqueryon');
            }else {
                $(".inqueryWrapper").removeClass('inqueryon').addClass('inqueryoff'); 
            }
            checkChat *= -1;
        });
        
        // x버튼 누르기
        $(".Buttonsstyled__Button-ch-front__sc-1ym1uvv-0.bHwPlI").on('click', function () {
            $(".inqueryWrapper").removeClass('inqueryon').addClass('inqueryoff');
        });
        
        // 점 세개 버튼 누르면 쪽지 목록으로 넘어가기
        $(".PostContents_PostContents__menu_button__fCW0J_1").on('click', function () {
        	console.log(checkDotThree)
            if(checkDotThree > 0){
                $(".inqueryWrapper.Two").removeClass('inqueryon').addClass('inqueryoff');
                $(".inqueryWrapper.One").removeClass('inqueryoff').addClass('inqueryon');
            
            }else {
                $(".inqueryWrapper.One").removeClass('inqueryon').addClass('inqueryoff');
                $(".inqueryWrapper.Two").removeClass('inqueryoff').addClass('inqueryon');
                
             $.ajax({
            	url:"/message/msglistOk.ms",
            	data:{messageSendEmail : kMemberNumber},
            	contentType:"application/json; charset=utf-8",
            	dataType:"json",
            	success: function(messages){
            		console.log("목록부르기")
            		let text = "";
            		if(messages.length > 0){
            			
            		messages.forEach(message => {
            			text += `<li class="inqueryChat">`;
            			text += `<a href="javascript:void(0)" class="UserChatItem">`;
            			text += `<div class="UserChatItemLogoWrapper">`;
            			text += `<div class="UserChatItemLogo">`;
            			text += `<img width='15' height="15" src="https://cf.channel.io/thumb/200x200/pub-file/4864/60cb7266a8594bb3cea9/image-from-ios.png" alt="">`;
            			text += `</div>`;
            			text += `</div>`;
            			text += `<div class="UserChatItemContent">`;
	                    text += `<div class="UserChatItemContentTitle">`;
	                    text += `<div class="Head-ch-front">` + message.memberName +`</div>`;
	                   	text += `<div class="Time-ch-front">` + message.messageSendDate + `</div>`;
	                    text += `</div>`;
	              		text += `<div class="UserChatItemContentList">` + message.messageArticle +`</div>`;
            		});
            		$(".inqueryChatList").html(text);
            		}
            	}
            	
            }); 
            }
            checkDotThree *= -1;
            
        });

        // 쪽지 목록 누르면 쪽지 상세보기
        $("li.inqueryChat").on('click', function(){
            $(".inqueryWrapper").removeClass('inqueryon').addClass('inqueryoff');
            $(".inqueryWrapper.Three").removeClass('inqueryoff').addClass('inqueryon');
        });
        
        // 쪽지 상세보기에서 쪽지 목록으로 돌아가기
        $(".inqeuryHeaderLogo.Three").on('click', function(){
            $(".inqueryWrapper").removeClass('inqueryon').addClass('inqueryoff');
            $(".inqueryWrapper.Two").removeClass('inqueryoff').addClass('inqueryon');
        });

        // 쪽지 상세보기에서 답장하기 누르면 쪽지 작성창 나오기
        $(".btnItemTwo.reply").on('click', function(){
            $(".inqueryWrapper").removeClass('inqueryon').addClass('inqueryoff');
            $(".inqueryWrapper.One").removeClass('inqueryoff').addClass('inqueryon');
        });
        
        /* 버튼 올리면 색깔 바뀌는 js */
        $(document).ready(function () {
            $('.btnItemTwo').mouseover(function () {
                    $(this).css("backgroundColor", "#0896e2");
                });
            $('.btnItemTwo').mouseout(function () {
                $(this).css("backgroundColor", "rgb(204, 204, 204)");
            });
        });
        
        // 로그인 안하면 게시글 수정 불가
        
        let selectCheck = false;
		let replyCheck = false;
		
		$(".PostContents_PostContents__menu_button__fCW0J").on('click',function(){
		    let $modifyBtn = $(".MenuPopup_MenuPopup__kcJI1.MenuPopup_MenuPopup__paddingBottom__SUQod");
			if(memberNumbers == kMemberNumber){
			    selectCheck = !selectCheck;
				}
			    if(selectCheck){
			        $modifyBtn.css('display','block');
			    }else{
			        $modifyBtn.css('display','none');
			    }
		})
		
		
		$(".CommentItem_CommentItem__menu__1yY_N").on('click',function(){
		    let $replymodifyBtn = $(".MenuPopup_MenuPopup__kcJI1.MenuPopup_MenuPopup__paddingTop__VUYHS.CommentItem_CommentItem__menuPopup__I6dGz");
		    replyCheck = !replyCheck;
		    if(replyCheck){
		        $replymodifyBtn.css('display','block');
		    }else{
		        $replymodifyBtn.css('display','none');
		    }
		})
		
		
		
		/* 쪽지 */
 		//번역하기 버튼에 클릭 이벤트 추가
        $("#translateBtn").on('click', messageTranslate);
        
        //게시글 쪽지 번역
        function messageTranslate() {
           let $message = $("textarea[name='chatContent']").val();
           
           $.ajax({
              url: "/message/messagetranslate.ms",
              data:{messageContent: $message},
              success: function(content){
                 $("textarea[name='chatContent']").val(content)
              }
           });
        }
        
        //보내기 버튼에 클릭 이벤트 추가
        $("#sendBtn").on('click', sendMessage)
        
        //게시글 쪽지 보내기
	       function sendMessage() {
	           $.ajax({
	              url:"/message/mapmsg.ms",
	              data:{businessMail: 1, loginedMail: 2, content: $("textarea[name='chatContent']").val()},
	              success: function () {
	            	  let text
	                 text +=`<tr>`;
	                 text +=`<td>`+ "To."+`</td>`;
	                 text +=`<td class="chatReceiveName" style="padding-left: 14px;">`+ kBoardEmail +`</td>`;
	                 text +=`</tr>`;
	                 text +=`<tr>`;
	                 text +=`<td>`+ "From." +`</td>`;
	                 text +=`<td class="chatSendName" style="padding-left: 15px;">` + memberNumbers + `</td>`;
	                 text +=`</tr>`; 
	                 $("textarea[name='chatContent']").val("");
	              }
	           })
  		}
        
</script>
</html>