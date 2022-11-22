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

            <section>
                <div class="withdrawal">
                    <div class="block">
                        <h3>Precautions for withdrawal</h3>
                        <ul>
                            <li>Upon withdrawal, you will be able to save your resume, <strong>All information is permanently deleted and cannot be recovered again. </strong></li>
                            <li>If you want to save your resume, before you leave, <a href="">Resume Management Page</a>please download it from .</li>
                            <li>Recommendation information already submitted to another account is considered to be owned by the recommended account <strong>It is not automatically deleted, and it cannot be modified or deleted when you leave.</strong></li>
                            <li>If you wish to modify or delete the submitted recommendation, before withdrawal, <a href="/referral">comment page</a>please modify or delete the recommendation from .</li>
                            <li>To settle hiring fees for companies and prevent fraudulent use, <strong>the details of support for the company are stored for up to five years after withdrawal in accordance with relevant laws and regulations.</strong></li>
                            <li><strong>If you withdraw from Wanted membership, you will not be able to receive recommendations and employment compensation.</strong> If you have any compensation, please complete all procedures before withdrawal.</li>
                            <li>If you withdraw from the membership, you will be able to receive <strong>points will not be automatically refunded, nor will they be restored upon re-subscription.</strong></li>
                            <li>Before you left, <strong>applications for training and event participation are not automatically canceled.</strong> If you want to cancel, please request it separately before withdrawal.</li>
                            <li>If you have an account registered with corporate services, <strong>corporate service access is also deleted at the same time. </strong></li>
                            <li>If you agree with the above and want to withdraw, please click the "Agreed" button below.</li>
                        </ul>
                        <button type="button" onclick="alert('Finsh')">Agree</button>
                    </div>
                </div>
            </section>

        </div>


