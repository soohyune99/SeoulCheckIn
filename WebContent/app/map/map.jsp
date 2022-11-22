<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>서울은 처음이지 | 서울 체크인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map/seoulPage.css">
</head>
<body>
   <!-- header -->
   <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
   
   <main style="width:100%; height:100%;z-index:0">
      <!-- map 표현 API 구현부분 -->
      <div class="MAP-API" style="z-index:0">
         <%-- <img
            src="${pageContext.request.contextPath}/assets/images/map/api-Map.png"
            alt="API대신표현IMG"> --%>
            
            <div id="map" style="width:100%;height:100%;"></div>
            
            
      </div>

      <div class="map_cont_wrap">
         <div class="pc_cont">
            <!-- ================== 첫번째 탭 누른 부분 _ depth1 ==================  -->
            <div class="pc_depth1">
               <div class="map_menu">
                  <strong class="firstTimeSeoul">서울은 처음이지?</strong>
                  <div style="border-top: solid 0.5px #e6e6e6; margin-bottom: 14px;"></div>
                  <strong class="stit_area">서울특별시 강남구</strong>

                  <ul class="tab t1">
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickEnjoy()" id="theOne" class="icon1-1">즐길거리</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickBuilding()" id="theTwo" class="icon1-2">부동산</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickWork()" id="theThree" class="icon1-3">일자리</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickLandmark()" class="icon1-4">관광지</a></li>
                  </ul>
                  <ul class="tab t2">
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickExercise()" class="icon2-1 beforeIcon">체육시설</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickCafe()" class="icon2-2">카페</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickResturant()" class="icon2-3">맛집</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickSong()" class="icon2-4">노래방</a></li>
                     <li label="tour" class=" "><a href="javascript:;"
                        onclick="clickMovie()" class="icon2-5">영화관</a></li>
                  </ul>

               </div>

               <div class="menu_cont">
                  <div class="list_type1">
                     <ul id="conlistul">
                     </ul>
                  </div>
               </div>
            </div>
            <!--  ========= //depth1 =========  -->
         </div>
         <button class="layer_close" type="button" onclick="CloseTwoDepth()"
            id="closeButton1";>닫기</button>
         <button class="btn_fold" id="close_btn_fold" type="button">접기</button>
      </div>

      <!-- =========  depth2  ========= -->
      <div class="pc_depth2 view">

         <div class="detail_info">
            <!-- ========= 위에 배너 제작 공간 div.detail_img =========-->
            <!-- height : 267px -->
            <!-- width : 405px -->
            <div class="detail_img">
               <!-- 수업시간에 한 강사님 배너 -->
               <section class="container">
                  <!-- PREV 클릭 버튼 < -->
                  <div class="arrow swiper-button-prev" tabindex="0" role="button"
                     aria-label="Previous slide"></div>

                  <!-- 사진들을 묶은 banner -->
                  <div class="banner">
                     <!-- 사용할 사진들 -->
                     <div>
                        <img
                           src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=68ae8a87-cf91-4591-acb9-5799d144b4e6">
                     </div>
                     <div>
                        <img
                           src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=637aea7f-88a1-4374-b8b5-69e5d2b132e2">
                     </div>
                     <div>
                        <img
                           src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=85420450-68ea-4693-be6f-ec1b1e1035ef">
                     </div>
                  </div>

                  <!-- NEXT >  -->
                  <div class="arrow swiper-button-next" tabindex="0" role="button"
                     aria-label="Next slide"></div>
                  <!-- 몇장 중 몇장 -->
                  <div class="swiper-pagination swiper-pagination-fraction">
                     <span class="swiper-pagination-current">1</span> / <span
                        class="swiper-pagination-total">3</span>
                  </div>
                  <span class="swiper-notification" aria-li ve="assertive"
                     aria-atomic="true"></span>
               </section>
            </div>
            <!-- ========= /위에 배너 제작 공간 div.detail_img =========-->

            <div class="detail_data">
               <!-- 제목 부분 -->
               <div class="mark"></div>
               <em>일자리</em> <strong class="stit"> <a
                  href="javascript:goDetail('279e769c-0904-43ad-bd85-67b73da423a6');">호텔
                     카푸치노</a>
               </strong> <strong class="address">주소입력_부분입니다*주소입력_부분입니다 </strong>
            </div>
         </div>

         <div class="talk_wrap">
            <!-- 탭 구현 -->
            <ul class="tab">
               <!-- 탭1 _ 세부 정보 -->
               <li id="viewtalklist" onclick="changefirst()"><a
                  class="menutab">세부 정보 <!-- <span>(2)</span> -->
               </a>
                  <div id="first" class="talk">
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>회사명</p>
                           </div>
                           <div class="comment" id="detailName">
                              <p>호텔 카푸치노</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>주소지</p>
                           </div>
                           <div class="comment" id="detailAddress">
                              <p>주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다
                                 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다 주소입력_부분입니다</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>전화번호</p>
                           </div>
                           <div class="comment" id="detailPhone">
                              <p>02-1234-4567</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>급여</p>
                           </div>
                           <div class="comment" id="detailPay">
                              <p>연봉</p>
                              <p>3500만원</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>회사소개</p>
                           </div>
                           <div class="comment" id="detailIntroduce">
                              <p>회사소개부분입니다 회사소개 부분입니다</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                     <ul class="list_reply">
                        <li id="0853b4a1-735f-48a7-b047-e255c046b7c9">
                           <div class="profile">
                              <p>마감일</p>
                           </div>
                           <div class="comment" id="detailClosingDate">
                              <p>2022년 10월 30일</p>
                           </div>
                           <div class="r_btn"></div>
                        </li>
                     </ul>
                  </div></li>
               <!-- 탭2 _ 쪽지 보내기  -->
               <li id="addtalklist" onclick="changelast()"><a
                  class="menutab on">쪽지 보내기</a>
                  <div id="last" class="write">
                     <div class="form">
                        <form name="tform" id="tform">
                           <label class="blind" for="comment">궁금하신 사항을 보내주세요.</label>
                           <textarea name="" id="comment" rows=""
                              placeholder="궁금하신 사항을 보내주세요." cols=""></textarea>
                           </label><a href="javascript:;" class="btn_apply ContentComment on" onclick="messageTranslate()">번역</a>
                           </label><a href="javascript:;" class="btn_apply ContentComment on" onclick="sendMessage()">보내기</a>
                     </div>
                     </form>
                  </div>
         </div>
         </li>
         </ul>
         <!-- /탭 구현 -->
      </div>
      </div>

      </div>

      <!-- =========  /depth2  ========= -->
      <div class="map_btn">
         <!-- <button type="button" class="location" onclick="myLocation();" style="z-index:1">현재위치이동</button> -->
         <button type="button" class="setup" style="display: none;"
            onclick="">여행지도 설정을 바꿀 수 있어요.</button>
         <button type="button" class="refresh" onclick="panTo();" style="z-index:1">현재
            지도에서 검색</button>
      </div>
   </main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/map/seoulPage.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3116cba29c96217e8947d5b51e07ce81"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.498004414546934, 127.02770621963765), // 지도의 중심좌표 
        level: 3 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 즐길거리 마커가 표시될 좌표 배열입니다

let enjoyOne = new kakao.maps.LatLng(37.499590490909185, 127.0263723554437);
let enjoyTwo = new kakao.maps.LatLng(37.499427948430814, 127.02794423197847);
let enjoyThree = new kakao.maps.LatLng(37.498553760499505, 127.02882598822454);
let enjoyFour = new kakao.maps.LatLng(37.497625593121384, 127.02935713582038);
let enjoyFive = new kakao.maps.LatLng(37.49646391248451, 127.02675574250912);
let enjoySix = new kakao.maps.LatLng(37.49629291770947, 127.02587362608637);
let enjoySeven = new kakao.maps.LatLng(37.49754540521486, 127.02546694890695);

var enjoyPositions = [ 
   enjoyOne,
   enjoyTwo,
   enjoyThree,
   enjoyFour,
   enjoyFive,
   enjoySix,
   enjoySeven 
];

// 부동산 마커가 표시될 좌표 배열입니다

    let buildingOne = new kakao.maps.LatLng(37.497535461505684, 127.02948149502778);
    let buildingTwo = new kakao.maps.LatLng(37.49671536281186, 127.03020491448352);
    let buildingThree = new kakao.maps.LatLng(37.496201943633714, 127.02959405469642);
    let buildingFour = new kakao.maps.LatLng(37.49640072567703, 127.02726459882308);
    let buildingFive = new kakao.maps.LatLng(37.49640098874988, 127.02609983175294);
    let buildingSix = new kakao.maps.LatLng(37.49932849491523, 127.02935780247945);
    let buildingSeven = new kakao.maps.LatLng(37.49996818951873, 127.02943721562295);

var buildingPositions = [
   buildingOne,
   buildingTwo,
   buildingThree,
   buildingFour,
   buildingFive,
   buildingSix,
   buildingSeven
];

// 일거리 마커가 표시될 좌표 배열입니다

    let workOne = new kakao.maps.LatLng(37.49966168796031, 127.03007039430118);
    let workTwo = new kakao.maps.LatLng(37.499463762912974, 127.0288828824399);
    let workThree = new kakao.maps.LatLng(37.49896834100913, 127.02833986892401);
    let workFour = new kakao.maps.LatLng(37.49893267508434, 127.02673400572665);
    let workFive = new kakao.maps.LatLng(37.49872543597439, 127.02676785815386);
    let workSix = new kakao.maps.LatLng(37.49813096097184, 127.02591949495914);
    let workSeven = new kakao.maps.LatLng(37.497680616783086, 127.02518427952202);     

var workPositions = [
   workOne,
   workTwo,
   workThree,
   workFour,
   workFive,
   workSix,
   workSeven
];

//관광지
   let landmarkOne = new kakao.maps.LatLng(37.49976168796031, 127.03007039430118);
   let landmarkTwo = new kakao.maps.LatLng(37.499563762912974, 127.0288828824399);
   let landmarkThree = new kakao.maps.LatLng(37.49906834100913, 127.02833986892401);
   let landmarkFour = new kakao.maps.LatLng(37.49903267508434, 127.02673400572665);
   let landmarkFive = new kakao.maps.LatLng(37.49882543597439, 127.02676785815386);
   let landmarkSix = new kakao.maps.LatLng(37.49823096097184, 127.02591949495914);
   let landmarkSeven = new kakao.maps.LatLng(37.497780616783086, 127.02518427952202);     
   
   var landmarkPositions = [
      landmarkOne,
      landmarkTwo,
      landmarkThree,
      landmarkFour,
      landmarkFive,
      landmarkSix,
      landmarkSeven
   ];    

   //체육시설
   let exerciseOne = new kakao.maps.LatLng(37.498908028716286, 127.0261473530882);
       let exerciseTwo = new kakao.maps.LatLng(37.49771536281186, 127.03120491448352);
       let exerciseThree = new kakao.maps.LatLng(37.49829961073887, 127.02720450490041);
       let exerciseFour = new kakao.maps.LatLng(37.497776644986615, 127.02881579446058);
       let exerciseFive = new kakao.maps.LatLng(37.49824928523252, 127.03036526766343);
       let exerciseSix = new kakao.maps.LatLng(37.499015318654024, 127.029664431431);
       let exerciseSeven = new kakao.maps.LatLng(37.49945002066573, 127.02979748272041);

   var exercisePositions = [
      exerciseOne,
      exerciseTwo,
      exerciseThree,
      exerciseFour,
      exerciseFive,
      exerciseSix,
      exerciseSeven
   ];

   //카페
   let cafeOne = new kakao.maps.LatLng(37.50009709876457, 127.02728856070887);
    let cafeTwo = new kakao.maps.LatLng(37.5001488297349, 127.02761936732382);
    let cafeThree = new kakao.maps.LatLng(37.499418937032075, 127.02794988305743);
    let cafeFour = new kakao.maps.LatLng(37.49833797889445, 127.02687515260668);
    let cafeFive = new kakao.maps.LatLng(37.49635578593004, 127.02678114786119);
    let cafeSix = new kakao.maps.LatLng(37.49767537323036, 127.02843833064796);
    let cafeSeven = new kakao.maps.LatLng(37.497528788134666, 127.02914223473188);

var cafePositions = [
   cafeOne,
   cafeTwo,
   cafeThree,
   cafeFour,
   cafeFive,
   cafeSix,
   cafeSeven
];
   
   
   //맛집
   let resturantOne = new kakao.maps.LatLng(37.49664129817143, 127.02913623563269);
    let resturantTwo = new kakao.maps.LatLng(37.497041944337724, 127.03033509394818);
    let resturantThree = new kakao.maps.LatLng(37.49831581479236, 127.0252382092029);
    let resturantFour = new kakao.maps.LatLng(37.49801638083544, 127.02452283551182);
    let resturantFive = new kakao.maps.LatLng(37.498462127732665, 127.02570474355424);
    let resturantSix = new kakao.maps.LatLng(37.5019689865967, 127.02708002066397);
    let resturantSeven = new kakao.maps.LatLng(37.501841102584464, 127.0247587530673);

var resturantPositions = [
   resturantOne,
   resturantTwo,
   resturantThree,
   resturantFour,
   resturantFive,
   resturantSix,
   resturantSeven
];
   
   //노래방
   let songOne = new kakao.maps.LatLng(37.500910700258096, 127.02529562806772);
    let songTwo = new kakao.maps.LatLng(37.50114229886268, 127.02714474962464);
    let songThree = new kakao.maps.LatLng(37.50024390781838, 127.02551875585276);
    let songFour = new kakao.maps.LatLng(37.4998107878223, 127.02831474220929);
    let songFive = new kakao.maps.LatLng(37.49589834099178, 127.02758104979603);
    let songSix = new kakao.maps.LatLng(37.49612516511881, 127.03035451278005);
    let songSeven = new kakao.maps.LatLng(37.49680530796288, 127.03080712726737);

var songPositions = [
   songOne,
   songTwo,
   songThree,
   songFour,
   songFive,
   songSix,
   songSeven
];
   
   //영화관
   
   let movieOne = new kakao.maps.LatLng(37.497948396337506, 127.02641983972916);
    let movieTwo = new kakao.maps.LatLng(37.50037199443015, 127.02690132688514);
    let movieThree = new kakao.maps.LatLng(37.501642530665606, 127.02637873177035);
    let movieFour = new kakao.maps.LatLng(37.49575377733632, 127.02925462820627);
    let movieFive = new kakao.maps.LatLng(37.49790700355562, 127.02999074003548);
    let movieSix = new kakao.maps.LatLng(37.499272198876014, 127.02932385740363);
    let movieSeven = new kakao.maps.LatLng(37.49944882163737, 127.02527817160433);

var moviePositions = [
   movieOne,
   movieTwo,
   movieThree,
   movieFour,
   movieFive,
   movieSix,
   movieSeven
];
   
   
   
   
var markerImageSrc = '${pageContext.request.contextPath}/assets/images/map/newAfter.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
   enjoyMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
    buildingMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
    workMarkers = [], // 주차장 마커 객체를 가지고 있을 배열입니다
    landmarkMarkers = [],
    exerciseMarkers = [],
    cafeMarkers = [],
    resturantMarkers = [],
    songMarkers = [],
    movieMarkers = [];

    
createEnjoyMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
createBuildingMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다
createWorkMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다
createLandmarkMarkers();
createExerciseMarkers();
createCafeMarkers();
createResturantMarkers();
createSongMarkers();
createMovieMarkers();



// 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
function createMarkerImage(src, size, options) {
    var markerImage = new kakao.maps.MarkerImage(src, size, options);
    return markerImage;            
}

// 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
function createMarker(position, image) {
    var marker = new kakao.maps.Marker({
        position: position,
        image: image
    });
    
    return marker;  
}   
   
// 즐길거리 마커를 생성하고 즐길거리 마커 배열에 추가하는 함수입니다
function createEnjoyMarkers() {
    
    for (var i = 0; i < enjoyPositions.length; i++) {  
        
        var imageSize = new kakao.maps.Size(99, 30),
            imageOptions = {  
                spriteOrigin: new kakao.maps.Point(0, 180),    
                spriteSize: new kakao.maps.Size(40, 300)  
            };     
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(enjoyPositions[i], markerImage);  
       
        //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+1) + `" class="enjoy" onclick="send(this)">` + contentimgTag + `</a>`;
        
        // 생성된 마커를 즐길거리 마커 배열에 추가합니다
        enjoyMarkers.push(marker);
    }     
}

// 즐길거리 마커들의 지도 표시 여부를 설정하는 함수입니다

        

function setEnjoyMarkers(map) {
   
    for (var i = 0; i < enjoyMarkers.length; i++) {  
       enjoyMarkers[i].setMap(map);
    }        
}

// 부동산 마커를 생성하고 부동산 마커 배열에 추가하는 함수입니다
function createBuildingMarkers() {
    for (var i = 0; i < buildingPositions.length; i++) {
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 90),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };           
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(buildingPositions[i], markerImage);  

      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+8) + `" class="building" onclick="send(this)">` + contentimgTag + `</a>`;
        // 생성된 마커를 부동산 마커 배열에 추가합니다
       buildingMarkers.push(marker);    
    }        
}

// 부동산 마커들의 지도 표시 여부를 설정하는 함수입니다
function setBuildingMarkers(map) {        
    for (var i = 0; i < buildingMarkers.length; i++) {  
        buildingMarkers[i].setMap(map);
    }        
}

// 일거리 마커를 생성하고 일거리 마커 배열에 추가하는 함수입니다
function createWorkMarkers() {
    for (var i = 0; i < workPositions.length; i++) {
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 240),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };           
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(workPositions[i], markerImage);  

      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+15) + `" class="work" onclick="send(this)">` + contentimgTag + `</a>`;
        
        // 생성된 마커를 일거리 마커 배열에 추가합니다
        workMarkers.push(marker);        
    }                
}

// 일거리 마커들의 지도 표시 여부를 설정하는 함수입니다
function setWorkMarkers(map) {        
    for (var i = 0; i < workMarkers.length; i++) {  
        workMarkers[i].setMap(map);
    }        
}

//관광지 마커를 생성하고 관광지 마커 배열에 추가하는 함수입니다
function createLandmarkMarkers() {
    
    for (var i = 0; i < landmarkPositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };      
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(landmarkPositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+22) + `" class="landmark" onclick="send(this)">` + contentimgTag + `</a>`;
        // 생성된 마커를 관광지 마커 배열에 추가합니다
        landmarkMarkers.push(marker);
    }     
}
// 관광지 마커들의 지도 표시 여부를 설정하는 함수입니다
function setLandmarkMarkers(map) {        
    for (var i = 0; i < landmarkMarkers.length; i++) {  
       landmarkMarkers[i].setMap(map);
    }        
}

//체육시설
function createExerciseMarkers() {
    
    for (var i = 0; i < exercisePositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 150),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };          
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(exercisePositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+29) + `" class="exercise" onclick="send(this)">` + contentimgTag + `</a>`;
        
        exerciseMarkers.push(marker);
    }     
}
function setExerciseMarkers(map) {        
    for (var i = 0; i < exerciseMarkers.length; i++) {  
       exerciseMarkers[i].setMap(map);
    }        
}

//카페
function createCafeMarkers() {
    
    for (var i = 0; i < cafePositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 60),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };         
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(cafePositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+36) + `" class="cafe" onclick="send(this)">` + contentimgTag + `</a>`;
        
        cafeMarkers.push(marker);
    }     
}
function setCafeMarkers(map) {        
    for (var i = 0; i < cafeMarkers.length; i++) {  
       cafeMarkers[i].setMap(map);
    }        
}
//맛집
function createResturantMarkers() {
    
    for (var i = 0; i < resturantPositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 30),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };          
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(resturantPositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+43) + `" class="resturant" onclick="send(this)">` + contentimgTag + `</a>`;
        
        resturantMarkers.push(marker);
    }     
}
function setResturantMarkers(map) {        
    for (var i = 0; i < resturantMarkers.length; i++) {  
       resturantMarkers[i].setMap(map);
    }        
}
//노래방
function createSongMarkers() {
    
    for (var i = 0; i < songPositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 120),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };         
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(songPositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+50) + `" class="song" onclick="send(this)">` + contentimgTag + `</a>`;
        
        songMarkers.push(marker);
    }     
}
function setSongMarkers(map) {        
    for (var i = 0; i < songMarkers.length; i++) {  
       songMarkers[i].setMap(map);
    }        
}
//영화관
function createMovieMarkers() {
    
    for (var i = 0; i < moviePositions.length; i++) {  
        
       var imageSize = new kakao.maps.Size(99, 30),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 210),    
            spriteSize: new kakao.maps.Size(40, 300)  
        };        
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(moviePositions[i], markerImage);  
        
      //마커 이미지를 a 태그로 감싼다
        var contentimgTag = marker.a.innerHTML;

        marker.a.innerHTML = `<a href="javascript:void(0);` + (i+57) + `" class="movie" onclick="send(this)">` + contentimgTag + `</a>`;
        
        movieMarkers.push(marker);
    }     
}
function setMovieMarkers(map) {        
    for (var i = 0; i < movieMarkers.length; i++) {  
       movieMarkers[i].setMap(map);
    }        
}

//지도 핀 안보이게 설정
setEnjoyMarkers(null);
setBuildingMarkers(null);
setWorkMarkers(null);
setLandmarkMarkers(null);
setExerciseMarkers(null);
setCafeMarkers(null);
setResturantMarkers(null);
setSongMarkers(null);
setMovieMarkers(null);

//카테고리 클릭 여부를 저장할 flag
let enjoyCheck = false;
let buildingCheck = false;
let workCheck = false;
let landmarkCheck = false;
let exerciseCheck = false;
let cafeCheck = false;
let resturantCheck = false;
let songCheck = false;
let movieCheck = false;

//즐길거리 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
function clickEnjoy(){
   enjoyCheck = !enjoyCheck;
   if(enjoyCheck){
   setEnjoyMarkers(map);
   
   let mapClassification = $(".enjoy").attr("class");
    
    $.ajax({
       url:"/map/mapfilter.mp",
       data:{mapClassification: mapClassification},
       dataType: "json",
       success: showList
    })
   }else{
      setEnjoyMarkers(null);
      $("#conlistul").find(".enjoy").remove();
      
   }
}
//부동산 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
function clickBuilding(){
   buildingCheck = !buildingCheck;
   if(buildingCheck){
      setBuildingMarkers(map);
      let mapClassification = $(".building").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
      
   }else{
      setBuildingMarkers(null);
      $("#conlistul").find(".building").remove();
   }
}
//일자리 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
function clickWork(){
   workCheck = !workCheck;
   if(workCheck){
      setWorkMarkers(map);
      let mapClassification = $(".work").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setWorkMarkers(null);
      $("#conlistul").find(".work").remove();
   }
}
//관광지 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickLandmark(){
   landmarkCheck = !landmarkCheck;
   if(landmarkCheck){
      setLandmarkMarkers(map);
      let mapClassification = $(".landmark").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setLandmarkMarkers(null);
      $("#conlistul").find(".landmark").remove();
   }
}
//체육시설 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickExercise(){
    exerciseCheck = !exerciseCheck;
   if(exerciseCheck){
      setExerciseMarkers(map);
      let mapClassification = $(".exercise").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setExerciseMarkers(null);
      $("#conlistul").find(".exercise").remove();
   }
}
//카페 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickCafe(){
    cafeCheck = !cafeCheck;
   if(cafeCheck){
      setCafeMarkers(map);
      let mapClassification = $(".cafe").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setCafeMarkers(null);
      $("#conlistul").find(".cafe").remove();
   }
}
//맛집 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickResturant(){
    resturantCheck = !resturantCheck;
   if(resturantCheck){
      setResturantMarkers(map);
      let mapClassification = $(".resturant").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setResturantMarkers(null);
      $("#conlistul").find(".resturant").remove();
   }
}
//노래방 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickSong(){
    songCheck = !songCheck;
   if(songCheck){
      setSongMarkers(map);
      let mapClassification = $(".song").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setSongMarkers(null);
      $("#conlistul").find(".song").remove();
   }
}
//영화관 카테고리 클릭 시 핀 나타나고, 왼쪽 탭1에 해당 카테고리 전체 리스트 나오는게 하는 함수
 function clickMovie(){
    movieCheck = !movieCheck;
   if(movieCheck){
      setMovieMarkers(map);
      let mapClassification = $(".movie").attr("class");
       
       $.ajax({
          url:"/map/mapfilter.mp",
          data:{mapClassification: mapClassification},
          dataType: "json",
          success: showList
       })
   }else{
      setMovieMarkers(null);
      $("#conlistul").find(".movie").remove();
   }
}
 
 /* html말고 각 세트를 array로 담아서 append. 없앨 때는 remove */
 //각 카테고리 클릭 시 전체 리스트 조회해서 뿌리는 showList 함수
 function showList(enjoys) {
    console.log(enjoys)
    var arText = [];
   if(enjoys.length > 0){
      let text = "";
      enjoys.forEach(enjoy=>{
         text += `<li class=` + enjoy.mapClassification + `>`;
         text += `<a href="javascript:;" style="background-image: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=1ceb891b-05fc-4fc3-ae33-815789754f45)"></a>`;
         text += `<div class="info">`;
         text += `<div class="tit">`;
         text += `<a href="javascript:;" id=` +  enjoy.mapNumber  +  `>`+ enjoy.mapName +`</a>`
         text += `<span>`+ enjoy.mapClassification  + `</span>`
         text += `</div>`;
         text += `<em>`+ enjoy.mapAddress +`</em>`;
         text += `</div>`;
         text += `</li>`;
      });
         arText.push(text);
      $("#conlistul").prepend(arText);
   }
}
 //전체 리스트 중 특정 정보 클릭 시 우측에 탭2 나오면서(seoulPage.js에 있음) 일치하는 정보 뿌리는 클릭 이벤트
let businessMail = "";
 $("#conlistul").on('click', 'li',function(){
    var $left = $("#close_btn_fold").css('margin-left');
    
    $.ajax({
       url: "/map/mapdetail.mp",
       data: {mapNumber: $($(this).find("a")[1]).attr("id")},
       dataType: "json",
       success: function (lists) {
         let text = "";
         lists.forEach(list=>{
          businessMail = list.memberNumber;
            text += `<div class="mark"></div>`;
            text += `<em>` + list.mapClassification + `</em>`;
            text += `<strong class="stit">`
            text += `<a href ="javascript:void(0)">` + list.mapName + `</a>`
            text += `</strong>`
            text += `<strong class="address">` + list.mapAddress + `</strong>`
         })
         $(".detail_data").html(text);
         
         $("#detailName").html(`<p>` + lists[0].mapName + `</p>`)
         $("#detailAddress").html(`<p>` + lists[0].mapAddress + `</p>`)
         $("#detailPhone").html(`<p>` + lists[0].mapPhone + `</p>`)
         $("#detailPay").html(`<p>` + lists[0].mapJobPayType + `</p><p>` + lists[0].mapPrice +`</p>`)
         $("#detailIntroduce").html(`<p>` + lists[0].mapIntroduce + `</p>`)
         $("#detailClosingDate").html(`<p>` + lists[0].mapJobClosingDate + `</p>`)
      }
    })
       check1 *= -1;
       check2 *= -1;
       foldDetail();
       
       if($left == "-810px") {
            $(".pc_depth1").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").animate({marginLeft: '0px'}, 500);
            $(".pc_depth2").animate({marginLeft: '0px'}, 500);
            $(".layer_close").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").css('background-position-y', '0px');
            check1 *= -1;
            check2 *= -1;
       }
       
   });
 
 //지도에 나타난 핀 클릭 시 일치하는 정보를 탭2에 뿌리는 함수. 핀에 onclick 속성에서 실행됨
function send(category) {
	 console.log($("#conlistul").find(`#` + $(category).attr("href").substring(19))[0]);
   $("#conlistul").find(`#` + $(category).attr("href").substring(19))[0].click();
}
//현재 좌표로 이동하는 함수
function panTo() {
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(37.498004414546934, 127.02770621963765);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
}        
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.BOTTOMRIGHT);

//쪽지 내용 번역하는 함수
function messageTranslate() {
   let $message = $("textarea#comment").val();
   
   $.ajax({
      url: "/message/messagetranslate.ms",
      data:{messageContent: $message},
      success: function(content){
         $("textarea#comment").val(content)
      }
   });
}

//쪽지 보내는 함수
function sendMessage(){
   $.ajax({
      url:"/message/mapmsg.ms",
      data:{businessMail: businessMail, loginedMail: 2, content: $("textarea#comment").val()},
      success: function () {
         $("textarea#comment").val("");
      }
   })
}

</script>
</html>