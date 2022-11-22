<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 index - 수강 내역</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPageDelete.css">
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
                        <strong style="margin-top: 23px;" class = "programCount">0</strong>
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

            <section>
                <div class="withdrawal">
                    <div class="block">
                        <h3>탈퇴 시 주의 사항</h3>
                        <ul>
                            <li>탈퇴 시 회원님의 이력서를 포함하여 회원님의 계정에 저장된 <strong>모든 정보가 영구적으로 삭제되며, 다시는 복구할 수 없습니다. </strong></li>
                            <li>이력서의 저장을 원하실 경우, 탈퇴 이전에 <a href="/cv/list">이력서 관리 페이지</a>에서 다운로드 해주세요.</li>
                            <li>다른 계정에 이미 제출된 추천 정보는 추천받은 계정의 소유로 간주되어 <strong>자동으로 삭제되지 않으며, 탈퇴 시 수정이나 삭제가 불가능합니다.</strong></li>
                            <li>제출된 추천서의 수정이나 삭제를 원하실 경우, 탈퇴 이전에 <a href="/referral">추천 페이지</a>에서 추천서를 수정, 또는 삭제 해주세요.</li>
                            <li>기업에 대한 채용 수수료 정산과 부정이용 방지를 위해, <strong>기업에 대한 지원 내역은 관련 법령에 의거하여 탈퇴 후 최장 5년간 저장됩니다.</strong></li>
                            <li><strong>원티드 회원에서 탈퇴하실 경우, 추천 및 채용 보상금을 받으실 수 없습니다.</strong> 받으실 보상금이 있으시다면 탈퇴 이전에 모든 수속을 마쳐주세요.</li>
                            <li>회원 탈퇴 시 계정에 적립된 <strong>포인트는 자동으로 환급되지 않으며, 재가입시에도 복구되지 않습니다.</strong></li>
                            <li>탈퇴 이전에 신청해주신 <strong>교육 및 이벤트 참가 신청은 자동으로 취소되지 않습니다.</strong> 취소를 원하실 경우 탈퇴 이전에 별도로 요청해주세요.</li>
                            <li>기업 서비스에 등록되어 있는 계정일 경우, <strong>기업 서비스 접속권한도 동시에 삭제됩니다. </strong></li>
                            <li>이상의 내용에 동의하여 탈퇴를 원하실 경우, 아래의 “동의하기” 버튼을 클릭 부탁드립니다.</li>
                        </ul>
                        <button type="button" onclick="location.href = '${pageContext.request.contextPath}/member/dropinfoOk.me'">동의하기</button>
                    </div>
                </div>
            </section>
        </div>
    </div>
</body>
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

<!-- 강의, 내가쓴글, 댓글, 쪽지 카운트 -->
<script>
showList()
showList2()
showList3()
showList4()
function showList(){
	$.ajax({
		url: "/member/mypagelist.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(result){
			console.log(result);
			$(".programCount").text(result);
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


