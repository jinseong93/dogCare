                       <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Lonely Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
<style type="text/css">
.mb-0 {
	padding-top: 8px;
}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
window.Kakao.init("e9918ba68bd775fc895635b7c43f6c06");
function secession2() {
	Kakao.API.request({
    	url: '/v1/user/unlink',
    	success: function(response) {
    		console.log(response);
    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
    		window.location.href='Kdelete.do'
    			alert("탈퇴 성공");
    	},
    	fail: function(error) {
    		console.log('탈퇴 미완료')
    		console.log(error);
    	},
	});
};

</script>
</head>

<body>
 <div><header><div id="headbar"><jsp:include page="../topMenu.jsp"></jsp:include></div></header></div>
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center" style="padding: 50px 0">
        	<h3></h3>
 			<ol>
        	    <li><a href="visitCare.do">마이 페이지</a></li>
        	    <li><a href="dogUpForm.do" style="color: black;">반려견 등록</a></li>
        	    <li><a href="myDog.do" style="color: black;">나의 반려견</a></li>
        	    <li><a href="signOut.do" style="color: black;">로그 아웃</a></li>
      	    </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->
    
<div class="container" style="padding-top: 50px">
		<div class="main-body">
			<div class="row">
			
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
							</br>
								<div class="mt-3">
									<h4>${member.m_nickname }</h4>
									<p class="text-secondary mb-1">${member.m_id }</p>
									</br>
									 <c:if test="${empty address.m_address}">
									<button class="btn btn-outline-primary" onclick = "location.href='addressForm.do'">서비스 희망 지역</button>
									</c:if>
								</div>
							</div>
							<hr class="my-4">
							<ul class="list-group list-group-flush">
								<c:forEach var="dog" items="${list }">
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><img src="resources/images/dog/${dog.d_photo }" width="50" height="50" style="border-radius: 15px;" class="feather feather-globe me-2 icon-inline"></img>${dog.d_name }</h6>
									<span class="text-secondary"><a>보러가기</a></span>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">닉네임</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${member.m_nickname }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">이메일(ID)</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${member.m_id }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">연령대</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${member.m_age }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">성별</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${member.m_gender }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">서비스 희망 지역</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${address.m_address }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<c:if test="${member.m_password != '1q2w3e' }">
									<button class="btn btn-outline-primary" onclick = "location.href='MupdateForm.do'" style="margin-right: 150px;">회원정보 수정</button>
									</c:if>
									 <c:if test="${member.m_password == '1q2w3e' }">
										<button class="btn btn-outline-primary" href="#" onclick="secession2()">회원 탈퇴</button>
									</c:if>
									 <c:if test="${member.m_password != '1q2w3e' }">
										<button class="btn btn-outline-primary" onclick = "location.href='MdeleteForm.do'">회원 탈퇴</button>
									</c:if>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h5 class="d-flex align-items-center mb-3">나의 글 목록</h5>
									<button  type="button" class="btn btn-outline-primary" onclick = "location.href='myDogCare.do'" style="margin-right: 50px;">돌봄 서비스</button>
									<button  type="button" class="btn btn-outline-primary" style="margin-right: 50px;">이용 후기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


  </main><!-- End #main -->
 </br>
 </br>
 </br>
 </br>
 <footer><jsp:include page="../footer.jsp"></jsp:include></footer>
</body>
</html>