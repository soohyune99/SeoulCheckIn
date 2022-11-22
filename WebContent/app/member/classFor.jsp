<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 index - 수강 내역</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPageClass.css">
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

        <section class="eventSize">
            <aside class="event">
                <button type="button" onclick="location.href='visaNavFor.html'">
                    <div class="bannerMain">
                        <div>
                            <p class="bannerString">Find out the types of visas for each purpose of entry through Visa Navigator</p>
                        </div>
                        <strong class="bannerBtn">To check now</strong>
                        <picture>
                            <img src="https://static.wanted.co.kr/career_connect/banner.png" alt="career-connect-banner">
                        </picture>
                    </div>
                </button>
            </aside>
                <div class="className">
                    <div class="formHeader">
                        <dl class="formTitle">
                            <dt>Lecture history</dt>
                            <dd>This is the course history of your choice. Please check.</dd>
                        </dl>
                    </div>

                    <li class="myClass">
                        <a href="">
                            <div class="classImg">
                                <div style="background-image: url(&quot;https://static.wanted.co.kr/images/events/2406/6aae1a5c.jpg&quot;);"></div>
                            </div>
                            <div class="classContent">
                                <h3>[Free] Solving personal relationships, company life, career concerns in a minute</h3>
                                <p>1 video (22 minutes and 37 seconds in total)</p>
                            </div>
                        </a>
                    </li>
                </div>
            </section>
        </div>
    </div>
    <footer>푸터</footer>
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