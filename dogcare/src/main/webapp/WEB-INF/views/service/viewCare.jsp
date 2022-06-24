<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e9918ba68bd775fc895635b7c43f6c06&libraries=services"></script>
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
        	    <li><a href="visitCare.do" style="color: black;">방문 돌봄</a></li>
        	    <li><a href="walkCare.do" style="color: black;">산책 돌봄</a></li>
        	    <li><a href="pickUpCare.do" style="color: black;">픽업 돌봄</a></li>
        	  
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
								<img src="resources/images/dog/${dog.d_photo }" alt="Admin" class="rounded-circle p-1 bg-primary" style="width: 100px; height: 100px;">
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
						<div class="card-body"><div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">돌봄 희망 날자 & 시간</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${serviceApply.s_time }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">신청자 이메일</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${serviceApply.m_id }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px;">서비스 희망 주소지</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${serviceApply.m_address }" id="address" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div id="map" style="width:100%;height:350px;"></div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">낯선 사람을 만나면</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${dog.d_PRA }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">낯선 강아지를 만나면</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${dog.d_DRA }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">만지면 싫어하는 부위</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${dog.d_dislike }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">사람(강아지) 공격 유무</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${dog.d_attack }" readonly="readonly" style="background-color: white;">
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e9918ba68bd775fc895635b7c43f6c06"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var address = document.getElementById('address');
console.log(address);
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(address.value, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

 /*        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);
 */
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});  
</script>
</html>