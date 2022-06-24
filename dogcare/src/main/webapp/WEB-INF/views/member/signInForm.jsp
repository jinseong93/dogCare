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
  
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	//e9918ba68bd775fc895635b7c43f6c06 profile_nickname	 account_email gender age_range birthday
	window.Kakao.init("e9918ba68bd775fc895635b7c43f6c06");
	
	function kakaoLogin() {
		window.Kakao.Auth.login({
			scope:'profile_nickname, account_email, gender, age_range',
			success: function(response) {
				console.log(response);
				window.Kakao.API.request({
					url:'/v2/user/me',
					success: res => {
						const kakao_account = res.kakao_account;
						console.log(kakao_account.email);
						/* Kakao.Auth.setAccessToken(kakao.access_token); */
						location.href="Klogin.do?M_id="+kakao_account.email+"&M_gender="+kakao_account.gender+"&M_nickname="+kakao_account.profile.nickname+"&M_age="+kakao_account.age_range;
						
					}
				});
			}
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
	        	    <li><a href="signUpForm.do" style="color: black;">회원가입</a></li>
	      	    </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

       <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="resources/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="signUpForm.do" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">로그인</h2>
                        <form method="POST" action="signIn.do" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="M_id" id="your_name" placeholder="아이디"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="M_password" id="your_pass" placeholder="암호"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                             <div class="social-login">
                            <span class="social-label">Or login with</span>                      
                            <ul class="socials">
                                <li onclick="kakaoLogin();"><a><img src="resources/images/kakao_login_medium_narrow.png" alt=""></a></li>
                            </ul>
                        </div>
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