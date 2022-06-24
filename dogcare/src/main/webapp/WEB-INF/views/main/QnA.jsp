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
/*h1은 설명을 위한 css이기 때문에 지우셔도 됩니다.
지우지 않을 경우 다른 h1코드 스타일과 충돌할 가능성이 있습니다*/
h1 {
   padding-top: 80px;
   color: rosybrown;
   text-align: center;
}


/*div변경과 관련된 코드입니다.
색 등의 디자인은 보이기 위해서 표시해놨으니
스타일 추가 및 변경이 가능합니다.*/
.main input[type=radio] {
	display: none;
}
#tab-1:checked ~ .tab label:nth-child(1),
#tab-2:checked ~ .tab label:nth-child(2),
#tab-3:checked ~ .tab label:nth-child(3),
#tab-4:checked ~ .tab label:nth-child(4),
#tab-5:checked ~ .tab label:nth-child(5) {
	background-color: rgba(0, 0, 0, 0.2);
  box-shadow: none;
}
.content > div {
	display: none;
}
#tab-1:checked ~ .content div:nth-child(1),
#tab-2:checked ~ .content div:nth-child(2),
#tab-3:checked ~ .content div:nth-child(3),
#tab-4:checked ~ .content div:nth-child(4),
#tab-5:checked ~ .content div:nth-child(5)  {
	display: block;
}
.main {
  margin: 0 auto;
  main-width:1380px;
  max-width: 100%;
}
.tab {
  overflow: hidden;
  padding-top: 70px;
}
.tab label {
	border: solid 1px;
    font-size: 15px;
    cursor: pointer;
    float: left;
    width: 20%;
    text-align: center;
    padding: 15px 0;
    text-transform: uppercase;
    font-weight: bold;
    letter-spacing: 2px;
    user-select: none;
    -webkit-user-select: none;
}
.content {
  min-height: 250px;
}
.content > div{
   padding: 30px;
   line-height: 2.0;
   font-size: 17px;
}
.toc-content {
    display: none;
    padding-top: 40px;
  }
  .toc-toggle {
    cursor: pointer;
    color: black;
  }
  .toc-toggle:hover {
    text-decoration: underline;
  }

</style>
</head>

<body>
 <div><header><div id="headbar"><jsp:include page="../topMenu.jsp"></jsp:include></div></header></div>
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs" style="height: 230px">
      <div class="container">
      	<h1 style="font-size: 30px">다정한 도그케어 고객님, 도움이 필요하신가요?</h1>
      </div>
    </section><!-- End Breadcrumbs SectiYOon -->
<div class="col-lg-6" style="margin: auto"> 

<div class="main">
  <input type="radio" id="tab-1" name="show" checked/>
  <input type="radio" id="tab-2" name="show" />
  <input type="radio" id="tab-3" name="show" />
  <input type="radio" id="tab-4" name="show" />
  <input type="radio" id="tab-5" name="show" />
  <div class="tab">
    <label for="tab-1">방문서비스</label>
    <label for="tab-2">픽업서비스</label>
    <label for="tab-3">이용 요금</label>
    <label for="tab-4">변경 및 취소</label>
    <label for="tab-5">펫시터 지원</label>
  </div>
  <div class="content">
    <div class="content-dis">
    	<div style="display: flex;">
    		<div>방문돌봄 이란?</div><div style="margin-left: auto;"><span id="toc-toggle" class="toc-toggle" onclick="openCloseToc()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content" class="toc-content">
    		<div style="color: deeppink">도그케어 펫시터가 고객의 집으로 찾아가 돌봄을 진행합니다.</div>
    		</br>
    		<div st>기본 30분 진행</div>
    		<ul>
    			<li>배식/급수</li>
    			<li>배변 처리</li>
    			<li>환경 정리</li>
    			<li>요청사항 수행</li>
    		</ul>
    		<div>※기본돌봄만 진행하는 경우 산책은 불가합니다.</div>
    		<div>※기본돌봄 범위에 해당하지 않는 요청사항 수행은 불가합니다.</div>
    		<div>※별도 요청사항이 없는 경우 기본돌봄 내용대로 진행됩니다.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	<div style="display: flex;">
    		<div>산책돌봄 이란?</div><div style="margin-left: auto;"><span id="toc-toggle2" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content2" class="toc-content">
    		<div style="color: deeppink">도그케어 펫시터가 고객의 집으로 찾아가 신책을 진행합니다.</div>
    		</br>
    		<div st>기본 30분 진행</div>
    		<ul>
    			<li>배식/급수</li>
    			<li>배변 처리</li>
    			<li>환경 정리</li>
    			<li>요청사항 수행</li>
    		</ul>
    		<div>※기본돌봄만 진행하는 경우 산책은 불가합니다.</div>
    		<div>※기본돌봄 범위에 해당하지 않는 요청사항 수행은 불가합니다.</div>
    		<div>※별도 요청사항이 없는 경우 기본돌봄 내용대로 진행됩니다.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	<div style="display: flex;">
    		<div>하네스 or 인식표가 없는데 가능한가요?</div><div style="margin-left: auto;"><span id="toc-toggle3" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content3" class="toc-content">
    		</br>
    		<div>※산책서비스를 이용하는 경우 이중산책줄 착용을 위해 하네스는 필수입니다.</div>
    		<div>※이중산책줄 착용이 불가한 경우 산책서비스 이용이 제한됩니다.</div>
    		<div>※반려동물 등록이 의무화 됨에 따라 외부 이동, 산책 시 인식표 착용 또한 의무사항이 되었습니다.</div>
    		<div>※인식표 없이 산책을 희망하는 경우 당사는 관련된 법령에 대한 의무가 없음을 알려드립니다.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	<div style="display: flex;">
    		<div>왜 도그케어 방문펫시터는 믿을 수 있나요?</div><div style="margin-left: auto;"><span id="toc-toggle4" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content4" class="toc-content">
    		</br>
    		<div>※꼼꼼한 신원검증 절차.</div>
    		<div>※이이론/실습 교육과 함께 난이도별 클래스 수업 진행.</div>
    		<div>※돌봄시간 내 액션캠을 통한 영상촬영.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	<div style="display: flex;">
    		<div>출입 비밀번호 등 정보 유출이 걱정될 떄</div><div style="margin-left: auto;"><span id="toc-toggle5" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content5" class="toc-content">
    		<div style="color: deeppink">출입 비밀번호는 도그케어 서버에도 저장되지 않으며, 돌봄종료 시 자동으로 소멸됩니다.</div>
    		</br>
    		<div st>또한, 방문펫시터도 개인정보의 중요성을 인지한 펫시터만 운영 중중</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	<div style="display: flex;">
    		<div>방문서비스 이용 가능 지역</div><div style="margin-left: auto;"><span id="toc-toggle6" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content6" class="toc-content">
    		<div>※서울 전체, 경기/인천 일부 지역.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    		<div style="display: flex;">
    		<div>방문서비스 당일 예약</div><div style="margin-left: auto;"><span id="toc-toggle7" class="toc-toggle" onclick="openCloseToc2()">▼</span></div>
    	</div>
    	<hr style="margin: 0.5rem 0">
    	<div id="toc-content7" class="toc-content">
    		<div>※당일도 예약 가능합니다.</div>
    		<div>※그러나 예약을 더욱 안전하게 확저하기 위해서는 최소 3일 전에 미리 예약하는 것을 추천드립니다.</div>
    		</br>
    		<hr style="margin: 0.5rem 0">
    	</div>
    	
    </div>
    <div class="content-dis">
      Color의 body안 내용을 넣으세요.
    </div>
    <div class="content-dis">
      Textile의 body안 내용을 넣으세요.
    </div>
    <div class="content-dis">
      Design의 body안 내용을 넣으세요.
    </div>
    <div class="content-dis">
      Design2 body안 내용을 넣으세요.
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

	<script type="text/javascript" src="${path}/resources/bootstrap/js/openCloseToc.js"></script>
</html>