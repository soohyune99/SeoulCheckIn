
/* topbutton js start */

let $top = $("#goTop").click(function(){
    $("html,body").animate({
        scrollTop:0
    },300);
});
/* topbutton js end */





/* 헤더 js strat*/

var $ul = $(".divdiv").next();
var $div = $(".ulul").prev();
var check = -1;

    $('.divdiv').click(function(){
        check *= -1;

    // 삼항연산자 
    check > 0 ? $("#head").css({height : "200px"}) : $("#head").css({height : "50px"})

})


/* header js end */
 
 
 
 
 
/* 슬라이드 배너 스크립트 */


 function autoSlide(){
    // console.log(banner);
    // banner의 style에 transition을 transform 0.5s로 준다
    banner.style.transition = "transform 0.5s"
    // 마지막 슬라이드일 때
    // 6번 뒤에 1번 배치시킨다.
    // 6번에서 1번으로 슬라이드 진행
    // 0s를 줘서 원래 1번 위치로 이동(슬라이드 효과는 안보임)
    // 실행될 때마다 count 1씩 증가
    count ++;
    if(count == 6){
        //count가 6이라는 건 마지막 사진에서 처음으로 이동된 것
        // 바로 이전 버튼의 배경색을 원래색으로 변경
        buttons[count - 1].style.backgroundColor = "#f0f0f0";
        // append된 firstDiv가 보이게하는 transform
        banner.style.transform = "translate(-" + 1084 * (count + 1) + "px)";
        // 0.5초 뒤에 야비하게 돌아가도록 하는 setTimeout
        setTimeout(function(){
            banner.style.transition = "transform 0s"
            banner.style.transform = "translate(- " + 1084 + "px)"; /* 수정부탁드령 */
        }, 500);
        //돌아왔으니 count 초기화
        count = 0;
        // 현재 버튼색 변경
        buttons[count].style.backgroundColor = "black";
    }else{

        banner.style.transform = "translate(-" + 1084 * (count + 1) + "px)";
    }
    temp = buttons[count];
}

// 무한 반복
const banner = document.querySelector("div.banner");
// .buttons안에 button이 여러 개라 querySelectorAll로 가져와서 buttons에 저장
const buttons = document.querySelectorAll("div.buttons button");
var count = 0, temp = buttons[count];
// img 태그 추가할 div를 생성하는 것
let firstDiv = document.createElement("div");
let lastDiv = document.createElement("div");
//img 태그 추가하고 banner 안 마지막에 붙임
firstDiv.innerHTML = '<img src="/assets/images/main/capture1.png">';
banner.appendChild(firstDiv);
//img 태그 추가하고 banner 안 document.querySelector("div.banner div") 바로 앞에 붙임
lastDiv.innerHTML = '<img src="/assets/images/main/banner3.png">';
banner.insertBefore(lastDiv, document.querySelector("div.banner div"));

buttons[count].style.backgroundColor = "black";
// 1번째 사진부터 시작하기 위해 당겨줌
banner.style.transform = "translate(-1084px)";

//4초마다 함수 실행
var inter = setInterval(autoSlide, 4000);


// 이전 버튼, 다음 버튼 구현
const arrows = document.querySelectorAll("div.arrow");
var arrowButtonCheck = true;
arrows.forEach(arrow => {
arrow.addEventListener("click", function(){
    if(arrowButtonCheck){
        arrowButtonCheck = false;
        //타이머 초기화
        clearInterval(inter);
        banner.style.transition = "transform 0.5s"
        //arrow가 2개라 배열로 가져옴
        let arrowType = arrow.classList[2];
        if(arrowType == 'prev'){
            count--;
            // 시작하자마자 이전버튼 누른 경우
            if(count == -1){
                banner.style.transform = "translate(0vw)";
                setTimeout(function(){
                    banner.style.transition = "transform 0s"
                    banner.style.transform = "translate(-1084px)";
                }, 500);
                // 마지막 이미지 보여주는 것
                count = 5;
            }else{
                banner.style.transform = "translate(-" +  1084 * (count + 1) + "px)";
            }
        }else{
            count++;
            // 마지막 사진에서 다음버튼 누른 경우
            if(count == 6) {
                banner.style.transform = "translate(-" + 1084 * (count + 1) + "px)";
                setTimeout(function(){
                    banner.style.transition = "transform 0s"
                    banner.style.transform = "translate(-1084px)";
                }, 500);
                count = 0;
            }else{
                banner.style.transform = "translate(-" + 1084  * (count + 1) + "px)";
            }
        }
        temp.style.backgroundColor = "#f0f0f0";
        temp = buttons[count];
        buttons[count].style.backgroundColor = "black";
        inter = setInterval(autoSlide, 4000);
        setTimeout(function(){
            arrowButtonCheck = true;
        }, 500);
    };
});
});

/* 슬라이드배너 스크립트 끝 */


/* subslide banner start */

 // 무한 반복
 const banner1 = document.querySelector("div.first");
 const banner2 = document.querySelector("div.second");
 const banner3 = document.querySelector("div.third");
 // const buttons = document.querySelectorAll("div.buttons button");
 var count1 = 0, count2 = 0, count3 = 0;


 // 이전 버튼, 다음 버튼 구현
 const firstArrows = document.querySelectorAll("button.firstButton");
 var arrowButtonCheck = true;
 firstArrows.forEach(arrow => {
     arrow.addEventListener("click", function () {
         if (arrowButtonCheck) {
             arrowButtonCheck = false;
             banner1.style.transition = "transform 0.5s"
             // arrowType을 위에서 (left,right)와(prev,next) 두가지를 적었기 때문에 둘중 하나 알아서 쓰라고 2칸 배열
             let arrowType = arrow.classList[2];
             // arrowType이 이전 버튼일때
             if (arrowType == 'prev') {
                 count1--;
                 // 만약 첫번쨰 이미지 배너에서 이전버튼을 눌렀을때
                 if (count1 <= 0) {
                     document.querySelector(".firstButton.prev").disabled = true;
                     // $(".firstButton").prop("disable", true);
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 5;
                     banner1.style.transform = "translate(-" + 1080 * count1 + "px)";
                 } else {
                     // $(".firstButton").prop("disable", false);
                     document.querySelector(".firstButton.next").disabled = false;
                     banner1.style.transform = "translate(-" + 1080 * count1 + "px)";
                 }
                 // arrowType가 다음 버튼일때
             } else {
                 count1++;
                 // 만약 가상 첫번째 배너
                 if (count1 >= 5) {

                     // $(".firstButton").prop("disable", true);
                     document.querySelector(".firstButton.next").disabled = true;
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 0;
                     banner1.style.transform = "translate(-" + 1080 * count1 + "px)";
                 } else {
                     document.querySelector(".firstButton.prev").disabled = false;
                     banner1.style.transform = "translate(-" + 1080 * count1 + "px)";
                 }
             }
             setTimeout(function () {
                 arrowButtonCheck = true;
             }, 500);
         }
     });
 });

 const secondArrows = document.querySelectorAll("button.secondBtn");
 var arrowButtonCheck = true;
 secondArrows.forEach(arrow => {
     arrow.addEventListener("click", function () {
         if (arrowButtonCheck) {
             arrowButtonCheck = false;
             banner2.style.transition = "transform 0.5s"
             // arrowType을 위에서 (left,right)와(prev,next) 두가지를 적었기 때문에 둘중 하나 알아서 쓰라고 2칸 배열
             let arrowType = arrow.classList[2];
             // arrowType이 이전 버튼일때
             if (arrowType == 'prev') {
                 count2--;
                 // 만약 첫번쨰 이미지 배너에서 이전버튼을 눌렀을때
                 if (count2 <= 0) {
                     document.querySelector(".secondBtn.prev").disabled = true;
                     // $(".firstButton").prop("disable", true);
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 5;
                     banner2.style.transform = "translate(-" + 1080 * count2 + "px)";
                 } else {
                     // $(".firstButton").prop("disable", false);
                     document.querySelector(".secondBtn.next").disabled = false;
                     banner2.style.transform = "translate(-" + 1080 * count2 + "px)";
                 }
                 // arrowType가 다음 버튼일때
             } else {
                 count2++;
                 // 만약 가상 첫번째 배너
                 if (count2 >= 5) {

                     // $(".firstButton").prop("disable", true);
                     document.querySelector(".secondBtn.next").disabled = true;
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 0;
                     banner2.style.transform = "translate(-" + 1080 * count2 + "px)";
                 } else {
                     document.querySelector(".secondBtn.prev").disabled = false;
                     banner2.style.transform = "translate(-" + 1080 * count2 + "px)";
                 }
             }
             setTimeout(function () {
                 arrowButtonCheck = true;
             }, 500);
         }
     });
 });

 const thirdArrows = document.querySelectorAll("button.thirdBtn");
 var arrowButtonCheck = true;
 thirdArrows.forEach(arrow => {
     arrow.addEventListener("click", function () {
         if (arrowButtonCheck) {
             arrowButtonCheck = false;
             banner3.style.transition = "transform 0.5s"
             // arrowType을 위에서 (left,right)와(prev,next) 두가지를 적었기 때문에 둘중 하나 알아서 쓰라고 2칸 배열
             let arrowType = arrow.classList[2];
             // arrowType이 이전 버튼일때
             if (arrowType == 'prev') {
                 count3--;
                 // 만약 첫번쨰 이미지 배너에서 이전버튼을 눌렀을때
                 if (count3 <= 0) {
                     document.querySelector(".thirdBtn.prev").disabled = true;
                     // $(".firstButton").prop("disable", true);
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 5;
                     banner3.style.transform = "translate(-" + 1080 * count3 + "px)";
                 } else {
                     // $(".firstButton").prop("disable", false);
                     document.querySelector(".thirdBtn.next").disabled = false;
                     banner3.style.transform = "translate(-" + 1080 * count3 + "px)";
                 }
                 // arrowType가 다음 버튼일때
             } else {
                 count3++;
                 // 만약 가상 첫번째 배너
                 if (count3 >= 5) {

                     // $(".firstButton").prop("disable", true);
                     document.querySelector(".thirdBtn.next").disabled = true;
                     // setTimeout(function(){
                     //     banner.style.transition = "transform 0s"
                     //     banner.style.transform = "translate(-1080px)";
                     // }, 500);
                     // count = 0;
                     banner3.style.transform = "translate(-" + 1080 * count3 + "px)";
                 } else {
                     document.querySelector(".thirdBtn.prev").disabled = false;
                     banner3.style.transform = "translate(-" + 1080 * count3 + "px)";
                 }
             }
             setTimeout(function () {
                 arrowButtonCheck = true;
             }, 500);
         }
     });
 });


/* subside banner end */

/*  배너수정 ajax */

/*let bannerNumber = ${banner.getBoardNumber()};
let bannerName = "${banner.getBoardName()}";*/


//show();


function show(){
	
	$.ajax({
		url: "/banner/select.bn",
		dataType: "json",
		success: function change(banners){
		
		/* jsp 에 있는 images들  변경*/
		const images = $(".images");
		images.each((i)=>{
			images.eq(i).attr("src",banners[i].bannerName);
			
		});
		
		/* js 에 있는 images들 변경 */
		
		const firstBanner = banners[0].bannerName;
		const lastBanner = banners[5].bannerName;
	
			firstDiv.innerHTML = `<img src=` + firstBanner + `>`;
		
			lastDiv.innerHTML = `<img src=` + lastBanner + `>`;
			
			
		/*
		firstDiv.innerHTML = '<img src="/assets/images/main/capture1.png">';
		
		lastDiv.innerHTML = '<img src="/assets/images/main/capture1.png">';
		*/
		
		
	//	images.eq(i).attr("src",banners.bannerName)
	
	
		
			
			
		}
		/*error: function(a, b, c){
			console.log(a, b, c);
		}*/
	});
}
		



/*   */







