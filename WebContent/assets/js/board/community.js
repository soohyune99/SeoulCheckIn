// 입력한 사진으로 썸네일 바꾸기
// const $file = $("input[type='file']");
// const $thumbnail = $("label[for='attach'] div.addfile_thumbnail");

// $file.on("change", function(e){
//     console.log(e.target.files[0]);
    
//     var reader = new FileReader();
//     let type = e.target.files[0].type;
//     reader.readAsDataURL(e.target.files[0]);
    
//     reader.onload = function(e){
//         let url = e.target.result;
//         if(type == "image/jpeg") {
//             $thumbnail.style.backgroundImage = "url('" + url + "')";
//         } else {
//             $thumbnail.style.backgroundImage = "url('')";
//         }
//     }
// });



$(".PhotoButton_PhotoButton__uSl7I").on('mouseover', function(){
    $(this).css('background-color', 'lightgray');
    $(".Tooltip_Tooltip__O0gp_").css('visibility', 'visible'); 
});

$(".PhotoButton_PhotoButton__uSl7I").on('mouseout', function(){
    $(this).css('background-color', '#fff');
    $(".Tooltip_Tooltip__O0gp_").css('visibility', 'hidden');
});


$(".PhotoButton_PhotoButton__uSl7I").on('mouseover', function(){
    $(this).css('background-color', 'lightgray');
    $(".Tooltip_Tooltip__O0gp_").css('visibility', 'visible'); 
});

$(".PhotoButton_PhotoButton__uSl7I").on('mouseout', function(){
    $(this).css('background-color', '#fff');
    $(".Tooltip_Tooltip__O0gp_").css('visibility', 'hidden');
});

$(".AutoTextarea_AutoTextarea__textarea__zScTG.content").on('keydown', function (e) {
    if(e.keyCode !=46 && e.keyCode !=8){
        $(this).height($(this).prop('scrollHeight')+28);   
    }else{
        $(this).height($(this).prop('scrollHeight')-28);
    }
  });

let selectCheck = false;
let replyCheck = false;

$(".PostContents_PostContents__menu_button__fCW0J").on('click',function(){

  
    let $modifyBtn = $(".MenuPopup_MenuPopup__kcJI1.MenuPopup_MenuPopup__paddingBottom__SUQod");
    selectCheck = !selectCheck;
    if(selectCheck){
        $modifyBtn.css('display','block');
    }else{
        $modifyBtn.css('display','none');
    }
})

$(".CommentItem_CommentItem__menu__1yY_N").on('click',function(){
    let $replymodifyBtn = $(".MenuPopup_MenuPopup__kcJI1.MenuPopup_MenuPopup__paddingTop__VUYHS.CommentItem_CommentItem__menuPopup__I6dGz");
    replyCheck = !replyCheck;
    if(replyCheck){
        $replymodifyBtn.css('display','block');
    }else{
        $replymodifyBtn.css('display','none');
    }
})

// count = 6 일때 마지막
let scrollMove = 250;
let count = 0;

$(".ArrowButton_ArrowButton__zK5U5.next").on("click", function(){
    count++;
    
    $(".InterestCategory_InterestCategory__scroll__WiqGV").css("transform","translateX(-" + scrollMove * count + "px)");

    if(scrollMove * count >= 250){
        $(".InterestCategory_InterestCategory__arrow__SiC0l.InterestCategory_InterestCategory__leftArrow__DiqZD").addClass("InterestCategory_visible__j2sDc");
    }
    if(scrollMove * count >= 1500){
        $(".InterestCategory_InterestCategory__arrow__SiC0l.InterestCategory_InterestCategory__rightArrow__4dDbu").removeClass("InterestCategory_visible__j2sDc");
    }
});

$(".ArrowButton_ArrowButton__zK5U5.prev").on("click",function(){
    count--;
    $(".InterestCategory_InterestCategory__scroll__WiqGV").css("transform", "translateX(-" + scrollMove * count + "px)");
    
    if(scrollMove * count <= 1500){
        $(".InterestCategory_InterestCategory__arrow__SiC0l.InterestCategory_InterestCategory__rightArrow__4dDbu").addClass("InterestCategory_visible__j2sDc");
    }
    if(scrollMove * count < 250){
        $(".InterestCategory_InterestCategory__arrow__SiC0l.InterestCategory_InterestCategory__leftArrow__DiqZD").removeClass("InterestCategory_visible__j2sDc");
    }
});

var count = 0;

$(".SelectTagsModal_subTags__dIvTw li button").on('click', function(){
    var $li = $(this).parent();
    var $button = $(".Button_Button__sizeLarge__qMiwJ.Button_Button__fullWidth__RU4tf");
    
    if($li.attr('class') === 'SelectTagsModal_active__dK4jR') {
        $li.removeClass('SelectTagsModal_active__dK4jR');
        count--;
        $(".SelectTagsModal_badge__eVbO1").text(count);
        if(count == 0){
            $button.css('background-color', '#f2f4f7');
            $button.css('color', '#ccc');
        }
        return;
    }
    
    if(count < 3){
        $li.addClass('SelectTagsModal_active__dK4jR');
        count++;
        $(".SelectTagsModal_badge__eVbO1").text(count);
        if(count > 0) {
            $button.css('background-color', '#36f');
            $button.css('color', '#ffffff');
        }
    }

});



$(".plusBtn").click(function(){
    $(".Modal_Modal__root__lNnQN").fadeIn();
})
$(".closeBtn").click(function(){
    $(".Modal_Modal__root__lNnQN").hide();
})


