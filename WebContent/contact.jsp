<%@page import="common.db.InsertProductData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 스타일 인클루드 -->
<jsp:include page="/include/style.jsp" />

<style type="text/css">
.team-member {
	margin: 0 0 50px 50px;
}

.text-muted1 {
	color: #b3b3b3;
}

#mail {
	backgound: #3e3e2422;
	border-top: 1.5px solid #6bccc3 !important;
}

section h2.section-heading {
	border-bottom: 1px solid #6bccc3;
}

h1 {
	font-weight: 400 !important;
}

.team-member img {
	width: 150px;
	height: 150px;
	border: 3px solid #fff;
}

.team-member {
	margin-top: 25px;
	margin-bottom: 0;
	text-transform: none;
	text-align: center;
}
</style>

</head>
<body>
	<!-- 탑메뉴 인클루드 -->
	<jsp:include page="/include/top_menu.jsp" />

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/bg_5.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="./index.jsp">Home</a></span> <span>Contact</span>
						</p>
						<h1 class="mb-3">Contact</h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->

	<section class="ftco-section contact-section">
		<div class="container">
			<!-- 1행 -->
			<div class="row block-9 mb-4">
				<div class="col-lg-12 text-center">
					<br> <br>
					<h2 class="section-heading text-uppercase">The Best Choice For
						Your Trevel</h2>
					<h3 class="section-subheading text-muted">éteanger</h3>
				</div>
				<div class="col-md-12" id="earth">
					<div class="embed-responsive embed-responsive-16by9">
						<video autoplay muted loop class="embed-responsive-item">
							<source src=images/etranger_earth.mp4 type=video/mp4>
						</video>
					</div>
				</div>
			</div>
			<!--2행   -->
		

			<div class="row mt-5">

				<div class="col-md-7 pr-md-5 flex-column" id="map">
					<!--지도 -->
					<!--3행1열  -->

				</div>
				<!--3행 2열  -->
				<div class="col-md-4" style="margin-left: 50px; text-align: center;">
					<div class="row d-block flex-row">
						<h2 class="h4 mb-4">Contact Information</h2>
						
						
						<div class="col mb-2 d-flex py-2" style="background: white;">
							<div class="align-self-center">
								<p class="mb-0">
									<span>이메일 : </span> <a href="mailto:contactcsb119@gmail.com">contactcsb119@gmail.com</a>
								</p>
							</div>
						</div>
						
						<!--문의하기 버튼  -->
						<div class="col mb-2 d-flex py-2"
							style="background: white; padding-left: 5rem;">
							<div class="align-self-center">
								<div class="form-group">
									<a href="#layer2Email" class="btn_email"> <input type="submit" value="Contact Us"
													class="btn btn-primary py-3 px-5"></a>
								</div>
							</div>
						</div>
						<!--  -->
						<!--문의메일 딤처리 레이어  -->
						<div class="dim-layerEmail">
							<div class="dimBgEmail"></div>
							<div id="layer2Email" class="pop-layerEmail">
								<div class="pop-containerEmail">
									<div class="pop-contsEmail">
										<!--content //-->
										<form action="ContactEmail.ma" method="post"
											name="contact_mail_form" onsubmit="return validEmail()">
											<div class="form-group">
												<input type="text" class="form-contact" id="receiveEmail"
													name="receiveEmail" placeholder="회신받을 메일주소">
											</div>
											<div class="form-group">
												<input type="text" class="form-contact" id="subject"
													name="subject" placeholder="문의 제목">
											</div>
											<div class="form-group">
												<textarea name="content" id="content" cols="20" rows="7"
													class="form-contact2" placeholder="문의하실 내용을 적어주세요 :)"></textarea>
											</div>
											<div class="form-group">
												<input type="submit" value="문의하기"
													class="btn btn-primary py-3 px-5">
											</div>
											<div class="btn-rEmail">
												<a href="#" id="btnPopUpCloseEmail"
													class="btn py-1 px-2 btn-primary">창 닫기</a>
											</div>
										</form>
										<!--// content-->
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- footer 인클루드 -->
	<jsp:include page="/include/footer.jsp" />

	<!-- loader 인클루드 -->
	<jsp:include page="/include/loader.jsp" />
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=338d5b0fcaa6b7b36455221b4a956aa2&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript">
		function validEmail() {
			const receiveEmail = $('#receiveEmail').val();
			const subject = $('#subject').val();
			const content = $('#content').val();

			if (receiveEmail.length == 0) {
				alert('회신받으실 메일주소를 입력해주세요 :)');
				return false;
			}
			if (subject.length == 0) {
				alert('문의 제목을 입력해주세요 :)');
				return false;
			}
			if (content.length == 0) {
				alert('문의 내용을 입력해주세요 :)');
				return false;
			}
		}
	</script>


	<script type="text/javascript">
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(35.1584089, 129.0620526), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		//마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(35.1584089, 129.0620526);
		//마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});
		//마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		var iwContent = '<div>&emsp;&emsp; etranger <br>&emsp;&emsp;아시아 본사<br></div>',
		// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		iwPosition = new kakao.maps.LatLng(35.1584089, 129.0620526); //인포윈도우 표시 위치입니다
		//인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			position : iwPosition,
			content : iwContent
		});
		//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
	</script>

</body>
</html>