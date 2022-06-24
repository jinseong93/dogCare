<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<link href="resources/css/signUp.css" rel="stylesheet">
<link href="resources/fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet" >

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Lonely Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
<style type="text/css">
.mb-0 {
	padding-top: 8px;
}
 $('.selectpicker').selectpicker();
 $('.selectpicker').selectpicker({
      style: 'btn-info',
      size: 4
  });
</style>
<script type="text/javascript">
function M_nicknameChk() {
	if (!frm.M_nickname.value) {
		alert("닉네임을 입력한 후에 체크 하세요"); frm.M_nickname.focus();
		return false;  // action하지마라
	}
	// id ajax
	$.post('nickChk.do', "M_nickname="+frm.M_nickname.value, function(data) {
		$('#nickChk1').html(data);
	});
}
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
        	    <li><a href="dogForm.do" style="color: black;">반려견 등록</a></li>
        	    <li><a href="dogList.do" style="color: black;">나의 반려견</a></li>
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
									
									<button class="btn btn-outline-primary" onclick = "location.href='addressForm.do'">주소 수정하기</button> 
								</div>
							</div>
							<hr class="my-4">
							<ul class="list-group list-group-flush">
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe me-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
									<span class="text-secondary">https://bootdey.com</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github me-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
									<span class="text-secondary">bootdey</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter me-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
									<span class="text-secondary">@bootdey</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram me-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
									<span class="text-secondary">bootdey</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook me-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
									<span class="text-secondary">bootdey</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				 
				<div class="col-lg-8" style="padding-top: 100px">
					<div class="card">
					 <form action="Mupdate.do" name="frm" >
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="padding-top: 10px; color: black; font-weight: 900;">닉네임</h6>
								</div>
								<div class="col-sm-9 text-secondary" style="display: flex;">
									<input type="text" class="form-control" name="M_nickname" value="${member.m_nickname }" style="background-color: white; width: 70%" >
									<input class="form-control" type="button" value="중복확인" id="nickChk" onclick="M_nicknameChk()" style="width: 30%;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
								</div>
								<div class="col-sm-9 text-secondary" style="display: flex;">
									 <div id="nickChk1" class="err" style="font-size: 15px"></div>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">이메일(ID)</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" name="M_id" value="${member.m_id }" readonly="readonly" style="background-color: white;">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="color: black; font-weight: 900;">연령대</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<select class="form-control" name="M_age" required="required" > 
                               		<option>[연령대]</option>
                               		<option value="10~19">10~19</option>
                                	<option value="20~29">20~29</option>
                                	<option value="30~39">30~39</option>
                                	<option value="40~49">40~49</option>
                                	<option value="50~49">50~59</option>
                                </select>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0" style="color: black; font-weight: 900;">성별</h6>
								</div>
								<div class="col-sm-9 text-secondary">
								<select class="form-control" name="M_gender" required="required" > 
                               		<option>[성별]</option>
                               		<option value="남자">남자</option>
                                	<option value="여자">여자</option>
                                </select>
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
								<div class="col-sm-9 text-secondary" style="display: flex;">
									<input type="submit" class="form-control" value="수정완료"  id="signup" class="form-submit"  style="background-color: white; width: 50%">							
								</div>
							</div>
						</div>
						</form>
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