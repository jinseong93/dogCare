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
    <input type="hidden" name="S_type" value="픽업">
    <input type="hidden" name="M_id" value="${member.m_id }">
    <input type="hidden" name="D_num" value="${dog.d_num }">
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
								<input type="radio" class="btn-check" name="S_time" id="09시~12시">
								<label class="btn btn-outline-success" for="09시~12시"  style="width: 15%; margin-left: 11px; font-size: 14px; border-color: #ced4da;">09시~12시</label>
								<input type="radio" class="btn-check" name="S_time" id="12시~15시">
								<label class="btn btn-outline-success" for="12시~15시"  style="width: 15%; margin-left: 40px; font-size: 14px; border-color: #ced4da;">12시~15시</label>
								<input type="radio" class="btn-check" name="S_time" id="15시~18시">
								<label class="btn btn-outline-success" for="15시~18시"  style="width: 15%; margin-left: 40px; font-size: 14px; border-color: #ced4da;">15시~18시</label>
							</div>
								<div class="row mb-3" style="display: flex;">
							<div class="col-sm-3">									
							</div>
								<input type="radio" class="btn-check" name="S_time" id="19시~21시">
								<label class="btn btn-outline-success" for="19시~21시"  style="width: 15%; margin-left: 80px; font-size: 14px; border-color: #ced4da;">19시~21시</label>
								<input type="radio" class="btn-check" name="S_time" id="다 괜찮아요">
								<label class="btn btn-outline-success" for="다 괜찮아요"  style="width: 15%; margin-left: 52px; font-size: 14px; border-color: #ced4da;">다 괜찮아요</label>
							</div>
							<div class="row mb-3" style="display: flex;">
							<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">도착지 주소</h6>
							</div>
									<input class="form-control" type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기" style="margin-left: 11px; width: 12%">
									<input type="text" class="form-control" id="sample4_roadAddress" name="S_pickUp" placeholder="도로명주소" style="margin-left: 18px; width: 50%">
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">날자 선택</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="date" name="S_day" class="form-control" required="required" style="background-color: white; width: 50%" >
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample4_roadAddress").value = roadAddr;
                       
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</html>