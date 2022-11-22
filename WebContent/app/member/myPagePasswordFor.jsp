<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인정보 수정시 비밀번호 입력</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/myPagePassword.css">
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <div class="container">
        <nav role="presentation">
            <h2 class="profile">
                <p>Profile</p>
                <button type="button" class="navButton">Profile</button>
            </h2>
        </nav>

        <div class="mainContainer">
            <aside class="mainAside">
                <div class="header">
                    <div class="aside">
                        <div class="asideImg">
                            <div class="inputImg">
                                <input type="file" accept="image/*">
                                <i class="cameraIcon"></i>
                                <!-- <img src="./img/cameraIcon.png" class="img"> -->
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

                <div class="changePw">
                    <div class="formHeader">
                        <dl class="formTitle">
                            <dt>Confirm password</dt>
                            <dd>Enter password for resetting personal information.</dd>
                        </dl>
                    </div>
                    <div class="pwForm">
                        <form action="">
                            <input id="userPw" type="text" autocomplete="username" placeholder="sample@wanted.co.kr" value="">
                        </form>
                        <div>
                            <button type="button" onclick="location.href='changeFor.html'">Submit</button>
                        </div>
                    </div>
                </div>

            </section>

        </div>
</body>
<script>
    
</script>
</html>