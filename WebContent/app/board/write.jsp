<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 작성</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/write.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/tagModal.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <div id="__next" data-reactroot="">
        <div class="Padding_padding___Nyki"></div>
        <main class="CommunityWrite_CommunityWrite__9mT5h">
            <header class="CommunityWrite_CommunityWriteMobileHeader__zxJKy">
	            <button type="button" class="CommunityWrite_CommunityWriteMobileHeader__button__QZvT_">
	            	<i class="icon-close"></i>
	            </button>
                <div class="CommunityWrite_CommunityWriteMobileHeader__text__7LaJt"></div>
            </header>
            <!-- form 시작  -->
     		<form action="${pageContext.request.contextPath}/board/newpost.bo" name="writeForm" method="post" enctype="multipart/form-data">
            
                <div class="Header_CommunityWriteHeader__yoM82">
                    <div class="Header_CommunityWriteHeader__content__o8Uvu">
                        <div class="Header_CommunityWriteHeader__button__Js48X">
	                        <input type="button" class="Button_Button__root__V1ie3 Button_Button__contained__toUI5 undefined Button_Button__sizeMedium__k0A1w Button_Button__fullWidth__RU4tf" value="등록" onclick="send()" style="margin-left: 12px; font-size: 13px;"/>
	                        <input type="button" class="Button_Button__root__V1ie3 Button_Button__contained__toUI5 undefined Button_Button__sizeMedium__k0A1w Button_Button__fullWidth__RU4tf" 
	                        value="취소" onclick="location.href='${pageContext.request.contextPath}/board/board.bo'" style="margin-left: 12px; font-size: 13px;"/>
                        </div>
                    </div>
                </div>
                
                <!-- <div class="CommunityWrite_CommunityWrite__content__t7rnC">
                    <div class="Paper_CommunityWritePaper__zgggO">
                        <div class="TagPanel_tagPanel__G236R">
                            <div class="TagPanel_tagMessage__HTFWX">
	                           	<span>태그 선택</span>
	                            <span class="TagPanel_tagMessage_hint__Uio3u">(1~3개)</span> 
	                            <span class="TagPanel_tagMessage_required__JhAPt">*</span> 
                            </div>
                            <div class="TagPanel_tagWrapper___bVxE">
                            	<button type="button" aria-label="Open Select Tag Modal" class="plusBtn">
                            		<svg width="34" height="34" viewBox="0 0 34 34">
                                        <path d="M0 17C0 7.61116 7.61116 0 17 0V0C26.3888 0 34 7.61116 34 17V17C34 26.3888 26.3888 34 17 34V34C7.61116 34 0 26.3888 0 17V17Z" fill="#F2F4F7"></path>
                                        <path d="M17.7432 10.6482C17.6935 10.2822 17.3797 10 17 10C16.5858 10 16.25 10.3358 16.25 10.75V16.25H10.75L10.6482 16.2568C10.2822 16.3065 10 16.6203 10 17C10 17.4142 10.3358 17.75 10.75 17.75H16.25V23.25L16.2568 23.3518C16.3065 23.7178 16.6203 24 17 24C17.4142 24 17.75 23.6642 17.75 23.25V17.75H23.25L23.3518 17.7432C23.7178 17.6935 24 17.3797 24 17C24 16.5858 23.6642 16.25 23.25 16.25H17.75V10.75L17.7432 10.6482Z" fill="#666666"></path>
                                    </svg>
                                </button>
                                <button type="button" class="TagPanel_tagPlaceholder__uBCPy" aria-label="Open Select Tag Modal">
                                    <picture>
                                        <source type="image/webp" srcset="https://static.wanted.co.kr/images/community/tag_empty.webp 1x, https://static.wanted.co.kr/images/community/tag_empty@2x.webp 2x, https://static.wanted.co.kr/images/community/tag_empty@3x.webp 3x">
                                        <img srcset="https://static.wanted.co.kr/images/community/tag_empty.png 1x, https://static.wanted.co.kr/images/community/tag_empty@2x.png 2x, https://static.wanted.co.kr/images/community/tag_empty@3x.png 3x" src="https://static.wanted.co.kr/images/community/tag_empty@3x.png" alt="empty tag">
                                    </picture>
                                </button>
                                <div class="TagPanel_slider__pRBBp">
                                    <div class="TagPanel_scroll__X9CwD">
                                        <div class="TagPanel_scroll_list__61HCC"></div>
                                    </div>
                                </div>
                            </div>
                        	<p style="text-align:left; font-size:15px;">${kboard.getmemberName()}</p>
                        </div> -->
                <!-- 제목 -->
                <div class="AutoTextarea_AutoTextarea__odSEo Paper_CommunityWritePaper__title__0zYfC">
                </div>
                
                        <!-- 글쓰기 -->
                <div class="Paper_CommunityWritePaper__content__KM9Nk">
                	<div class="AutoTextarea_AutoTextarea__odSEo">
                	
	                    <p><input name="boardTitle" type="text" placeholder="제목 입력"></p>
	                	<br>
                		<textarea class="AutoTextarea_AutoTextarea__textarea__zScTG content" name="boardContent" placeholder="내용을 작성해주세요." style="resize:none;" rows="30"></textarea>
                    </div>
               </div>
                <div style="margin-bottom:2%;">
                              첨부파일
                </div>
               <div style="display:flex;">
                <div class="files">
                  <div>
                   <label for="board_file1" style="display:inline;">
                                       <img id="board_file1Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
                                    </label>
                                 </div>
                                 <input id="board_file1" name="board_file1" type="file">
                                 <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
                              </div>
                          </div>
               
            </form>
<!-- 
                    이미지 추가하는 버튼 클릭 시 이미지 올라감
                            <div class="Paper_CommunityWritePaper__photos__DhsN_">
                            이미지 추가시 올라감
									<img id="preview" src="" alt="image" style="width:100px" />
	                                <input id="delete" type="button" onclick="cancelFile('board_file1')" style="display:none;">
	                                <label for="delete">
	                                    <svg xmlns="https://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
	                                        <circle opacity="0.5" cx="11" cy="11" r="10.5" fill="black" stroke="#FEFEFE"></circle>
	                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.06427 7.42318C7.88484 7.29004 7.63021 7.30484 7.46749 7.46756C7.2885 7.64655 7.2885 7.93675 7.46749 8.11574L10.3517 11L7.46749 13.8842L7.42312 13.9356C7.28998 14.1151 7.30478 14.3697 7.46749 14.5324L7.5189 14.5768C7.69833 14.7099 7.95296 14.6951 8.11568 14.5324L10.9999 11.6484L13.8842 14.5324L13.9356 14.5768C14.115 14.7099 14.3696 14.6951 14.5323 14.5324C14.7113 14.3534 14.7113 14.0632 14.5323 13.8842L11.6481 11L14.5323 8.11574L14.5767 8.06433C14.7099 7.8849 14.6951 7.63027 14.5323 7.46756L14.4809 7.42318C14.3015 7.29004 14.0469 7.30484 13.8842 7.46756L10.9999 10.3516L8.11568 7.46756L8.06427 7.42318Z" fill="#333333"></path>
	                                        <mask id="mask0_2_1815" maskUnits="userSpaceOnUse" x="7" y="7" width="8" height="8">
	                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M8.06427 7.42318C7.88484 7.29004 7.63021 7.30484 7.46749 7.46756C7.2885 7.64655 7.2885 7.93675 7.46749 8.11574L10.3517 11L7.46749 13.8842L7.42312 13.9356C7.28998 14.1151 7.30478 14.3697 7.46749 14.5324L7.5189 14.5768C7.69833 14.7099 7.95296 14.6951 8.11568 14.5324L10.9999 11.6484L13.8842 14.5324L13.9356 14.5768C14.115 14.7099 14.3696 14.6951 14.5323 14.5324C14.7113 14.3534 14.7113 14.0632 14.5323 13.8842L11.6481 11L14.5323 8.11574L14.5767 8.06433C14.7099 7.8849 14.6951 7.63027 14.5323 7.46756L14.4809 7.42318C14.3015 7.29004 14.0469 7.30484 13.8842 7.46756L10.9999 10.3516L8.11568 7.46756L8.06427 7.42318Z" fill="white">
	                                            </path>
	                                        </mask>
	                                        <g mask="url(#mask0_2_1815)">
	                                            <rect x="5.5" y="5.5" width="11" height="11" fill="#FEFEFE"></rect>
	                                        </g>
	                                    </svg>
	                                </label>
                            </div>
                            이미지 추가하는 버튼 클릭 시 이미지 올라감
                        </div>
                    </div>
                </div>
            사진 추가 버튼
            <input class="CommunityWrite_CommunityPhotoFile__YOQL3" type="file" name="fileName" accept="image/png, image/jpeg">
            <div class="CommunityWrite_CommunityPhotoButton__SIrUN">
                <div class="Tooltip_Tooltip__O0gp_">
                    <span>사진을 추가해 보세요!</span>
                    <div class="Tooltip_Tooltip__bubblePoint__SmEXP"></div>
                </div>
                <label>
                    <div class="PhotoButton_PhotoButton__uSl7I" data-attribute-id="community__content__addImage">
                         <input id="board_file" name="uploadfile" type="file" style="display: none;" onchange="readURL(this);">
                        <svg xmlns="https://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z" fill="currentColor"></path>
                            <mask id="mask0_150_2361" maskUnits="userSpaceOnUse" x="1" y="4" width="22" height="16">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask0_150_2361)">
                                <rect width="24" height="24" fill="currentColor"></rect>
                            </g>
                        </svg>
                    </div>
                </label>
            </div> -->
            <div class="CommunityWrite_CommunityWriteMobileBackground__dTGkk"></div>

            <!-- 모달 -->
            <div class="Modal_Modal__root__lNnQN undefined" style="display: none;">
                <div class="Modal_Modal__root__backdrop__ENcJl Modal_Modal__root__blur__bKLQ5"></div>
                <div class="Modal_Modal__root__body__1_X6A Modal_Modal__root__body__scrollContent__ro_P_ SelectTagsModal_SelectTagsModal__5SMcy">
                    <div class="ModalTitle_ModalTitle__root__y_KMH SelectTagsModal_SelectTagsModal__title__nZKuF">
                        <h4>태그 선택</h4><span class="SelectTagsModal_badge__eVbO1">0</span><button type="button"
                            title="close" class="closeBtn"><span class="SvgIcon_SvgIcon__root__8vwon"><svg
                                    class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
                                    <path
                                        d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z">
                                    </path>
                                </svg></span></button>
                    </div>
                    <div class="ModalContent_ModalContent__root__1Z9d1">
                        <div class="SelectTagsModal_SelectTagsModal__contents__edpIA">
                            <p class="SelectTagsModal_message__z_ihm">작성글 주제에 맞는 태그를 선택해주세요. (1~3개)</p>
                            <div class="SelectTagsModal_interestsTags__BHJl7">
                                <ul>
                                    <li>
                                        <div class="SelectTagsModal_iconImg__OaRI_"><img
                                                src="https://static.wanted.co.kr/images/tags/0a15b242.png" alt=""><span
                                                class="SelectTagsModal_tagTitle__DD2G7">직장인 공감</span></div>
                                        <ul class="SelectTagsModal_subTags__dIvTw">
                                            <li class=""><button type="button">커리어고민</button></li>
                                            <li class=""><button type="button">취업/이직</button></li>
                                            <li class=""><button type="button">회사생활</button></li>
                                            <li class=""><button type="button">인간관계</button></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <div class="SelectTagsModal_iconImg__OaRI_"><img
                                                src="https://static.wanted.co.kr/images/tags/2011f1b4.png" alt=""><span
                                                class="SelectTagsModal_tagTitle__DD2G7">관심분야</span></div>
                                        <ul class="SelectTagsModal_subTags__dIvTw">
                                            <li class=""><button type="button">개발</button></li>
                                            <li class=""><button type="button">데이터</button></li>
                                            <li class=""><button type="button">HR</button></li>
                                            <li class=""><button type="button">서비스기획</button></li>
                                            <li class=""><button type="button">마케팅</button></li>
                                            <li class=""><button type="button">디자인</button></li>
                                            <li class=""><button type="button">경영/전략</button></li>
                                            <li class=""><button type="button">CS/CX</button></li>
                                            <li class=""><button type="button">MD</button></li>
                                            <li class=""><button type="button">콘텐츠 제작</button></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <div class="SelectTagsModal_iconImg__OaRI_"><img
                                                src="https://static.wanted.co.kr/images/tags/49bae778.png" alt=""><span
                                                class="SelectTagsModal_tagTitle__DD2G7">트렌드/인사이트</span></div>
                                        <ul class="SelectTagsModal_subTags__dIvTw">
                                            <li class=""><button type="button">IT/기술</button></li>
                                            <li class=""><button type="button">브랜딩</button></li>
                                            <li class=""><button type="button">라이프스타일</button></li>
                                            <li class=""><button type="button">UX/UI</button></li>
                                            <li class=""><button type="button">노무</button></li>
                                            <li class=""><button type="button">리더십</button></li>
                                            <li class=""><button type="button">조직문화</button></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="ModalActions_ModalActions__root__8OUZk SelectTagsModal_SelectTagsModal__actions__1UVKu">
	                    <button class="Button_Button__root__V1ie3 Button_Button__contained__toUI5 undefined Button_Button__sizeLarge__qMiwJ Button_Button__fullWidth__RU4tf" disabled="">
	                    <span class="Button_Button__label__1Kk0v">완료</span>
	                    </button>
                    </div>
                </div>
            </div>

        </main>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/board/community.js"></script>
<script>



function send(){
 /*    if(!writeForm.kBoardTitle){
       alert("제목을 작성해주세요.");
       return;
    }
    
    if(!writeForm.kBoardArticle){
       alert("내용을 작성해주세요.");
       return;
    } */
    
    writeForm.submit();
 }
 
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	      $('#preview').attr('src', e.target.result);
	    };
	    reader.readAsDataURL(input.files[0]);
	  }
	}



</script>
</html>