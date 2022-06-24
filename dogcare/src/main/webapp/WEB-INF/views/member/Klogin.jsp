<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result >= 0}">
	<script type="text/javascript">
		alert("로그인 성공");
		location.href="main.do";
	</script>	
</c:if>
<c:if test="${result == -1}">
	<script type="text/javascript">
		alert("중복된 이메일 입니다. 가입여부를 확인해 주세요");
		history.back();
	</script>	
</c:if>
</body>
</html>