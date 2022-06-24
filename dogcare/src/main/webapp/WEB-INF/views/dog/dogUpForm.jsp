<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="resources/css/signUp.css" rel="stylesheet">
<link href="resources/fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet" >
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Lonely Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  

</head>

<body>

 <div><header><div id="headbar"><jsp:include page="../topMenu.jsp"></jsp:include></div></header></div>
 

  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center" style="padding: 50px 0">
 
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->
 <form method="POST" class="register-form" id="register-form" action="dogUp.do" enctype="multipart/form-data" name="frm">
     <!-- Sign up form -->
         <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">나의 반려견</h2>                                            
                              <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="D_name" placeholder="반려견 이름" required="required" autofocus="autofocus"/>                                                        
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="D_breed" placeholder="반려견 품종" required="required"/>                                                        
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_size" required="required"> 
                               		<option>[반려견 크기]</option>
                                	<option value="소형견">소형견</option>
                                	<option value="중형견">중형견</option>
                                	<option value="대형견">대형견</option>
                                </select>
                            </div>
                             <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_neutered" required="required"> 
                               		<option>[중성화 여부]</option>
                                	<option value="했어요">했어요</option>
                                	<option value="안했어요">안했어요</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_inoculation" required="required"> 
                               		<option>[예방접종 여부]</option>
                                	<option value="접종 완료">접종 완료</option>
                                	<option value="접종 미완료">접종 미완료</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_DRA" required="required"> 
                               		<option>[다른 반려견 만났을때 반응을 알려주세요]</option>
                                	<option value="무서워하며 경계해요">무서워하며 경계해요</option>
                                	<option value="짖거나 달려들어요">짖거나 달려들어요</option>
                                	<option value="반가워하며 함께 놀아요">반가워하며 함께 놀아요</option>
                                	<option value="별로 관심을 두지 않아요">별로 관심을 두지 않아요</option>
                                </select>
                            </div>
                              <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_PRA" required="required"> 
                               		<option>[낯선 사람을 만났을 때 반응을 알려주세요]</option>
                                	<option value="무서워하며 경계해요">무서워하며 경계해요</option>
                                	<option value="짖거나 달려들어요">짖거나 달려들어요</option>
                                	<option value="반가워하며 함께 놀아요">반가워하며 함께 놀아요</option>
                                	<option value="별로 관심을 두지 않아요">별로 관심을 두지 않아요</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="D_dislike" placeholder="만지면 예민하게 반응하는 부위가 있다면 적어주세요" required="required"/>                                                        
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_RFID" required="required"> 
                               		<option>[동물등록(마이크로칩) 위치]</option>
                                	<option value="내장형">내장형</option>
                                	<option value="외장형">외장형</option>
                                </select>
                            </div>
                             <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="D_attack" required="required"> 
                               		<option>[낯선 사람이나 다른 강아지를 공격한 적이 있나요??]</option>
                                	<option value="아니요">아니요</option>
                                	<option value="아니요">네</option>
                                </select>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="완료"  class="form-submit" value="Register"/>
                            </div>                          
                       
                    </div>
                    <div class="signup-image">
                    	<h5 class="form-title">반려견 사진을 올려주세요!</h5>                        
						    <img style="height: 300px; width: 500px;" id="preview-image" src="resources/images/dog.jpg" alt="dog up image">
						    <input style="display: block;" type="file" id="input-image" name="file">		
                    </div>                  
                </div>               
            </div>         
        </section>
 </form>
  </main><!-- End #main -->
 </br>
 </br>
 </br>
 </br>
 <footer><jsp:include page="../footer.jsp"></jsp:include></footer>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

<script type="text/javascript">
function readImage(input) {
    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        const reader = new FileReader()
        // 이미지가 로드가 된 경우
        reader.onload = e => {
            const previewImage = document.getElementById("preview-image")
            previewImage.src = e.target.result
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0])
    }
}
// input file에 change 이벤트 부여
const inputImage = document.getElementById("input-image")
inputImage.addEventListener("change", e => {
    readImage(e.target)
})
</script>
</html>