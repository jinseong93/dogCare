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
        	    <li><a href="myPage.do"style="color: black;">마이 페이지</a></li>
        	    <li><a href="myDog.do">나의 반려견</a></li>
        	    <li><a href="visitServiceForm" style="color: black;">방문 돌봄 신청</a></li>
      	    </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

<div class="container" style="padding-top: 50px">
		<div class="main-body">
			<div class="row" style="justify-content: center;">
			<c:forEach var="dog" items="${list }">
				<div class="col-lg-4">
					<div class="card">				
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="resources/images/dog/${dog.d_photo }" alt="Admin" class="rounded-circle p-1 bg-primary" style="width: 100px; height: 100px;">
								<div class="mt-3">
									<h4>${dog.d_name }</h4>
									</br>
									<button class="btn btn-outline-primary" onclick = "location.href='walkServiceForm.do?D_num=${dog.d_num}'">산책 돌봄 신청</button>
									<button class="btn btn-outline-primary" onclick = "location.href='pickUpServiceForm.do?D_num=${dog.d_num}'">픽업 돌봄 신청</button>
								</div>
							</div>
							<hr class="my-4">
							<ul class="list-group list-group-flush">								
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">반려견 품종 : </h6>
									<span class="text-secondary"><a>${dog.d_breed }</a></span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">중성화 여부 : </h6>
									<span class="text-secondary"><a>${dog.d_neutered }</a></span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">예방접종 여부 : </h6>
									<span class="text-secondary"><a>${dog.d_inoculation }</a></span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">마이크로칩(동물등록) 위치 : </h6>
									<span class="text-secondary"><a>${dog.d_RFID }</a></span>
								</li>							
							</ul>
							
						</div>
						
					</div>
				</div>
				</c:forEach>
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