/* 선언부 */

/* header*/
var $ul = $(".divdiv").next();
var $div = $(".ulul").prev();
var checkHeader = -1;


/* join */
var $memberType;
var $emailInput = $("input#email");
var $nameInput = $("input[name='userName']");
var $phoneNumberInput = $("input[name='userPhoneNumber']");
var $codeInput = $("input[name='code']");
var $passwordInput = $("input[name='userPassword']");
var $passwordCheckInput = $("input[name='userPasswordRepeat']");
var $verificationInput = $("input[name='code']");
var $checkboxInput = $("input[name='allAgreement']");

var $all = $("input[name='allAgreement']");
var $checkboxes = $(".style_label__CZv3V > input[type='checkbox']");

//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
//한글이 포함되었는 지 검사
var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
//같은 문자 4번 이상
var wordCheck = /(\w)\1\1\1/;
//공백검사
var spaceCheck = /\s/;


/* login */
var $loginpasswordInput = $("input#password-text-field");
var memberNumber = sessionStorage.getItem('memberNumber');


/* header js strat*/


$(".divdiv").click(function() {
   checkHeader *= -1;
   $ul.toggle(200);

   // 삼항연산자 
   $("#head").css('height', checkheader > 0 ? '200px' : '50px');
});

/* header js end */




/* modal js start */


/* 로그인 모달창 켜기 */
/*$("#join_login_button").on('click', function() {
   if (sessionStorage.getItem('memberNumber') != null) { return; }
   $(".Modal_root__aEM8D.login").css('display', 'block');
});*/

/* 로그인 모달창 x버튼 */
$("#login_closeButton").on('click', function() {
   $(".Modal_root__aEM8D.login").css('display', 'none');
});

/* 비밀번호 모달창 x버튼 */
$("#button_pw").on('click', function() {
   $(".modal_background.pw").css('display', 'none');
});

/* 회원구분 모달창 x버튼 */
$("#membertype_closebutton").on('click', function() {
   $(".modal_background.memberType").css('display', 'none');
});


/* 회원구분 선택 시 회원가입 모달창 켜기 */
$("button.orange").on('click', function() {
   $memberType = $(this).attr('class')[7];
   $(".modal_background.memberType").css('display', 'none');
   $(".Modal_root__aEM8D.join").css('display', 'block');

});

/* 회원가입 모달창 x버튼 */
$("#join_closeButton").on('click', function() {
   $(".Modal_root__aEM8D.join").css('display', 'none');
});


/* modal js start */




/* join & login js start */

function getMemberNumber() {
   memberNumber = sessionStorage.getItem('memberNumber');
}

/* login 유효성 검사 및 아이디 가입 여부 검사*/
$(".style_wrapper__IgK7U.email-login-button").on('click', function() {
   if (!$emailInput.val()) {
      $emailInput.focus();
      return;
   }

   $.ajax({
      url: "/member/checkId.me",
      type: "get",
      data: { memberEmail: $emailInput.val() },
      success: function(result) {
         if (result == 0) {
            $(".Modal_root__aEM8D.login").css('display', 'none');
            $(".modal_background.memberType").css('display', 'block');
         } else {
            $(".Modal_root__aEM8D.login").css('display', 'none');
            $(".modal_background.pw").css('display', 'block');
         }
      }
   });
});


/* 인증번호 받기 버튼 활성화*/
$("input[name='userPhoneNumber']").on('keyup', function() {
   var $phone = $phoneNumberInput.val();

   if ($phone != "" && $phone.length == 11 && !isNaN($phone)) {
      $(".BtnGetCode_BtnGetCode__wR5FL.join.isKR").removeClass('isKR');
      $(".BtnGetCode_BtnGetCode__wR5FL.join").prop("disabled", false);
      $(".css-1u2lazp").css('display', 'none');
      return;
   } else {
      $(".BtnGetCode_BtnGetCode__wR5FL.join").addClass('isKR');
      $(".BtnGetCode_BtnGetCode__wR5FL.join").attr("disabled", true);
      $(".css-1u2lazp").css('display', 'block');
   }
});


/* 인증번호 보내기 및 확인 */
$(".BtnGetCode_BtnGetCode__wR5FL.join").on('click', function() {
   $(".InputCode_InputCode_input__X4opi").removeClass('disabled');
   $(".InputCode_InputCode_input__X4opi").prop("disabled", false);
   $(".css-1teuqrm").css('display', 'block');
   $(".css-1lnssh6").css('display', 'block');
   $(".BtnGetCode_BtnGetCode__wR5FL.join").addClass('isKR');
   $(".BtnGetCode_BtnGetCode__wR5FL.join").attr("disabled", true);
   $(".BtnGetCode_BtnGetCode__wR5FL.join").html('인증번호 재전송');
   $codeInput.prop("disabled", false);

   let seconds = 60;
   var inter = setInterval(function() {
      seconds--;
      if (seconds < 10) {
         $(".css-1lnssh6").html("유효시간 00:0" + seconds);
      } else {
         $(".css-1lnssh6").html("유효시간 00:" + seconds);
      }
   }, 1000);

   setTimeout(function() {
      if ($(".css-1teuqrm").text() != '인증되었습니다.') {
         $(".BtnGetCode_BtnGetCode__wR5FL.join.isKR").removeClass('isKR');
         $(".BtnGetCode_BtnGetCode__wR5FL.join").prop("disabled", false);
         $(".BtnGetCode_BtnGetCode__wR5FL.join").html('인증번호 받기');
         $codeInput.prop("disabled", true);
         clearInterval(inter);
      }
   }, 60000);

   $.ajax({
      url: "/member/verification.me",
      data: { memberPhoneNumber: $phoneNumberInput.eq(0).val() },
      success: function(verificationNumber) {
         $verificationInput.on('blur', function() {
            if (verificationNumber == $verificationInput.val()) {
               $(".css-1teuqrm").html('인증되었습니다.');
               $(".css-1lnssh6").css('display', 'none');
               $(".BtnGetCode_BtnGetCode__wR5FL.join").attr("disabled", true);
               $codeInput.attr("disabled", true);
            }
         });
      }
   });
});


/* 비밀번호 유효성 검사 */
$passwordInput.on('blur', function() {
   if (!pwCheck.test($passwordInput.val())) {
      $(".css-1u2lazp.password").css('display', 'block');
      return;
   }

   if (hangleCheck.test($passwordInput.val())) {
      $(".css-1u2lazp.password").css('display', 'block');
      return;
   }

   if (wordCheck.test($passwordInput.val())) {
      $(".css-1u2lazp.password").css('display', 'block');
      return;
   }

   if (spaceCheck.test($passwordInput.val())) {
      $(".css-1u2lazp.password").css('display', 'block');
      return;
   }

   $(".css-1u2lazp.password").css('display', 'none');
});


/* 비밀번호 확인 유효성 검사 */
$passwordCheckInput.on('blur', function() {
   if (!$passwordInput.val()) {
      $passwordInput.focus();
      return;
   }
   if ($passwordInput.val() != $passwordCheckInput.val()) {
      $(".css-1u2lazp.passwordCheck").css('display', 'block');
      $(".css-1d2ssup.passwordCheck").css('display', 'none');
      return;
   }
   if (!pwCheck.test($passwordCheckInput.val())) {
      $(".css-1d2ssup.passwordCheck").css('display', 'block');
      $(".css-1u2lazp.passwordCheck").css('display', 'none');
      return;
   }
   $(".passwordCheck").css('display', 'none');

});


/* 전체 동의 */
$all.on('click', function() {
   $checkboxes.prop('checked', $(this).is(':checked'));
});


/* 각각 약관 동의 */
$checkboxes.on('click', function() {
   $all.prop('checked', $checkboxes.filter(":checked").length == $checkboxes.length);
});


/* 회원 가입 유효성 검사*/
$(".style_wrapper__IgK7U.join").on('click', function() {
   if (!$nameInput.val()) {
      $nameInput.focus();
      return;
   }

   if (!isNaN($nameInput.val())) {
      $nameInput.focus();
      return;
   }

   if (!$codeInput.attr('disabled')) {
      $phoneNumberInput.focus();
      return;
   }

   if (!$passwordInput.val() || $(".css-1u2lazp.password").css('display') == 'block') {
      $passwordInput.focus();
      return;
   }

   if (!$passwordCheckInput.val() || $(".css-1u2lazp.passwordCheck").css('display') == 'block') {
      $passwordCheckInput.focus();
      return;
   }

   if (!$checkboxInput.prop('checked')) {
      $checkboxInput.focus();
      return;
   }

   $.ajax({
      url: "/member/joinOk.me",
      type: "post",
      data: { memberClassification: $memberType, memberEmail: $emailInput.val(), memberName: $nameInput.val(), memberPhone: $phoneNumberInput.val(), memberPassword: $passwordInput.val() },
      success: function() {
         $(".Modal_root__aEM8D.join").css('display', 'none');
      }
   });

});


/* join js end */



/* login js start */

/* 로그인 비밀번호 확인 */
$(".loginBtn").on('click', function() {
   $.ajax({
      url: "/member/loginOk.me",
      type: "post",
      data: { memberEmail: $emailInput.val(), memberPassword: $loginpasswordInput.val() },
      success: function(memberNumber) {
         sessionStorage.setItem('memberNumber', memberNumber);
         console.log("로그인 성공")
         console.log(sessionStorage.getItem('memberNumber'));
         $(".modal_background.pw").css('display', 'none');
         $("#join_login_button").html("로그아웃");
         getMemberNumber();

      }
   });
});


/* login js end */



/* logout js start */

/* 로그아웃 */
$("#join_login_button").on('click', function() {
   /*   if ($("#join_login_button").text() != '로그아웃') { return; }*/
   console.log(sessionStorage.getItem('memberNumber'))
   if (sessionStorage.getItem('memberNumber') == null){
      $(".Modal_root__aEM8D.login").css('display', 'block');
   } else {
      $.ajax({
         url: "member/logout.me",
         success: function() {
            sessionStorage.removeItem('memberNumber');
            sessionStorage.clear();
            $("#join_login_button").html("회원가입/로그인");
            console.log("로그아웃 성공")
            console.log(sessionStorage.getItem('memberNumber'));
         }
      });
   }
});


/* logout js end */



/* Google OAuth */

// callback
function handleCredentialResponse(response) {
   const responsePayload = parseJwt(response.credential);
   console.log("ID: " + responsePayload.sub);
   console.log('Full Name: ' + responsePayload.name);
   console.log('Given Name: ' + responsePayload.given_name);
   console.log('Family Name: ' + responsePayload.family_name);
   console.log("Image URL: " + responsePayload.picture);
   console.log("Email: " + responsePayload.email);
   $.ajax({
      url: "/member/loginGoogle.me", // 컨트롤러
      type: "post",
      data: {
         memberEmail: responsePayload.email,
         memberName: responsePayload.name,
         memberPhoto: responsePayload.picture
      },
      contentType: "application/x-www-form-urlencoded",
      success: function(memberNumber) {
         sessionStorage.setItem('memberNumber', memberNumber);
         $(".Modal_root__aEM8D.login").css('display', 'none');
         $("#join_login_button").html("로그아웃");
      }
   })

}

function parseJwt(token) {
   var base64Url = token.split('.')[1];
   var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
   var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
      return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
   }).join(''));

   return JSON.parse(jsonPayload);
};

window.onload = function() {
   google.accounts.id.initialize({
      client_id: "991196669475-dpc033jgo41gidvac293s8pmkv1uo192.apps.googleusercontent.com",
      callback: handleCredentialResponse
   });
   google.accounts.id.renderButton(
      document.getElementById("buttonDiv"),
      { theme: "outline", size: "middle", width: 300 }  // 로고 커스터마이징
   );

   google.accounts.id.prompt(); // 원탭 화면으로 출력
}
