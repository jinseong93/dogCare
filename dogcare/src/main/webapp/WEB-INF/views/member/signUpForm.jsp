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
  
<script type="text/javascript">
	function M_idChk() {
		if (!frm.M_id.value) {
			alert("아이디를 입력한 후에 체크 하세요"); frm.M_id.focus();
			return false;  // action하지마라
		}
		// id ajax
		$.post('idChk.do', "M_id="+frm.M_id.value, function(data) {
			$('#idChk1').html(data);
		});
	}
	
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
	
  	function chk1() {
		if (frm.M_password.value != frm.M_password2.value) {
			alert("암호와 암호확인이 서로 다릅니다");
			frm.M_password.value = "";
			frm.M_password2.value = "";
			frm.M_password.focus();
			return false;
			}
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
 
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

     <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">회원가입</h2>
                        
                        <form method="POST" class="register-form" id="register-form" action="signUp.do" name="frm" onsubmit="return chk1()">
                            <div class="form-group" style="display: flex; margin-bottom: 5px;">
                                <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="M_id" placeholder="이메일 형식(example@ex.com)" style="width: 70%"/>                         
                                <input class="form-control" type="button" value="중복확인" id="idchk" onclick="M_idChk()" style="width: 30%">
                            </div>
                             <div class="form-group">
                                 <div id="idChk1" class="err" style="font-size: 15px"></div>
                            </div>                       
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="M_password" id="pass" placeholder="비밀번호(6~15)자리" minlength="6" maxlength="15"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="M_password2" id="re_pass" placeholder="비밀번호 확인"/>
                            </div>
                             <div class="form-group" style="display: flex; margin-bottom: 5px;">
                                <label for="name"><i class="zmdi zmdi-mood"></i></label>
                                <input type="text" name="M_nickname" placeholder="닉네임" style="width: 70%"/>
                                <input class="form-control" type="button" value="중복확인" id="nickChk" onclick="M_nicknameChk()" style="width: 30%">
                            </div>
                            <div class="form-group">
                                 <div id="nickChk1" class="err" style="font-size: 15px"></div>
                            </div> 
                             <div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="M_gender" required="required"> 
                               		<option>[성별]</option>
                                	<option value="남자">남자</option>
                                	<option value="여자">여자</option>
                                </select>
                            </div>
							<div class="form-group">
                                <label><i class="zmdi zmdi-male-female"></i></label>
                                <select name="M_age" required="required"> 
                               		<option>[연령대]</option>
                               		<option value="10~19">10~19</option>
                                	<option value="20~29">20~29</option>
                                	<option value="30~39">30~39</option>
                                	<option value="40~49">40~49</option>
                                	<option value="50~49">50~59</option>
                                </select>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>                          
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="resources/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="signInForm.do" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>

  </main><!-- End #main -->
 </br>
 </br>
 </br>
 </br>
 <footer><jsp:include page="../footer.jsp"></jsp:include></footer>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>