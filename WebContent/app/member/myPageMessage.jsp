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
    <title>쪽지함</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPageMessage.css">
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
                        <span style="margin-top: 23px;">커뮤니티</span>
                        <strong style="margin-top: 23px;" class = "boardCount"; >0</strong>
                    </a>
                    <a href="/member/mymsg.me">
                        <span style="margin-top: 23px;">쪽지</span>
                        <strong style="margin-top: 23px;" class = "messageCount";>0</strong>
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

            <section class="eventSize">
                <aside class="event">
                    <button type="button" onclick="location.href='visaNav.html'">
                        <div class="bannerMain">
                            <div>
                                <p class="bannerString">비자네비게이터를 통해 입국목적별 비자 종류에 대하 알아보세요</p>
                            </div>
                            <strong class="bannerBtn">지금 확인하기</strong>
                            <picture>
                                <img src="https://static.wanted.co.kr/career_connect/banner.png" alt="career-connect-banner">
                            </picture>
                        </div>
                    </button>
                </aside>
                <div class="className">
                    <div class="formHeader">
                        <dl class="formTitle">
                            <dt>쪽지 내역</dt>
                            <dd>받은 쪽지 내역입니다. 확인해 주세요.</dd>
                        </dl>
                        
                        <div class="messageList">
                         <!--    <label><input type="checkbox" name="allCheckMail"  display = "none"></label> -->
                            <span class="sendWho">쪽지 번호</span>
                            <span class="sendContent">내용</span>
                            <span class="sendDate">보낸 사람</span>
                            <span class="sendTime">작성일</span>
                            
                  
                            
                            
                            
                        </div>
                 				<table style = "margin: 10px auto;">
										<caption style="margin-bottom:3%"></caption>
											<tbody>
												<c:choose>
													<c:when test="${Members != null and fn:length(Members) > 0}">
														<c:forEach var="member" items="${Members}">
															<tr>
																<td class="myMessagge"><a href='javascript:void(0)'><c:out value="${member.getMessageNumber()}"/></a></td>
																<td class="myMessagge"><a href='javascript:void(0)'><c:out value="${member.getMessageArticle()}"/></a></td>
																<td class="myMessagge"><a href='javascript:void(0)'><c:out value="${member.getMemberName()}"/></a></td>
																<td class="myMessagge"><a href='javascript:void(0)'><c:out value="${member.getMessageSendDate()}"/></a></td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
                       	
                       	
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
                       			
                       			
							<!-- paging -->                       				
                       			<table style="font-size:1.3rem;margin: 0 auto;">
											<tr align="center" valign="middle">
												<td class="web-view">
													<c:if test="${prev}">
														<a href="${pageContext.request.contextPath}/member/mymsg.me?page=${startPage - 1}">&lt;</a>
													</c:if>
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${not (i eq page)}">
																<a href="${pageContext.request.contextPath}/member/mymsg.me?page=${i}">
																	<c:out value="${i}"/>&nbsp;&nbsp;
																</a>
															</c:when>
															<c:otherwise>
																	<c:out value="${i}"/>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													<c:if test="${next}">
														<a href="${pageContext.request.contextPath}/member/mymsg.me?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
										
                       	
                       	
                       	    <!-- paging -->
                       	
                       	
                       	
                       	<%-- <c:forEach var="member" items="${Members}">
							<tr>
								<td><a href='${pageContext.request.contextPath}/board/detailOk.bo?boardNumber=${board.getBoardNumber()}'><c:out value="${member.getMessageTitle()}"/></a></td>
								<td><c:out value="${member.getMessageArticle()}"/></td>
								<td><c:out value="${member.getMessageSendDate()}"/></td>
								<td><c:out value="${member.getMemberName()}"/></td>
								 <br>
								 
							</tr>
					</c:forEach> --%>
                       <%--   "${Members.getMemberName(0)}" --%>
                    </div>
                </div>
            </section>



    
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
	<!-- 쪽지함  -->
	
</script>

<!-- 강의, 내가쓴글, 댓글, 쪽지 카운트 -->
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