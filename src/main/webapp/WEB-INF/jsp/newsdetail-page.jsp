<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="example.models.News"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chi Tiết</title>
<!-- Bootstrap -->
<link href="static/public/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="static/public/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<script src="static/public/jQuery/jquery-3.2.1.min.js"></script>
<script src="static/public/js/bootstrap.min.js"></script>
<script src="static/ckeditor_4.9.0_full/ckeditor/ckeditor.js"></script>

<!-- custom design  -->
<link rel="stylesheet" href="static/public/css/home.css">
<link rel="stylesheet" href="static/public/css/mycss.css">
<script src="static/public/js/homejs.js"></script>
<link rel="stylesheet"  href="static/jquery-confirm-v3.3.0/jquery-confirm-master/css/jquery-confirm.css">
<script type="text/javascript"
	src="static/jquery-confirm-v3.3.0/jquery-confirm-master/js/jquery-confirm.js"></script>
<style type="text/css">
body {
	background: white;
}

.news h1 {
	text-align: center;
	font: normal bold 30px/30px Times New Roman, serif;
	color: #0AAF53;
}

.news h2 {
	text-align: center;
	font: normal bold 30px/30px Times New Roman, serif;
	color: #0AAF53;
}

.news p {
	font: normal normal 16px/30px Georgia, serif;
	color: #000;
}

.author a {
	font: italic bold 16px/30px Georgia, serif;
}

.price {
	width: 100%;
	font-size: 25px;
	font-weight: 300;
	display: block;
	text-align: center;
	padding: 30px 0 10px;
}

.note {
    color: gray;
    font-size: 10px;
    font-style: italic;
    font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>

<body>
	<div class="headerpage">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-6 col-sm-4 col-md-4">
					<img class="img-responsive"
						src="static/public/images/home/Logo.png" alt="Chania">
				</div>
				<div
					class="col-xs-6 col-sm-4 col-md-4 col-md-offset-4 col-xs-offset-0 aline-t">
					<h4 class="text-right">
						<strong> Social Network</strong>
					</h4>
					<div class="row">
						<div class="col-xs-12 col-md-6 col-md-offset-6 col-xs-offset-0">
							<a target="_blank" href="https://www.facebook.com/"
								class="fa fa-facebook icon-face"></a> <a target="_blank"
								href="https://www.google.com.vn/" class="fa fa-google icon-goo"></a>
							<a target="_blank" href="https://twitter.com/"
								class="fa fa-twitter icon-tw"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Website Tin Tức</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/"><i
							class="fa fa-home"></i> Trang Chủ</a></li>
					<li class="active"><a href="news"><i class="fa fa-newspaper-o"></i> Tin
							tức</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%
						if (session.getAttribute("SESSION_FULL_NAME") == null) {
					%>
					<li><a href="#"><span class="fa fa-sign-in"></span> Đăng
							kí</a></li>
					<li><a href="login"><span class="fa fa-sign-out"></span>
							Đăng nhập</a></li>
					<%
						} else {
					%>
					<%
						String sSession = session.getAttribute("SESSION_FULL_NAME").toString();
					%>
					<li><a href="dashboard">Trang Admin</a></li>
					<li><a href="#"><span class="fa fa-sign-in"></span> <%=sSession%></a></li>
					<li><a href="logout"><span class="fa fa-sign-out"></span>
							Đăng xuất</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<div id="first-slider" class="">
		<div id="carousel-example-generic"
			class="carousel slide carousel-fade">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class=""></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"
					class=""></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"
					class=""></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<!-- Item 1 -->
				<div class="item slide1">
					<div class="row">
						<div class="container">
							<div class="col-md-7 text-left">
								<h3 data-animation="animated bounceInDown" class="">New
									Technology</h3>
								<h4 data-animation="animated bounceInUp" class=""></h4>
							</div>
							<div class="col-md-5 text-right">
								<img style="max-width: 200px;"
									 data-animation="animated zoomInLeft"
									 src="static/public/images/home/window-domain.png" class="resp">
							</div>
						</div>
					</div>
				</div>
				<!-- Item 2 -->
				<div class="item slide2 active">
					<div class="row">
						<div class="container">
							<div class="col-md-7 text-left">
								<h3 data-animation="animated bounceInDown" class="">World
									Technology Trends</h3>
								<h4 data-animation="animated bounceInUp" class=""></h4>
							</div>
							<div class="col-md-5 text-right">
								<img style="max-width: 200px;"
									data-animation="animated zoomInLeft"
									src="static/public/images/home/rack-server-unlock.png"
									class="resp">
							</div>
						</div>
					</div>
				</div>
				<!-- Item 3 -->
				<div class="item slide3">
					<div class="row">
						<div class="container">
							<div class="col-md-7 text-left">
								<h3 data-animation="animated bounceInDown" class="">IOT and
									API are growing rapidly</h3>
								<h4 data-animation="animated bounceInUp" class=""></h4>
							</div>
							<div class="col-md-5 text-right">
								<img style="max-width: 200px;"
									data-animation="animated zoomInLeft"
									src="static/public/images/home/globe-network.png" class="resp">
							</div>
						</div>
					</div>
				</div>
				<!-- Item 4 -->
				<div class="item slide4">
					<div class="row">
						<div class="container">
							<div class="col-md-7 text-left">
								<h3 data-animation="animated bounceInDown" class="">Creativity
									never ceases</h3>

								<h4 data-animation="animated bounceInUp" class=""></h4>

							</div>
							<div class="col-md-5 text-right">
								<img style="max-width: 200px;"
									data-animation="animated zoomInLeft"
									src="static/public/images/home/internet-speed.png" class="resp">
							</div>
						</div>
					</div>
				</div>
				<!-- End Item 4 -->
			</div>
			<!-- End Wrapper for slides-->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <i class="fa fa-angle-left"></i><span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <i class="fa fa-angle-right"></i><span
				class="sr-only">Next</span>
			</a>

		</div>
	</div>

	<!--   <hr class="linehr"> -->
	<div class="page-panel">
		<div style="" class="container news">
			<!--  -->
			<%
				News news = new News();
				if (request.getAttribute("take-news") != null) {
					news = (News) request.getAttribute("take-news");
				}
			%>

			<br>
			<div class="row">
				<br>
				<div class="col-md-3 col-lg-3 col-xs-12">
					<img src="static/public/images/blossom.jpg" alt="warning"> <br>
					<img src="static/public/images/blossom.jpg" alt="warning"> <br>
					<img src="static/public/images/blossom.jpg" alt="warning">
				</div>
				<div class="col-md-6 col-lg-6 col-xs-12">
					<input type="hidden" id="id-news" value=<%=news.getId() %>>
					<div id="news-content">
						<%=news.getNews_content()%>
					</div>
					<%
						if (session.getAttribute("SESSION_FULL_NAME") != null) {
					%>
					<form id="frm-editText1" class="ck-form" style="display: none;">
						<textarea rows="" cols="" id="txt1"></textarea>
						<br>
						<div style="text-align: center; margin-bottom: 10px;">
							<button type="button" class="btn btn-success" id="btn-saveText1">Save</button>
							<button type="button" class="btn btn-warning"
								id="btn-cancleText1">Cancel</button>
						</div>
					</form>
					<div class="btn-edit" style="margin-bottom: 10px;">
						<button class="btn btn-success" id="btn-editText1">
							<i class="fa fa-edit"></i>
						</button>
					</div>
					<%
						}
					%>
					<div class="row">
						<img src="https://drive.google.com/uc?export=view&id=<%=news.getNews_image()%>" alt=""
							style="width: 100%; height: 30%;">
					</div>
					<br>
					<div id="linkdow">
						<p>
							Tải tệp đính kèm <a
								href="https://drive.google.com/uc?export=view&id=<%=news.getNews_file()%>">tại
								đây</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-12 col-lg-3">
					<div class="heading">
						<h2 style="background-color: #38A8CE; color: #fff">Tin tức mới
							nhất</h2>
					</div>
					<div class="news-body">
						<div class="row">
							<div class="col-md-5">
								<img class="img-rounded" src="static/public/images/image.PNG"
									 alt="Warning">
							</div>
							<div class="col-md-7">
								<h4>
									<a style ="font-size: 16px;" class="cato-title" href="#">Thực phẩm sạch trong cuộc sống</a>
								</h4>
								<div class="note pull-right">Date Created :
									25/03/2019</a>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-5">
								<img class="img-rounded" src="static/public/images/n4.jpg"
									 alt="Warning">
							</div>
							<div class="col-md-7">
								<h4>
									<a style ="font-size: 16px;" class="cato-title" href="#">Cà phê cùng người nổi tiếng</a>
								</h4>
								<div class="note pull-right">Date Created :
									25/03/2019</a>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-5">
								<img class="img-rounded" src="static/public/images/self.png"
									 alt="Warning">
							</div>
							<div class="col-md-7">
								<h4>
									<a style ="font-size: 16px;" class="cato-title" href="#">Ý tưởng trong đời sống hiện đại</a>
								</h4>
								<div class="note pull-right">Date Created :
									25/03/2019</a>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-5">
								<img class="img-rounded" src="static/public/images/business.PNG"
									 alt="Warning">
							</div>
							<div class="col-md-7">
								<h4>
									<a style ="font-size: 16px;" class="cato-title" href="#">Câu chuyện làm giàu</a>
								</h4>
								<div class="note pull-right">Date Created :
									25/03/2019</a>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-5">
								<img class="img-rounded" src="static/public/images/home2.jpg"
									 alt="Warning">
							</div>
							<div class="col-md-7">
								<h4>
									<a style ="font-size: 16px;" class="cato-title" href="#">Cây trồng và đời sống</a>
								</h4>
								<div class="note pull-right">Date Created :
									25/03/2019</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="author pull-right">
				<a href="">Theo WorkShop WebSite <small>- 19/04/2019</small></a>
			</div>
			<hr>
			<br>
			<div class="newss home">
				<h2>Chủ đề Nổi bật</h2>
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="price_card alpha">
							<div class="header">
								<!-- <span class="price">Tháng 1</span> -->
								<span class="name">Tin tức thể thao</span>
							</div>
							<ul class="features">
								<a href="#">
									<li>Messi vượt Casillas, độc chiếm một kỷ lục ở La Liga</li>
								</a>
								<a href="#">
									<li>Man City vào chung kết Cup FA</li>
								</a>
								<a href="#">
									<li>Những thất bại lớn nhất trong làng thể thao năm 2018-2019</li>
								</a>
								<a href="#">
									<li>Tuyển nữ Việt Nam thắng Hong Kong ở vòng loại Olympic</li>
								</a>

							</ul>
							<button>Chi Tiết</button>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="price_card bravo">
							<div class="header">
								<!-- <span class="price">Tháng 2</span> -->
								<span class="name">Tin tức giải trí</span>
							</div>
							<ul class="features">
								<a href="#">
									<li>Nhan sắc Hoa hậu Điện ảnh Thanh Xuân ngày ấy - bây giờ</li>
								</a>
								<a href="#">
									<li>Diễn viên 'Game of Thrones' mặc đẹp với đầm ảo giác</li>
								</a>
								<a href="#">
									<li>Dàn mỹ nhân của 'Thiên Long Bát Bộ' 2019</li>
								</a>
								<a href="#">
									<li>James Jirayu - 'Hoàng tử Thái Lan' được nhiều thiếu nữ mến mộ</li>
								</a>
							</ul>
							<button>Chi Tiết</button>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="price_card charlie">
							<div class="header">
								<!-- <span class="price">Tháng 3</span> -->
								<span class="name">Tin tức thế giới</span>
							</div>
							<ul class="features">
								<a href="#">
									<li>Cậu bé Mỹ có triệu người hâm mộ ở Trung Quốc</li>
								</a>
								<a href="#">
									<li>Nỗi lo lắng của Mỹ khi Putin ngỏ ý Nga gia nhập NATO năm 2000</li>
								</a>
								<a href="#">
									<li>Bộ trưởng Tư pháp Mỹ bị cáo buộc thiên vị Trump trong điều tra về Nga</li>
								</a>
								<a href="#">
									<li>Bé trai Nga 8 tuổi nổi tiếng sau khi bỏ nhà đi 'vòng quanh thế giới'</li>
								</a>
							</ul>
							<button>Chi Tiết</button>
						</div>
					</div>
				</div>
			</div>
			<div class="content-news-list home">
				<h2>Tin tức nổi bật</h2>
				<div class="row">
					<div class="col-md-4">
						<img src="static/public/images/home/h1.jpg" style="width: 400px; height: 250px">
						<a
								title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus."
								href="#"><i class="fa fa-angle-right"></i> Cuộc thi VNEXPRESS MARATHON 2019 </a></li>
					</div>
					<div class="col-md-4">
						<img src="static/public/images/home/space.jpg" style="width: 400px; height: 250px">
						<a
								title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus."
								href="#"><i class="fa fa-angle-right"></i> Sinh nhật 18 tuổi VnExpress </a></li>
					</div>
					<div class="col-md-4">
						<img src="static/public/images/home/spotlight.jpeg" style="width: 400px; height: 250px">
						<a
								title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus."
								href="#"><i class="fa fa-angle-right"></i> Hàng ngàn tân kĩ sư tốt nghiệp ra trường </a></li>
					</div>
				</div>
			</div>
			<hr>
			<div class="page">
				<div class="page__demo">
					<div class="main-container page__container">
						<div class="demo">
							<ul class="pagination pagination_type1 pagination_type5">
								<li class="pagination__item"><a href="#0"
																class="pagination__number">←<span
										class="pagination__control pagination__control_prev">prev</span></a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">1</a></li>
								<li class="pagination__item"><span
										class="pagination__number pagination__number_active">2</span></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">3</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">4</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">5</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">6</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">7</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">8</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">9</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number">10</a></li>
								<li class="pagination__item"><a href="#0"
																class="pagination__number"><span
										class="pagination__control pagination__control_next">next</span>→</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
	</div>
	<footer>
		<div class="footer-home">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<h2>Website Tin Tức - Đại học Sư phạm Kĩ thuật Thành
						Phố Hồ Chí Minh</h2>
					<p>Website được thiết kiế bởi ...</p>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<h2>Liên Hệ Với Chúng Tôi</h2>
					<h6>
						<strong>Địa Chỉ :</strong> Số 01, Võ Văn Ngân, Phường Linh Chiểu,
						Quận Thủ Đức, Thành Phố Hồ Chí Minh
					</h6>
					<h6>
						<strong>Điện Thoại :</strong> (+84) 1684 648 350
					</h6>
					<h6>
						<strong>E-mail :</strong> trungtamtintuc@gmail.com
					</h6>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<h5>CopyRight &copy; 2019 - Trung tâm tin tức Việt Nam
						Express</h5>
				</div>
			</div>
		</div>
		<div class="icon-footer">
			<div class="container ">
				<ul class="social-footer list-unstyled list-inline pull-right">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-skype"></i></a></li>
					<li><a href="#"><i class="fa fa-github"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube"></i></a></li>
					<li><a href="#"><i class="fa fa-dropbox"></i></a></li>
				</ul>
			</div>
		</div>

	</footer>

	<script>
		$(document).ready(function() {
			CKEDITOR.replace("txt1");
			$("#btn-editText1").click(function() {
				editText1();
			});
			$("#btn-cancleText1").click(function() {
				$("#frm-editText1").hide();
				$("#news-content").show();
				$("#btn-editText1").show();
			});
			$("#btn-saveText1").click(function(){
				AjaxSaveNewsContent();
			})
		});
		function editText1() {
			var $content1 = $("#news-content").html();
			$("#news-content").hide();
			$("#frm-editText1").show();
			$("#btn-editText1").hide();
			CKEDITOR.instances.txt1.setData($content1);
		}
		
		function AjaxSaveNewsContent(){
			var $content1=CKEDITOR.instances.txt1.getData();
			$.confirm({
    			title: 'Xác nhận!',
                content: 'Do you want to save this content in this page?',
                buttons : {
                	Confirm : function(){
                		$.ajax({
                			type: "POST",
                	        data : {
                	        	id : $("#id-news").val(),
                	        	content: $content1
                	        },
                	        url: "/SaveNewsContent",
                	        dataType: 'json',
                	        cache: false,
                	        timeout: 600000,
                	        success: function (result){
                	        	if(result!=null){
                	        		$.alert("Home page be saved successfully!");
                	        		$('#news-content').html('');
                	        		$('#news-content').html(result.news_content);
                	        		$("#frm-editText1").hide();
                	    			$("#news-content").show();
                	    			$("#btn-editText1").show();
                	        	}
                	        	else $.alert("You have an error in this process. Pleases try again!");
                	        }
                		}) 
                	},
                    Cancel : function(){
                    	$.alert("This task can not be save!");
                    }
                }
    		
    		});
		}
	</script>
</body>

</html>