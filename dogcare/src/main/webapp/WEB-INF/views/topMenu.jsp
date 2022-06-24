<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Lonely Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- =======================================================
  * Template Name: Lonely - v4.7.0
  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-lonely/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
window.Kakao.init("e9918ba68bd775fc895635b7c43f6c06");
function secession() {
	Kakao.API.request({
    	url: '/v1/user/unlink',
    	success: function(response) {
    		console.log(response);
    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
    		window.location.href='signOut.do'
    			alert("로그아웃 성공");
    	},
    	fail: function(error) {
    		console.log('탈퇴 미완료')
    		console.log(error);
    	},
	});
};

function logOut() {
	window.location.href='signOut.do'
		alert("로그아웃 성공");
}
</script>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="main.do">DogCare</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="#hero">펫시터 소개</a></li>
          <li><a href="#about">펫시터 지원</a></li>
         <li class="dropdown"><a href="#"><span>돌봄 서비스</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="visitCare.do">방문 돌봄</a></li>
              <li><a href="walkCare.do">산책 돌봄</a></li>
              <li><a href="pickUpCare.do">픽업 돌봄</a></li>
         
            </ul>
          </li>
          <li><a href="myDog.do">돌봄 신청</a></li>
          <li><a href="#services">이용 후기</a></li>
          <li><a href="QnA.do">QnA</a></li>
		  <c:if test="${empty member.m_nickname}">
				<li><a href="signInForm.do">로그인</a></li>
			</c:if>
			<c:if test="${not empty member.m_nickname }">
				<c:if test="${member.m_nickname != 'master' }">
					<li class="dropdown"><a href="#"><span>'${member.m_nickname }' 님</span> <i class="bi bi-chevron-down"></i></a>
			            <ul>
			              <li><a href="myPage.do">마이 페이지</a></li>
			              <li><a href="dogUpForm.do">강아지 등록</a></li>
			              <c:if test="${member.m_password == '1q2w3e' }">
			              	<li><a href="#" onclick="secession()">로그 아웃</a></li>
			              </c:if>
			              <c:if test="${member.m_password != '1q2w3e' }">
			              	<li><a href="#" onclick="logOut()">로그 아웃</a></li>
			              </c:if>
			            </ul>
			        </li>
				</c:if>
			</c:if>
			<c:if test="${member.m_nickname eq 'master' }">
					<li><a>관리자님</a></li>
			</c:if>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

<!-- Vendor JS Files -->
  <script src="resources/assets/vendor/purecounter/purecounter.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>

</body>

</html>