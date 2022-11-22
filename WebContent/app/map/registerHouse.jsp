<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map/registration.css">
    <title>부동산 등록 | 서울 체크인</title>
</head>

<body>
    <!-- header -->
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>

    <!-- wrap koreanHome -->
    <div class="wrap koreanHome">
        <div class="container">
            <div class="bodyTilte">
                <h1 class="mainTitle">부동산 등록</h1>
                <h2 class="subTitle">부동산 <strong>등록</strong>을 합니다.</h2>
            </div>

            <section class="registerBody">
                <form class="registerForm">
                    <div class="registerStart">
                        <ul>
                            <!-- list 1 _건물명 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="건물명">건물명</label>
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
                                                                            <input class="one" type="text"
                                                                                placeholder="건물 명을 입력하세요."
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
                                            * 예시) 서초 힐스테이트 , 가람마을 3단지
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 2 _주소지 입력 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
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
                                                                            <input class="two" type="text"
                                                                                placeholder="도로명으로 입력해주세요."
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
                                            * 예시) 서울특별시 강남구 테헤란로 146
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 2 _전화번호 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
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
                                                                            <input class="three" type="text"
                                                                                placeholder="전화번호를 입력해주세요."
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
                                            * 예시) 012-1234-1234
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 4 _ 계약 방식 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="계약 방식">계약 방식</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper">
                                                        <div>
                                                            <input class="four trading" type="radio" id="KoreanTrading" name="tradingTypeSellecter" value="KoreanTrading">
                                                            <label for="KoreanTrading">매매</label>
                                                        </div>
                                                        <div>
                                                            <input class="four jeonse" type="radio" id="KoreanJeonse" name="tradingTypeSellecter" value="KoreanJeonse">
                                                            <label for="KoreanJeonse">전세</label>
                                                        </div>
                                                        <div>
                                                            <input class="four montly" type="radio" id="KoreanMontly" name="tradingTypeSellecter" value="KoreanMontly">
                                                            <label for="KoreanMontly">월세</label>
                                                        </div>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 한가지 유형만 선택하세요
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 5 _금액 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="금액">금액</label>
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
                                                                            <input class="five" type="text" placeholder="금액을 입력하세요."
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
                                            * 보증금의 경우에는 / 로 구분합니다. <br>
                                            * 예시) 50만원 / 1억5천만원
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 6 _ 건물 타입 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="건물 타입">건물 타입</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper">
                                                        <div>
                                                            <input class="six apart" type="radio" id=koreanApartment"
                                                                name="HomeTypeSellecter" value="koreanApartment">
                                                            <label for="koreanApartment">아파트</label>
                                                        </div>
                                                        <div>
                                                            <input class="six villa" type="radio" id="koreanVilla"
                                                                name="HomeTypeSellecter" value="koreanVilla">
                                                            <label for="koreanVilla">빌라</label>
                                                        </div>
                                                        <div>
                                                            <input class="six housing" type="radio" id="koreanHousing"
                                                                name="HomeTypeSellecter" value="koreanHousing">
                                                            <label for="koreanHousing">주택</label>
                                                        </div>

                                                        <div>
                                                            <input class="six officetels" type="radio" id="koreanOfficetels"
                                                                name="HomeTypeSellecter" value="koreanOfficetels">
                                                            <label for="koreanOfficetels">오피스텔</label>
                                                        </div>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * 한가지 유형만 선택하세요
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 7 _전용면적(평수)-->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="전용면적">전용면적</label>
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
                                                                            <input class="seven" type="text" placeholder="평수를 입력하세요."
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
                                            * 전용면적을 평수로 변환 후 입력하세요. <br>
                                            * 예시) 35평
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 8 _ 시공 년도 -->
                            <li style="padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="시공년도">시공년도</label>
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
                                                                            <input class="eight" type="text"
                                                                                placeholder="건물의 시공 년도를 입력하세요."
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
                                            * 예시) 03월 / 2006년
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 9 _ 건물 소개 -->
                            <li style="padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="건물 소개">건물 소개</label>
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
                                                                            <input class="nine"  type="text" placeholder="건물을 소개해주세요."
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
                                            * 예시 ) 역삼역 3번 출구 도보 3분 거리, 초역세권
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 10 _ 건물 사진_ 첨부파일  -->
                            <li style="margin-bottom: 20px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="첨부파일">첨부 파일</label>
                                    </div><!-- 
                                    <div class="filebtn">
                                        <input type="file" id="fileUp" name="fileUp" multiple=""
                                            onchange="fileChange(this)">
                                        <label for="fileUp"></label>
                                    </div> -->
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
                                        * 사진을 3장 업로드 해주세요.
                                    </div>
                                </div>
                            </li>
                            
                    </div>
                    </li>
                    </ul>
                    <button id="firstBtn" type="button" width="100%" disabled="" class="fsFbHp">영어로 입력하기</button>
                    <!-- onclick="alert('등록되었습니다.')" -->
                    
        </div>
        </form>
        </section>
    </div>
    </div><!-- /wrap koreanHome -->

    <!-- ================================================================================================== -->
    <!-- ================================================================================================== -->
    <!-- ================================================================================================== -->

    <!-- wrap englishHome -->
    <div class="wrap englishHome">
        <div class="container">
            <div class="bodyTilte">
                <h1 class="mainTitle">real estate registration</h1>
                <h2 class="subTitle">Real estate registration.</h2>
            </div>

            <section class="registerBody">
                <form class="registerForm">
                    <div class="registerStart">
                        <ul>
                            <!-- list 1 _건물명 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="building name">building name</label>
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
                                                                                placeholder="Please enter the building name."
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
                                            * Example) Seocho Hillstate, Garam Village 3 Complex
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 2 _주소지 입력 -->
                            <li>
                                <div class="formOne" style="row-gap: 0px;">
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
                                                                                placeholder="Please enter the road name."
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
                                            * Example) 146, Teheran-ro, Gangnam-gu, Seoul
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 2 _전화번호 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
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
                                                                                placeholder="Please enter your phone number."
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
                                            * Example) 012-1234-1234
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 4 _ 계약 방식 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="contract method">contract method</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper">
                                                        <div>
                                                            <input class="englishFour trading" type="radio" id="englishTrading" name="tradingTypeSellecterEn" value="englishTrading">
                                                            <label for="englishTrading">Trading</label>
                                                        </div>
                                                        <div>
                                                            <input class="englishFour jeonse" type="radio" id="englishJeonse" name="tradingTypeSellecterEn" value="englishJeonse">
                                                            <label for="englishJeonse">Jeonse</label>
                                                        </div>
                                                        <div>
                                                            <input class="englishFour montly" type="radio" id="englishMontly" name="tradingTypeSellecterEn" value="englishMontly">
                                                            <label for="englishMontly">Montly</label>
                                                        </div>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Choose only one type
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 5 _금액 -->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="amount">amount</label>
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
                                                                            <input class="englishFive" type="text"
                                                                                placeholder="Enter the amount."
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
                                            * Deposits are separated by /.<br>
                                            * Example) 500,000 won / 150 million won
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 6 _ 건물 타입 -->
                            <li style="margin-bottom: 0px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="building type">building type</label>
                                    </div>
                                    <div class="rowrow">
                                        <div class="ant-form-item-control-input">
                                            <div class="ant-form-item-control-input-content">
                                                <div class="ant-radio-group ant-radio-group-outline" id="newFreelancer">
                                                    <label class="ant-radio-wrapper"><!-- 
                                                        <span class="ant-radio"> -->
                                                            <div>
                                                                <input class="englishSix apart" type="radio" id=englishApartment"
                                                                    name="HomeTypeSellecterEn" value="englishApartment">
                                                                <label for="englishApartment">Apartment</label>
                                                            </div>

                                                            <div>
                                                                <input class="englishSix villa" type="radio" id="englishVilla"
                                                                    name="HomeTypeSellecterEn" value="englishVilla">
                                                                <label for="englishVilla">Villa</label>
                                                            </div>

                                                            <div>
                                                                <input class="englishSix housing" type="radio" id="englishHousing"
                                                                    name="HomeTypeSellecterEn" value="englishHousing">
                                                                <label for="englishHousing">Housing</label>
                                                            </div>

                                                            <div>
                                                                <input class="englishSix officetels" type="radio" id="englishOfficetels"
                                                                    name="HomeTypeSellecterEn" value="englishOfficetels">
                                                                <label for="englishOfficetels">Officetels</label>
                                                            </div>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="explain">
                                            * Choose only one type
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- list 7 _전용면적(평수)-->
                            <li>
                                <div class="formOne" style="padding-top: 20px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="dedicated area">dedicated area</label>
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
                                                                                placeholder="Please enter the floor space."
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
                                            * Convert the exclusive area to square meters and enter. <br>
                                            * Example) 35 pyeong
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 8 _ 시공 년도 -->
                            <li style="padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="Year of construction">Year of construction</label>
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
                                                                            <input class="englishEight" type="text"
                                                                                placeholder="Enter the year of construction of the building."
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
                                            * Example) March / 2006
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 9 _ 건물 소개 -->
                            <li style="padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="building introduction">building
                                            introduction</label>
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
                                                                            <input class="englishNine" type="text"
                                                                                placeholder="Please introduce the building."
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
                                            * Example) 3 minutes on foot from Exit 3 of Yeoksam Station, close to the
                                            nearest
                                            station
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- list 10 _ 건물 사진_ 첨부파일  -->
   <!--                          <li style="margin-bottom: 20px; padding-top: 20px;">
                                <div class="formOne" style="row-gap: 0px;">
                                    <div class="formItem">
                                        <label class="itemOne" title="attachment">attachment</label>
                                    </div>
                                    <div class="filebtn">
                                        <input type="file" id="fileUp" name="fileUp" multiple=""
                                            onchange="fileChange(this)">
                                        <label for="fileUp"></label>
                                    </div>
                                    <div class="explain">
                                        * Please upload 3 photos.
                                    </div>
                                </div>
                    </div>
                    </li> -->
                    </ul>
                    <button id="secondBtn" type="submit" width="100%" disabled="" class="fsFbHp"
                        onclick="alert('등록되었습니다.')">registration</button>
        </div>
        </form>
        </section>
    </div>
    </div>
    <!-- /wrap englishHome -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    // $(".fsFbHp").on("click", function () {
    //     $(".fsFbHp").removeClass(".changeColor");
    // });
    // /* 헤더 js strat*/

    // var $ul = $(".divdiv").next();
    // var $div = $(".ulul").prev();
    // var check = -1;


    // $div.on("click", function(){
    // $('.divdiv').click(function(){
    //     $ul.toggle(500);

    //     $("#head").css({
    //         height : "200px"

    //     })
    // $ul.hide(1000);
    // $ul.show(1000);
    // $ul.hide(2000);
    // $ul.show(2000);
    // $ul.toggle(2000);
    // $ul.fadeOut(2000);
    // $ul.fadeIn(2000);
    // $ul.fadeToggle(1000);
    // $ul.slideToggle(2000);
    // $("#hello").css("background","gold");


    // $('.divdiv').click(function () {
    //     check *= -1;
    //     $ul.toggle(200);


        // if 문으로 
        //     if (check >0){
        //         $("#head").css({
        //             height : "200px"
        //         })
        //     } else {
        //         $("#head").css({
        //             height : "50px"
        //     })
        // }

        // 삼항연산자 
    //     check > 0 ? $("#head").css({ height: "200px" }) : $("#head").css({ height: "50px" })



    // })




    /* header js end */

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


/* input */



function check(){
    let one = $('.one').val();
    let two = $('.two').val();
    let three = $('.three').val();
    let four = $("input[name=tradingTypeSellecter]:radio:checked").length;
    let five = $('.five').val();
    let six = $("input[name=HomeTypeSellecter]:radio:checked").length;
    let seven = $('.seven').val();
    let eight = $('.eight').val();
    let nine = $('.nine').val();
    let ten = $('.ten').val();

    if(one != "" && two != "" && three != "" && four == 1 && five != "" && six == 1 && seven != "" && eight != "" && nine != "" && ten != "") {
        $("#firstBtn").attr("disabled" , false);
    }
}

$("#firstBtn").on("click",function(){
    $(".wrap.koreanHome").css("display", "none");
    $(".wrap.englishHome").css("display", "block")
})

function submitInfo(){
    let $one = $('.englishOne').val();
    let $two = $('.englishTwo').val();
    let $three = $('.englishThree').val();
    let $four = $("input[name=tradingTypeSellecterEn]:radio:checked").length;
    let $five = $('.englishFive').val();
    let $six = $("input[name=HomeTypeSellecterEn]:radio:checked").length;
    let $seven = $('.englishSeven').val();
    let $eight = $('.englisHeight').val();
    let $nine = $('.englishNine').val();
    let $ten = $('.englishTen').val();

    if($one != "" && $two != "" && $three != "" && $four == 1 && $five != "" && $six == 1 && $seven != "" && $eight != "" && $nine != "" && $ten != "") {
        $("#secondBtn").attr("disabled" , false);
    }
}



</script>

</html>