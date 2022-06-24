<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Lonely Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
<style type="text/css">
#form-control {
	border: solid 2px;
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
        	    <li><a href="walkCare.do">산책 돌봄</a></li>
        	    <li><a href="pickUpCare.do" style="color: black;">픽업 돌봄</a></li>
        	    
      	    </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->
<div class="container" style="padding-top: 50px">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<div class="row mb-5">
								<c:forEach var="sa" items="${list}">
								<div class="col-sm-6" style="display:flex; padding-bottom: 20px;  padding-top: 20px" >
									 <img style="height: 125px; width: 32%; border: solid gray; border-radius: 30%" src="resources/images/${sa.d_photo }" alt="dog up image">
									 <ul class="list-group list-group-flush" style="width: 63%; margin-left: 20px;">
										<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
											<h6 style="font-size: 20px;">${sa.m_address }</h6>
										</li>
										
										<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
											<h6>${sa.d_name } ${sa.s_type }</h6>
										</li>
										<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
											<button class="btn btn-outline-primary" onclick = "location.href='viewCare.do?S_num=${sa.s_num}'">상세보기</button>
										</li>
									</ul>
								</div>
								</c:forEach>
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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>
</html>