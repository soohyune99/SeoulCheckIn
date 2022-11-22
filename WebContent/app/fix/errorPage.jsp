<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
	<div style="margin: 0 auto; margin: 100px 0px 50px 0px;  background-color: #9cdeef">
		<img src="${pageContext.request.contextPath}/assets/images/fix/404_bus.gif" style="display: block; margin: 0 auto;">
	</div>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
</html>