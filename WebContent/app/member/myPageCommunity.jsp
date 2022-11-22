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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPageCommunity.css">
    <title>커뮤니티</title>
</head>
<body>

    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    
    <div class="container">
        <nav role="presentation">
            <h2 class="profile">
                <p>프로필</p>
                <button type="button" class="navButton">프로필</button>
            </h2>
        </nav>

        <div class="mainContainer">
            <aside class="mainAside">
                <div class="header">
                    <div class="aside">
                        <div class="asideImg">
                            <div class="inputImg">
                                <label for="attach">
                                    <div><!-- 파일을 올렸을때 바뀌는 이미지 --></div>
                                </label>
                                <input type="file" id="attach" style="display: none;" onclick="click()">
                                <div class="cameraIcon"></div>
                            </div>
                        </div>
                        <div class="asideMe">
                            <div class="asideMeName">이름</div>
                            <div class="asideMeEmail">이메일@google.com</div>
                            <div class="asideMeTel">010-1234-1234</div>
                        </div>
                    </div>
                </div>
               <div class="list">
                    <a href="javascript:errorPage()">
                        <span style="margin-top: 23px;" >강의</span>
                        <strong style="margin-top: 23px;" class = "programCount";>1</strong>
                    </a>
                    <a href="/member/mycommunity.me">
                        <span style="margin-top: 23px;" >커뮤니티</span>
                        <strong style="margin-top: 23px;" class = "boardCount"; >0</strong>
                    </a>
                    <a href="/member/mymsg.me">
                        <span style="margin-top: 23px;">쪽지</span>
                        <strong style="margin-top: 23px;" class = "messageCount"; >0</strong>
                    </a>
                    <a href="/member/updateinfo.me" class="myPagelist_end">
                        <span style="margin-top: 23px;">정보 수정</span>
                        <strong style="margin-top: 23px;"></strong>
                    </a>
                    <a href="/member/dropinfo.me">
                        <span style="margin-top: 23px;">회원 탈퇴</span>
                    </a>
                </div>
            </aside>
            <div class="startMain">
                <div class="title">
                    <h2>내 커뮤니티</h2>
                    <p>커뮤니티에서 작성한 글과 댓글입니다. 확인해주세요.</p>
                    <ul class="myCommunityList">
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="posts" class="write">
                            <a href="myPageCommunity.html" class="btnOne">작성글</a>
                        </li>
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="comments" class="comment">
                            <a href="${pageContext.request.contextPath}/member/mycomment.me" class="btnTwo">작성댓글</a>
                        </li>
                    </ul>
                </div>
                <div class="communityBody">
                    <a class="postAll" data-content-title="국비프로젝트">
             <!--            <article>
                            <div class="postItem">
                                <div class="authorBox">
                                    <button data-content-title="국비프로젝트 너무 어려워요">
                                        <div class="avatarWrapper">
                                            <div class="userAvatar"></div>
                                        </div>
                                        <span class="postName">이름</span>
                                    </button>
                                    <span class="authorBoxtime">32분 전</span>
                                </div>
                            </div>
                            <div class="postItemBody">
                                <h3 class="postItemTitle">국비프로젝트</h3>
                                <p class="postItemContent">퍼블리싱</p>
                            </div>
                        </article> -->
                        
                        <c:forEach var="myBoard" items="${myBoards}">
                         <article>
                            <div class="postItem">
                                <div class="authorBox">
                                    <button data-content-title="국비프로젝트 너무 어려워요">
                                        <div class="avatarWrapper">
                                            <div class="userAvatar"></div>
                                        </div>
                                        <span class="postName"><c:out value="${myBoard.getMemberName()}"/></span>
                                    </button>
                                    <span class="authorBoxtime"><c:out value="${myBoard.getkBoardDate()}"/></span>
                                </div>
                            </div>
                            <div class="postItemBody">
                                <h3 class="postItemTitle"><c:out value="${myBoard.getkBoardTitle()}"/></h3>
                                <p class="postItemContent"><c:out value="${myBoard.getkBoardArticle()}"/></p>
                            </div>
                        </article>
                       </c:forEach>
                    </a>
                </div>
                <div class="scroll"></div>
            </div>
            
            <%-- 
 								<c:forEach var="member" items="${Members}">
                        		 	<div class="messageList2">
                         				<label><input type="checkbox" name="allCheckMail" value="" display = "none"></label>
                            			<a class="sendWho" href='javascript:void(0);'><c:out value="${member.getMessageNumber()}"/></a>
                            			<a class="sendContent" href='javascript:void(0);'><c:out value="${member.getMessageArticle()}"/></a>
                           				<a class="sendDate" href='javascript:void(0);'><c:out value="${member.getMemberName()}"/></a>    
                            			<a class="sendTime" href='javascript:void(0);'><c:out value="${member.getMessageSendDate()}"/></a>
                        			</div>
                       			</c:forEach>
                       			 --%>
                       			
    
</body>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

    const file = document.querySelector("input[type='file']");
    const camera = document.querySelector(".cameraIcon");
    const thumbnail = document.querySelector("label[for='attach'] div");

    file.addEventListener("change", function(e){           
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files[0]);        
            reader.onload = function(e){                     
                let url = e.target.result;
                thumbnail.style.backgroundImage = "url('"+ url + "')";
                
                if(url.includes('image')){
                   thumbnail.style.backgroundImage = "url('"+ url + "')";
                }else{
                   thumbnail.style.backgroundImage = "url('img/attach.png')";
               }
                
            }
        });
        
    camera.addEventListener("click", function(){           
            file.onclick();
     });
    
  


</script>
<script>
showList()
showList2()
showList3()
showList4()
function showList(){
	console.log("ajax들어옴");
	$.ajax({
		url: "/member/mypagelist.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(result){
			console.log(result);
			$(".programCount").text(result);
			console.log("ajax1들어옴");
		}
		
	})
}

function showList2(){
	$.ajax({
		url: "/member/mypagelist2.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(result){
			console.log(result);
			$(".messageCount").text(result);
		}
		
	})
}


function showList3(){
	$.ajax({
		url: "/member/mypagelist3.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(result){
			console.log(result);
			$(".boardCount").text(result);
		}
		
	})
}

function showList4(){
	console.log("ajax4 들어옴");
	$.ajax({
		url: "/member/updatelist.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(members){
			console.log("ajax4 들어옴");
			console.log(members);
			
			$(".asideMeName").text(members[0].memberName);
			$(".asideMeEmail").text(members[0].memberEmail);
			$(".asideMeTel").text(members[0].memberPhone);
			
		}
		
	})
	
}


function errorPage(){
	alert("죄송합니다. 서비스 준비 중입니다 ๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ");
}
</script>
</html>