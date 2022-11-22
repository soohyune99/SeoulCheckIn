<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myComment.css">
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
                        <strong style="margin-top: 23px;" class = "programCount";>0</strong>
                    </a>
                    <a href="/member/mycommunity.me">
                        <span style="margin-top: 23px;">커뮤니티</span>
                        <strong style="margin-top: 23px;" class = "boardCount";>0</strong>
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
            <div class="startMain">
                <div class="title">
                    <h2>내 커뮤니티</h2>
                    <p>커뮤니티에서 작성한 글과 댓글입니다. 확인해주세요.</p>
                    <ul class="myCommunityList">
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="posts" class="write">
                            <a href="${pageContext.request.contextPath}/member/mycommunity.me" class="btnOne">작성글</a>
                        </li>
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="comments" class="comment">
                            <a href="'javascript:void(0);" class="btnTwo">작성댓글</a>
                        </li>
                    </ul>
                </div>
                <div class="feedbackList">
                    <div class="feedBack">감사합니다 :)</div>
                    <div class="feedBackTime">4시간 전 댓글 작성</div>
                    <div class="feedbackBody">
                        <div class="feedbackTitle">[펌] 비전공생 기획자의 SQL 공부법</div>
                        <div class="feedbackItem">
                            <svg width="18" height="18" viewBox="0 0 18 18">
                            <path fill="#3366FF" d="M1 8c0 3.859 3.623 7 8 7 .317 0 .593-.026.954-.088l.394-.074.206-.043 3.295 2.088c.118.076.25.114.38.117h.042a.753.753 0 0 0 .547-.259l.065-.089a.748.748 0 0 0-.143-.969l-.088-.066-1.013-.641a5.207 5.207 0 0 1-.405-.295c-.097-.084-.199-.149-.263-.374-.033-.166.009-.317.084-.393a.934.934 0 0 1 .284-.197C15.631 12.694 17 10.432 17 8c0-3.861-3.622-7-8-7-4.377 0-8 3.14-8 7z">

                            </path>
                        </svg>
                        <span>4</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
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