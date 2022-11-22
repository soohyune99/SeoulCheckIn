1
/* ======================  첫번째 배너 JS ====================== */

const banner = document.querySelector("div.banner");
const buttons = document.querySelectorAll("div.buttons button");
var count = 0, temp = buttons[count];
let firstDiv = document.createElement("div");
let lastDiv = document.createElement("div");

firstDiv.innerHTML = `<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=68ae8a87-cf91-4591-acb9-5799d144b4e6">`;
banner.appendChild(firstDiv);

lastDiv.innerHTML = `<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=85420450-68ea-4693-be6f-ec1b1e1035ef">`;
banner.insertBefore(lastDiv, document.querySelector("div.banner div"));

banner.style.transform = "translate(-405px)";

// 이전 버튼, 다음 버튼 구현
const arrows = document.querySelectorAll("div.arrow");
var arrowButtonCheck = true;
let current = document.querySelector(".swiper-pagination-current");
arrows.forEach(arrow => {
    arrow.addEventListener("click", function () {
        if (arrowButtonCheck) {
            arrowButtonCheck = false;
            // clearInterval(inter);
            banner.style.transition = "transform 0.5s"

            let arrowType = arrow.classList[1]; /* 뽑아온 class 리스트의 2번째 방 (prev, next) */
            if (arrowType == 'swiper-button-prev') {
                count--;
                if (count == -1) {
                    banner.style.transform = "translate(0px)";
                    setTimeout(function () {
                        banner.style.transition = "transform 0s"
                        banner.style.transform = "translate(-1215px)";
                    }, 500);
                    count = 2;
                } else {
                    banner.style.transform = "translate(-" + 405 * (count + 1) + "px)";
                }
            } else {/* swiper-button-prev 이 버튼을 눌렀을 때  */
                count++;
                if (count == 3) {
                    banner.style.transform = "translate(-" + 405 * (count + 1) + "px)";
                    setTimeout(function () {
                        banner.style.transition = "transform 0s"
                        banner.style.transform = "translate(-405px)";
                    }, 500);
                    count = 0;
                } else {
                    banner.style.transform = "translate(-" + 405 * (count + 1) + "px)";
                }
            }
            current.innerHTML = count + 1;
            arrowButtonCheck = true;
        }
    });
});
/* ======================  /첫번째 배너 JS ====================== */

/* ====================== 탭 부분  ====================== */
let first = document.querySelector("#first");
let last = document.querySelector("#last");
let viewtalklist = document.querySelector("#viewtalklist");
let addtalklist = document.querySelector("#addtalklist");


function changefirst() {
    first.style.zIndex = 200;
    last.style.zIndex = 100;
};
function changelast() {
    first.style.zIndex = 100;
    last.style.zIndex = 200;

};
/* ======================/탭 부분  ====================== */


/* 닫기 버튼 누르면 탭2 사라지면서 close 버튼 이동 */
$(".layer_close").on("click", function () {
    $(".layer_close").css("display", "none");
    $(".pc_depth2").css("display", "none");
    $("#close_btn_fold").css("left", "405px");
});

var temp;
var check1 = -1;
var check2 = -1;

$("#close_btn_fold").on("click", function () {
    foldDetail();
});

function foldDetail(){
	 var $left = $("#close_btn_fold").css('left');
    if($left === '810px'){
        if(check1 > 0) {
            $(".pc_depth1").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").animate({marginLeft: '0px'}, 500);
            $(".pc_depth2").animate({marginLeft: '0px'}, 500);
            $(".layer_close").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").css('background-position-y', '0px');
        } else {
            $(".pc_depth1").animate({marginLeft: "-810px"}, 500);
            $("#close_btn_fold").animate({marginLeft: '-810px' }, 500);
            $(".pc_depth2").animate({marginLeft: '-810px'}, 500);
            $(".layer_close").animate({marginLeft: '-850px'}, 500);
            $("#close_btn_fold").css('background-position-y', '-104px');
        }
        check1 *= -1;
    } else{
        if(check2 < 0) {
            $(".pc_depth1").animate({marginLeft: '-405px'}, 500);
            $("#close_btn_fold").animate({marginLeft: '-405px'}, 500);
            $(".layer_close").animate({marginLeft: '-405px'}, 500);
            $("#close_btn_fold").css('background-position-y', '-104px');
        } else {
            $(".pc_depth1").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").animate({marginLeft: '0px'}, 500);
            $(".layer_close").animate({marginLeft: '0px'}, 500);
            $("#close_btn_fold").css('background-position-y', '0px');
        }
        check2 *= -1;
    }
}


$("#viewtalklist a.menutab").on('click', function(){
    $("div#first").css('display', 'block');
    $("div#last").css('display', 'none');
    $(this).removeClass('non_clicktab').addClass('clicktab');
    $("#addtalklist a").removeClass('clicktab').addClass('non_clicktab');
});

$("#addtalklist a.menutab").on('click', function(){
    $("div#last").css('display', 'block');
    $("div#first").css('display', 'none');
    $(this).removeClass('non_clicktab').addClass('clicktab');
    $("#viewtalklist a").removeClass('clicktab').addClass('non_clicktab');
});

$("#comment").on('focus', function(){
    $("#tform").css('border', '2px solid #333');
});

$("#comment").on('blur', function(){
    $("#tform").css('border', '1px solid #bbb');
});

$(".map_menu .tab.t1 li a").on('click', function(){
    var $class = $(this).parent().attr('class');
    var $index = $(this).attr('class')[6];
    if($class === 'on'){
        $(".map_menu .tab.t1 li").eq($index-1).removeClass('on');
    } else {
        $(".map_menu .tab.t1 li").eq($index-1).addClass('on');
    }
});

$(".map_menu .tab.t2 li a").on('click', function(){
    var $class = $(this).parent().attr('class');
    var $index = $(this).attr('class')[6];
    if($class === 'on'){
        $(".map_menu .tab.t2 li").eq($index-1).removeClass('on');
    } else {
        $(".map_menu .tab.t2 li").eq($index-1).addClass('on');
    }
});

$("#conlistul").on('click', 'li',function(){
    $(".pc_depth2.view").css('display','block');
    $("#close_btn_fold").css('left', '810px');
    $("#closeButton1").css('display', 'block');
});

