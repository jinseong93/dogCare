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
<form action="apply.do" id="walk">
    <input type="hidden" name="S_type" value="산책">
    <input type="hidden" name="M_id" value="${member.m_id }">
    <input type="hidden" name="D_num" value="${dog.d_num }">
    <input type="hidden" name="S_pickUp" value=" ">
	<div class="container" style="padding-top: 50px">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center" style="margin-top: 20px;">
								<img src="resources/images/dog/${dog.d_photo }" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
								<div class="mt-3">
									<h4>${dog.d_name }</h4>
									</br>
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
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">신청자 이메일(ID)</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${member.m_id }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3" style="display: flex;">
							<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">희망하는 시간대</h6>
							</div>
								<input type="radio" class="btn-check" name="S_time" value="09시~12시" id="09시~12시">
								<label class="btn btn-outline-success" for="09시~12시"  style="width: 15%; margin-left: 11px; font-size: 14px; border-color: #ced4da;">09시~12시</label>
								<input type="radio" class="btn-check" name="S_time" value="12시~15시" id="12시~15시">
								<label class="btn btn-outline-success" for="12시~15시"  style="width: 15%; margin-left: 40px; font-size: 14px; border-color: #ced4da;">12시~15시</label>
								<input type="radio" class="btn-check" name="S_time" value="15시~18시" id="15시~18시">
								<label class="btn btn-outline-success" for="15시~18시"  style="width: 15%; margin-left: 40px; font-size: 14px; border-color: #ced4da;">15시~18시</label>
							</div>
								<div class="row mb-3" style="display: flex;">
							<div class="col-sm-3">									
							</div>
								<input type="radio" class="btn-check" name="S_time" value="19시~21시" id="19시~21시">
								<label class="btn btn-outline-success" for="19시~21시"  style="width: 15%; margin-left: 80px; font-size: 14px; border-color: #ced4da;">19시~21시</label>
								<input type="radio" class="btn-check" name="S_time" value="다 괜찮아요" id="다 괜찮아요">
								<label class="btn btn-outline-success" for="다 괜찮아요"  style="width: 15%; margin-left: 52px; font-size: 14px; border-color: #ced4da;">다 괜찮아요</label>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">날자 선택</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="date" name="S_day" class="form-control" required="required" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">반려견 주의사항 및 원하는 돌봄을 적어주세요</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<textarea class="form-control" style="resize: none;" name="S_comment" rows="7" cols="30" placeholder="내용을 입력해 주세요." required="required"></textarea>
								</div>
							</div>		
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<button class="btn btn-outline-primary" type="submit" form="walk" style="margin-left: 60%; width: 20%; border-color: #ced4da;">신청</button>									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 </form>
  </main><!-- End #main -->
 </br>
 </br>
 </br>
 </br>
 <footer><jsp:include page="../footer.jsp"></jsp:include></footer>
</body>
</html>