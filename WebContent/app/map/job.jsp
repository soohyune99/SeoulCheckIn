<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map/registration.css">
    <title>일자리 등록 | 서울 체크인</title>
</head>

<body>
    <!-- header -->
    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>

    <!-- koreanJob -->
    <div class="wrap">
        <div class="container koreanJob">
            <div class="bodyTilte">
                <h1 class="mainTitle">일자리 등록</h1>
                <h2 class="subTitle">채용공고 등록하기</h2>
            </div>

            <section class="registerBody">
                <form class="registerForm">
                    <div class="registerStart">
                        <ul>
                            <!-- list 1 _회사명 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="회사명">회사명</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="one" type="text" placeholder="회사명을 입력하세요."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 예시) cj 올리브영, 스타벅스, 쿠팡
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 2_ 주소지 -->
                            <li>
                                <div class="formOne">
                                    <div class="formItem">
                                        <label class="itemOne" title="주소지">주소지</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="two" type="text" placeholder="주소지를 입력하세요."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 예시) 서울특별시 강남구 테헤란로 146, 400호
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 3 _전화번호 입력 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px; padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="전화번호">전화번호</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="three"  type="text"
                                                                                placeholder="연락 가능한 전화번호를 입력하세요."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 예시) 031-123-4567
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 3 _ 급여-->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="급여">급여</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper">
                                                        <div>
                                                            <label for="KoreanHourlyWage"><input class="four hour" type="radio" id="KoreanHourlyWage" name="moneyTypeSellecter" value="KoreanHourlyWage">시급</label>
                                                        </div>
                                                        <div>
                                                            <input class="four day"  type="radio" id="KoreanDaylyWage" name="moneyTypeSellecter" value="KoreanDaylyWage">
                                                            <label for="KoreanDaylyWage">일급</label>
                                                        </div>
                                                        <div>
                                                            <input class="four month"  type="radio" id="KoreanMontlyWage" name="moneyTypeSellecter" value="KoreanMontlyWage">
                                                            <label for="KoreanMontlyWage">월급</label>
                                                        </div>
                                                        <div>
                                                            <input class="four year"  type="radio" id="KoreanSalary" name="moneyTypeSellecter" value="KoreanSalary">
                                                            <label for="KoreanSalary">연봉</label>
                                                        </div>
                                                    </label>
                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                        style="width:100%; margin-top: 15px;">
                                                        <div class="selector">
                                                            <input class="five"  type="text" placeholder="금액을 입력하세요."
                                                                style="border: none; width:100%; outline: none;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 지급 방식 체크 후 급여를 입력하세요
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 4_ 회사 소개 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="회사 소개">회사 소개</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="six"  type="text"
                                                                                placeholder="회사에 대해 설명해주세요."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 예시) NIKE 고객센터 정규직채용 <br>
                                            * 업무 적응도에 따라 재택근무 <br>
                                            * 주 4일 근무(9:00-17:00)
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 5 _마감일 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="마감일">마감일</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="seven"  type="text" placeholder="마감일을 입력하세요."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 마감일과 시간을 입력하세요. <br>
                                            * 예시) 2022/12/27 18:00
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 8 _ 건물 사진_ 첨부파일  -->
                            <li style="margin-bottom: 20px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="첨부파일">첨부 파일</label>
                                    </div>
                                    <label for="attach">
                                        <div style="display: inline-block"></div>
                                    </label>
                                    <!-- input _ 타입: 파일 id attach _ 기본속성을 없애준다 -->
                                    <input class="eight"  type="file" id="attach" style='display:none;' onchange="checker()">
                                    <label for="attachTwo">
                                        <div style="display: inline-block"></div>
                                    </label>
                                    <!-- input _ 타입: 파일 id attach _ 기본속성을 없애준다 -->
                                    <input class="eight"  type="file" id="attachTwo" style='display:none;' onchange="checker()">
                                    <label for="attachThree">
                                        <div style="display: inline-block"></div>
                                    </label>
                                    <!-- input _ 타입: 파일 id attach _ 기본속성을 없애준다 -->
                                    <input class="eight"  type="file" id="attachThree" style='display:none;' onchange="checker()">
                                    <div class="explain">
                                        * 필수사항 : 사진 3장을 업로드해주세요.
                                    </div>
                                </div>
                    </div>
                    </li>
                    </ul>
                    <button id="firstBtn" type="button" width="100%" disabled="" class="fsFbHp" id="submitBTN">영어로 입력하기</button>
                    <!-- onclick="alert('등록되었습니다.')" -->
        </div>
        </form>
        </section>
    </div>
    </div>
    <!-- /koreanJob -->

    <!-- ================================================================================================== -->
    <!-- ================================================================================================== -->
    <!-- ================================================================================================== -->

    <!-- englishJob -->
    <div class="wrap englishJob" ><!-- style="display: none;" -->
        <div class="container">
            <div class="bodyTilte">
                <h1 class="mainTitle">job registration</h1>
                <h2 class="subTitle">Register for a job posting</h2>
            </div>

            <section class="registerBody">
                <form class="registerForm">
                    <div class="registerStart">
                        <ul>
                            <!-- list 1 _회사명 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="Company Name">Company Name</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="englishOne" type="text"
                                                                                placeholder="Please enter your company name."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Example) cj Olive Young, Starbucks, Coupang
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 2_ 주소지 -->
                            <li>
                                <div class="formOne">
                                    <div class="formItem">
                                        <label class="itemOne" title="address">address</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="englishTwo" type="text"
                                                                                placeholder="Please enter your address."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Example) Room 400, 146, Teheran-ro, Gangnam-gu, Seoul
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 3 _전화번호 입력 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px; padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="Phone number">Phone number</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="englishThree" type="text"
                                                                                placeholder="Please enter a phone number where you can be reached."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Example) 031-123-4567
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 3 _ 급여-->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="pay">pay</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper">
                                                        <div>
                                                            <input class="englishFour hour" type="radio" id=englishHourlyWage" name="moneyTypeSellecterEn" value="englishHourlyWage">
                                                            <label for="englishHourlyWage">hourly wage</label>
                                                          </div>
                                                      
                                                          <div>
                                                            <input class="englishFour day" type="radio" id="englishDaylyWage" name="moneyTypeSellecterEn" value="englishDaylyWage">
                                                            <label for="englishDaylyWage">daily wages</label>
                                                          </div>
                                                      
                                                          <div>
                                                            <input class="englishFour month" type="radio" id="englishMontlyWage" name="moneyTypeSellecterEn" value="englishMontlyWage">
                                                            <label for="englishMontlyWage">monthly wages</label>
                                                          </div>
                                                
                                                          <div>
                                                            <input class="englishFour year" type="radio" id="englishSalary" name="moneyTypeSellecterEn" value="englishSalary">
                                                            <label for="englishSalary">salary</label>
                                                          </div>
                                                    </label>
                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                        style="width:100%; margin-top: 15px;">
                                                        <div class="selector">
                                                            <input class="englishFive" type="text" placeholder="Enter the amount."
                                                                style="border: none; width:100%; outline: none;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Enter the salary after checking the payment method
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 4_ 회사 소개 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="About Us">About Us</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="englishSix" type="text"
                                                                                placeholder="Please describe your company."
                                                                                style="border: none; width:100%; outline: none;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Example) NIKE Customer Center full-time employment <br>
                                            * Work from home depending on work adaptability <br>
                                            * Work 4 days a week (9:00-17:00)
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 5 _마감일 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="deadline">deadline</label>
                                    </div>
                                    <div class="itemControl">
                                        <div class="control">
                                            <div class="inputContent">
                                                <span class="inputGroup">
                                                    <div class="rowItem" style="row-gap: 0px;">
                                                        <div class="rowrow">
                                                            <div class="ant-form-item-control-input">
                                                                <div class="ant-form-item-control-input-content">
                                                                    <div class="ant-select ant-select-lg ant-select-single ant-select-show-arrow"
                                                                        style="width:100%">
                                                                        <div class="selector">
                                                                            <input class="englishSeven" type="text"
                                                                                placeholder="Please enter a due date."
                                                                                style="border: none; width:100%; outline: none;" onchange="submitInfo()">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Enter the due date and time. <br>
                                            * Example) 2022/12/27 18:00
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 8 _ 건물 사진_ 첨부파일  -->
                            <!-- <li style="margin-bottom: 20px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="attachment">attachment</label>
                                    </div>

                                    <label for="attach">
                                        <div></div>
                                    </label> -->
                                    <!-- input _ 타입: 파일 id attach _ 기본속성을 없애준다 -->
<!--                                     <input type="file" id="attach" style='display:none;'>
                                    
                                    <div class="explain">
                                        * Required: Please upload 3 photos.
                                    </div>
                                </div> -->
                    </div>
                    </li>
                    </ul>
                    <button id="secondBtn" type="submit" width="100%" disabled="" class="fsFbHp"
                        onclick="alert('등록되었습니다.')">resistration</button>
        </div>
        </form>
        </section>
    </div>
    </div>
    <!--/ englishJob -->

</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    /* ---------------------------------------------------- */
    /* 헤더 js strat*/

    var $ul = $(".divdiv").next();
    var $div = $(".ulul").prev();
    var check = -1;

    $('.divdiv').click(function () {
        check *= -1;
        $ul.toggle(200);

        // 삼항연산자 
        check > 0 ? $("#head").css({ height: "200px" }) : $("#head").css({ height: "50px" })
    });

 /* 첨부파일 _ 이미지 변경 */
   	const file = document.querySelector("input#attach");
   	const fileTwo = document.querySelector("input#attachTwo");
   	const fileThree = document.querySelector("input#attachThree");
    const thumbnail = document.querySelector("label[for='attach'] div");
    const thumbnailTwo = document.querySelector("label[for='attachTwo'] div");
    const thumbnailThree = document.querySelector("label[for='attachThree'] div");
    
    file.addEventListener("change", function (e) {
        console.log(e);
        var reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = function (e) {
            let url = e.target.result;
            if (url.includes('image')) {
                thumbnail.style.backgroundImage = "url('" + url + "')";
            } else {
                thumbnail.style.backgroundImage = "url('img/attach.png')";
            }
        }
    });
    
    fileTwo.addEventListener("change", function (e) {
        console.log(e);
        var reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = function (e) {
            let url = e.target.result;
            if (url.includes('image')) {
                thumbnailTwo.style.backgroundImage = "url('" + url + "')";
            } else {
                thumbnailTwo.style.backgroundImage = "url('img/attach.png')";
            }
        }
    });
    
    fileThree.addEventListener("change", function (e) {
        console.log(e);
        var reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = function (e) {
            let url = e.target.result;
            if (url.includes('image')) {
                thumbnailThree.style.backgroundImage = "url('" + url + "')";
            } else {
                thumbnailThree.style.backgroundImage = "url('img/attach.png')";
            }
        }
    });
    
    
    function checker(){
    let one = $('.one').val();
    let two = $('.two').val();
    let three = $('.three').val();
    let four = $("input[name=moneyTypeSellecter]:radio:checked").length;
    let five = $('.five').val();
    let six = $(".six").val();
    let seven = $('.seven').val();
    let eight = $('.eight').val();

    if(one != "" && two != "" && three != "" && four == 1 && five != "" && six != "" && seven != "" && eight != "") {
        console.log("ㅁ라ㅓㄴ우라ㅓ두리ㅓ")
        $("#firstBtn").attr("disabled" , false);
    }
}

$("#firstBtn").on("click",function(){
    $(".container.koreanJob").css("display", "none");
    $(".wrap.englishJob").css("display", "block")
})

function submitInfo(){
    let $one = $('.englishOne').val();
    let $two = $('.englishTwo').val();
    let $three = $('.englishThree').val();
    let $four = $("input[name=moneyTypeSellecterEn]:radio:checked").length;
    let $five = $('.englishFive').val();
    let $six = $(".englishSix").val();
    let $seven = $('.englishSeven').val();

    if($one != "" && $two != "" && $three != "" && $four == 1 && $five != "" && $six != "" && $seven != "") {
        $("#secondBtn").attr("disabled" , false);
    }
}
</script>
</html>