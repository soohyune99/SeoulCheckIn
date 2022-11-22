<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>
	<form name="NaverOauthForm" action="/member/loginNaver.me" method="post">
		<input type="hidden" name="url" class="url" value="${url}">
	</form>
</body>
<script type="text/javascript">
   var url = $("input[name='url']").val();
   var naver_id_login = new naver_id_login("vMW_1ZPa5SG3P5MabJCm", "http://localhost:8085");
   //    var naver_id_login = new window.naver_id_login("_VjlH3jAE2LhRMAaID_g",
   //          "http://localhost:8081/milestone/login/join.indi");
   // 접근 토큰 값 출력
   //    alert(naver_id_login.oauthParams.access_token);
   // 네이버 사용자 프로필 조회
   naver_id_login.get_naver_userprofile("naverSignInCallback()");
   // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
   function naverSignInCallback() {
      let memberName = naver_id_login.getProfileData('name');
      let memberEmail = naver_id_login.getProfileData('email');
      let memberPhoto = naver_id_login.getProfileData('profile_image');
      let memberPhoneNumber = naver_id_login.getProfileData('mobile');
      
      let text = "";
      text += `<input type="hidden" name="memberName" value="` + memberName + `">`;
      text += `<input type="hidden" name="memberEmail" value="` + memberEmail + `">`;
      text += `<input type="hidden" name="memberPhoto" value="` + memberPhoto + `">`;
      text += `<input type="hidden" name="memberPhoneNumber" value="` + memberPhoneNumber + `">`;
      
      $("input[name='url']").append(text);
      
      document.NaverOauthForm.submit();
   }
</script>
</html>