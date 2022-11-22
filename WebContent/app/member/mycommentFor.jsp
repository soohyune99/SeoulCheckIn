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
                <p>Profile</p>
                <button type="button" class="navButton">profile</button>
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
                            <div class="asideMeName">Name</div>
                            <div class="asideMeEmail">Email</div>
                            <div class="asideMeTel">010-1234-1234</div>
                        </div>
                    </div>
                </div>
                <div class="list">
                    <a href="classFor.html">
                        <span style="margin-top: 23px;" >My Lecture</span>
                        <strong style="margin-top: 23px;">0</strong>
                    </a>
                    <a href="commentFor.html">
                        <span style="margin-top: 23px;">My Community</span>
                        <strong style="margin-top: 23px;">0</strong>
                    </a>
                    <a href="messageFor.html">
                        <span style="margin-top: 23px;">My Message</span>
                        <strong style="margin-top: 23px;">0</strong>
                    </a>
                    <a href="passwordFor.html" class="myPagelist_end">
                        <span style="margin-top: 23px;">My Information</span>
                        <strong style="margin-top: 23px;">0</strong>
                    </a>
                    <a href="deleteFor.html">
                        <span style="margin-top: 23px;">Withdrawal</span>
                    </a>
                </div>
            </aside>

            <div class="startMain">
                <div class="title">
                    <h2>My Community</h2>
                    <p>These are the comments and comments written by the community. Please check.</p>
                    <ul class="myCommunityList">
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="posts" class="write">
                            <a href="communityFor.html" class="btnOne">Written writing</a>
                        </li>
                        <li data-attribute-id="community__myCommunity__myAction__tab__click" data-tab-kind="comments" class="comment">
                            <a href="commentFor.html" class="btnTwo">Writing comments</a>
                        </li>
                    </ul>
                </div>

                <div class="feedbackList">
                    <div class="feedBack">Thank you :)</div>
                    <div class="feedBackTime">Write a comment 4 hours ago</div>
                    <div class="feedbackBody">
                        <div class="feedbackTitle">The SQL Study Method of Non-Communist Planner</div>
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
</html>