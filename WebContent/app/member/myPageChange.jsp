<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기본정보 수정</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPageChange.css">
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


            <section class="eventSize">
                <aside class="event">
                    <button type="button" onclick="location.href='visaNav.html'">
                        <div class="bannerMain">
                            <div>
                                <p class="bannerString">비자 네비게이터를 통해 입국목적별 비자 종류에 대해 알아보세요</p>
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
                            <dt>개인 정보 수정</dt>
                            <dd>개인 정보를 수정해 주세요.</dd>
                        </dl>
                    </div>
                    <div class="form">
                        <div class="formContent">
                            <form action="${pageContext.request.contextPath}/member/updateinfoOk.me" name="updateForm" method="post">
                                <label for="name" class="input">
                                    <h6>이름</h6>
                                    <input type="text" id="name" name ="name"  placeholder="">
                                </label>
                                <label for="email" class="input">
                                    <h6>이메일</h6>
                                    <input type="email" id="email" name ="email" placeholder="">
                                </label>
                                <label for="password" class="input" >
                                    <h6>비밀번호</h6>
                                    <input type="password" id="password" name ="password"  placeholder="">
                                </label>
                                <label for="phone" class="input">
                                    <h6>휴대폰 번호</h6>
                                    <input type="text" id="phone" name ="phone"  placeholder="">
                                </label>
                            </form>
                        </div>
                    </div>
                    <div class="allBtn">
                        <button type="button" class="btnSubmit" onclick="send()">
                       <!--  <button type="button" class="btnSubmit" onclick="alert('수정되었습니다')"> -->
                            완료
                        </button>
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
    
    
    
    /* 회원정보 수정 */
    
	var $nameInput = $("input[name='name']");
    var $emailInput = $("input[name='email']");
	var $passwordInput = $("input[name='password']");
	var $phoneNumberInput = $("input[name='phone']");
    
    
    
	function send(){
      
         if (!$nameInput.val()) {
           alert('이름을 입력해주세요');
            $nameInput.focus();
            return;
         }

         if (!$emailInput.val()) {
           alert('이메일을 입력해주세요');
            $nameInput.focus();
            return;
         }
         
         if (!$passwordInput.val()){
            alert('비밀번호를 입력해주세요');
            $passwordInput.focus();
            return;
         }
         
         if (!$phoneNumberInput.val()){
            alert('비밀번호를 입력해주세요');
            $passwordInput.focus();
            return;
         }
         

       
      alert('수정되었습니다');
      updateForm.submit();
   }
 
 


</script>
<!-- 회원정보를 뿌릴 AJAX -->
<script>
showList()
function showList(){
	$.ajax({
		url: "/member/updatelist.me",
		type: "get",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function(result){
			console.log(result);
			console.log(result.memberName);
		}
		
	})
}

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