<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%> 
      <%@page import="java.util.*" %>
    <%@page import="Shujuku.dingyi" %>
    <%@page import="com.fengye.Feng" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript"> 
 function tocar(id){
		alert(id);
		$.ajax({
	    type:'get',
	    
		url: "/DengLu/fen?iD="+id,
		success : function(result) {
			alert(result);
			window.location.href="../NewFile2.jsp";
		},
		error : function() {
			alert("发生了错误");

		}

	}); 
	} </script>
<%
/* List<dingyi> list=(List<dingyi>)session.getAttribute("pagebean");
request.setAttribute("stulist", list); */
 %>
<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->
		<!-- all css here -->
		<!-- style css -->
		<link rel="stylesheet" href="style.css">
		<!-- modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>


</head>
<body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- header section start -->
		<header>
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="left floatleft">
								<ul>
									<li>
										<i class="fa fa-phone"></i> 
										+11 (019) 25184203
									</li>
									<li>
										<i class="fa fa-envelope-o"></i> 
										rideo@mail.com
									</li>
								</ul>
							</div>
							<div class="right floatright">
								<ul>
									<li>
										<form action="#">
											<button type="submit">
												<i class="fa fa-search"></i>
											</button>
											<input type="search" placeholder="Search" />
										</form>
									</li>
									<li>
										<i class="fa fa-user"></i> 
										<a href="my-account.html">Account</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sticky-menu" class="header-bottom">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 header-bottom-bg">
							<div class="logo floatleft">
								<a href="index.html">
									<img src="img/logo.png" alt="Rideo" />
								</a>
							</div>
							<div class="mainmenu text-center floatleft">
								<nav>
									<ul>
										<li><a href="index.html">Home</a></li>
										<li>
											<a href="shop.html">products</a>
										</li>
										<li><a href="about.html">about</a></li>
										<li><a href="blog-1.html">blog</a>
											<ul>
												<li>
													<a href="blog-1.html">Blog Style One</a>
												</li>
												<li>
													<a href="single-blog.html">Single Blog</a>
												</li>
											</ul>
										</li>
										<li><a href="#">Pages</a>
											<ul>
												<li>
													<a href="/DengLu/jiaoben3447/index.html">Login</a>
												</li>
												<li>
													<a href="my-account.html">My account</a>
												</li>
												<li>
													<a href="checkout.html">CheckOut</a>
												</li>
												<li>
													<a href="wishlist.html">Wishlist</a>
												</li>
												<li>
													<a href="cart.html">Cart</a>
												</li>
												<li>
													<a href="about.html">About</a>
												</li>
												<li>
													<a href="contact.html">Contact</a>
												</li>
												<li>
													<a href="shop.html">Shop</a>
												</li>												
												<li>
													<a href="product-details.html">Product Details</a>
												</li>
												<li>
													<a href="error-404.html">404 Error</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="contact.html">contact</a>
										</li>
									</ul>
								</nav>
							</div>
							<!-- mobile menu start -->
							<div class="mobile-menu-area">
								<div class="mobile-menu">
									<nav id="dropdown">
										<ul>
											<li><a href="index.html">Home</a></li>
											<li>
												<a href="shop.html">products</a>
											</li>
											<li><a href="about.html">about</a></li>
											<li><a href="blog-1.html">blog</a>
												<ul>
													<li>
														<a href="blog-1.html">Blog Style One</a>
													</li>
													<li>
														<a href="single-blog.html">Single Blog</a>
													</li>
												</ul>
											</li>
											<li><a href="#">Pages</a>
												<ul>
													<li>
														<a href="login.html">Login</a>
													</li>
													<li>
														<a href="my-account.html">My account</a>
													</li>
													<li>
														<a href="checkout.html">CheckOut</a>
													</li>
													<li>
														<a href="wishlist.html">Wishlist</a>
													</li>
													<li>
														<a href="cart.html">Cart</a>
													</li>
													<li>
														<a href="about.html">About</a>
													</li>
													<li>
														<a href="contact.html">Contact</a>
													</li>
													<li>
														<a href="shop.html">Shop</a>
													</li>
													<li>
														<a href="shop-gird-left.html">Shop Left Gird View</a>
													</li>
													<li>
														<a href="product-details.html">Product Details</a>
													</li>
													<li>
														<a href="error-404.html">404 Error</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="contact.html">contact</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- mobile menu end -->
							<div class="cart-menu-area floatright">
								<ul>
									<li><a href="#"><i class="pe-7s-shopbag"></i> <span>2</span></a>
										<ul class="cart-menu">
											<li>
												<a href="cart.html"><img src="img/cart/1.png" alt="" /></a>
												<div class="cart-menu-title">
													<a href="cart.html"><h5>Mount POW C058 FG </h5></a>
													<span>1 x $2500</span>
												</div>
												<span class="cancel-item"><i class="fa fa-close"></i></span>
											</li>
											<li>
												<a href="cart.html"><img src="img/cart/1.png" alt="" /></a>
												<div class="cart-menu-title">
													<a href="cart.html"><h5>Mount POW C058 FG </h5></a>
													<span>1 x $2500</span>
												</div>
												<span class="cancel-item"><i class="fa fa-close"></i></span>
											</li>
											<li class="cart-menu-btn">
												<a href="cart.html">view cart</a>
												<a href="checkout.html">checkout</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
        <!-- header section end -->
		
		<!-- slider section start -->
		<div class="slider-area slider-one clearfix">
			<div class="slider" id="mainslider">
				<div data-src="img/slider/1.jpg">
					<div class="d-table">
						<div class="d-tablecell">
							<div class="container">
								<div class="row">
									<div class="col-xs-12">
										<div class="slide-text">
											<h1 class="animated fadeInDown">best cycling experience</h1>
											<div class="shape animated flipInX">
												<img src="img/slider/shape.png" alt="" />
											</div>
											<h4 class="animated fadeIn">become the world leader on the internet for the sport of cycling.</h4>
											<a class="shop-btn animated fadeInUp" href="shop.html">Shop Now</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div data-src="img/slider/2.jpg">
					<div class="d-table">
						<div class="d-tablecell">
							<div class="container">
								<div class="row">
									<div class="col-xs-12">
										<div class="slide-text">
											<h1 class="animated fadeInDown">best cycling experience</h1>
											<div class="shape animated flipInX">
												<img src="img/slider/shape.png" alt="" />
											</div>
											<h4 class="animated fadeIn">become the world leader on the internet for the sport of cycling.</h4>
											<a class="shop-btn animated fadeInUp" href="shop.html">Shop Now</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider section end -->
        <!-- featured section start -->
		<section class="featured-area featured-one section-padding">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-text-center">
						<div class="section-title text-center">
							<h3><span>Featured</span> products</h3>
							<div class="shape">
								<img src="img/icon/t-shape.png" alt="Title Shape" />
							</div>
							<p>It is a long established fact that a reader will be distracted by the readable content page when looking at its layout.</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="featured-slider single-products">
						<div class="single-slide">
							<div class="padding30">
								<div class="product-item">
									<div class="pro-img">
										<a href="product-details.html"><img src="img/products/1.png" alt="" /></a>
									</div>
									<div class="actions-btn">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
											<li>
												<a href="#"><i class="fa fa-heart"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div>
									<div class="product-title">
										<a href="product-details.html"><h5>Mount POW C058 FG</h5></a>
										<p>Price   <span>$730</span></p>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slide">
							<div class="padding30">
								<div class="product-item">
									<div class="pro-img">
										<a href="product-details.html"><img src="img/products/3.png" alt="" /></a>
									</div>
									<div class="actions-btn">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
											<li>
												<a href="#"><i class="fa fa-heart"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div>
									<div class="product-title">
										<a href="product-details.html"><h5>Mount POW C058 FG</h5></a>
										<p>Price   <span>$730</span></p>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slide">
							<div class="padding30">
								<div class="product-item">
									<div class="pro-img">
										<a href="product-details.html"><img src="img/products/2.png" alt="" /></a>
									</div>
									<div class="actions-btn">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
											<li>
												<a href="#"><i class="fa fa-heart"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div>
									<div class="product-title">
										<a href="product-details.html"><h5>Mount POW C058 FG</h5></a>
										<p>Price   <span>$730</span></p>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slide">
							<div class="padding30">
								<div class="product-item">
									<div class="pro-img">
										<a href="product-details.html"><img src="img/products/1.png" alt="" /></a>
									</div>
									<div class="actions-btn">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
											<li>
												<a href="#"><i class="fa fa-heart"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div>
									<div class="product-title">
										<a href="product-details.html"><h5>Mount POW C058 FG</h5></a>
										<p>Price   <span>$730</span></p>
									</div>
								</div>
							</div>
						</div>
						<div class="single-slide">
							<div class="padding30">
								<div class="product-item">
									<div class="pro-img">
										<a href="product-details.html"><img src="img/products/3.png" alt="" /></a>
									</div>
									<div class="actions-btn">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
											<li>
												<a href="#"><i class="fa fa-heart"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div>
									<div class="product-title">
										<a href="product-details.html"><h5>Mount POW C058 FG</h5></a>
										<p>Price   <span>$730</span></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- featured section end -->
        <!-- sell-up section start -->
		<section class="sell-up-area sell-up-one">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-4 ">
						<div class="shadow-l-r">
							<div class="sell-up-left">
								<h4>For summer Ride</h4>
								<h2>SALE UP <strong>40%</strong></h2>
								<hr class="line"/>
								<ul class="clearfix">
									<li>
										<span></span> With full custom accessories
									</li>
									<li>
										<span></span> Power booster gamming GPS support
									</li>
									<li>
										<span></span> Tube less tyre for batter riding
									</li>
									<li>
										<span></span> Capable strong tire & metal body
									</li>
								</ul>
								<a class="shop-btn" href="shop.html">Shop Now</a>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-offset-1 col-md-7">
						<div class="sell-up-right">
							<div class="single-sellup">
								<a href="product-details.html"><img src="img/products/u1.png" alt="" /></a>
							</div>
							<div class="single-sellup">
								<a href="product-details.html"><img src="img/products/u1.png" alt="" /></a>
							</div>
							<div class="single-sellup">
								<a href="product-details.html"><img src="img/products/u1.png" alt="" /></a>
							</div>
							<div class="single-sellup">
								<a href="product-details.html"><img src="img/products/u1.png" alt="" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- sell-up section end -->
        <!-- riding section start -->
		<section class="riding-area riding-one section-padding">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-text-center">
						<div class="section-title text-center">
							<h3><span>riding</span> accessories</h3>
							<div class="shape">
								<img src="img/icon/t-shape.png" alt="Title Shape" />
							</div>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="four-item riding-slider single-products">
						<div class="riding-item col-xs-12">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/r1.png" alt="Product" /></a>
									<div class="link-icon">
										<a href="product-details.html"><i class="fa fa-link"></i></a>
									</div>
								</div>
								<div class="riding-title clearfix">
									<div class="product-title text-left floatleft">
										<a href="product-details.html"><h5>Giro Cipher Helmet</h5></a>
										<p><span>$150</span></p>
									</div>
									<div class="actions-btn floatright">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="riding-item col-xs-12">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/r2.png" alt="Product" /></a>
									<div class="link-icon">
										<a href="product-details.html"><i class="fa fa-link"></i></a>
									</div>
								</div>
								<div class="riding-title clearfix">
									<div class="product-title text-left floatleft">
										<a href="product-details.html"><h5>Giro Cipher Helmet</h5></a>
										<p><span>$150</span></p>
									</div>
									<div class="actions-btn floatright">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="riding-item col-xs-12">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/r3.png" alt="Product" /></a>
									<div class="link-icon">
										<a href="product-details.html"><i class="fa fa-link"></i></a>
									</div>
								</div>
								<div class="riding-title clearfix">
									<div class="product-title text-left floatleft">
										<a href="product-details.html"><h5>Giro Cipher Helmet</h5></a>
										<p><span>$150</span></p>
									</div>
									<div class="actions-btn floatright">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="riding-item col-xs-12">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/r4.png" alt="Product" /></a>
									<div class="link-icon">
										<a href="product-details.html"><i class="fa fa-link"></i></a>
									</div>
								</div>
								<div class="riding-title clearfix">
									<div class="product-title text-left floatleft">
										<a href="product-details.html"><h5>Giro Cipher Helmet</h5></a>
										<p><span>$150</span></p>
									</div>
									<div class="actions-btn floatright">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="riding-item col-xs-12">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/r2.png" alt="Product" /></a>
									<div class="link-icon">
										<a href="product-details.html"><i class="fa fa-link"></i></a>
									</div>
								</div>
								<div class="riding-title clearfix">
									<div class="product-title text-left floatleft">
										<a href="product-details.html"><h5>Giro Cipher Helmet</h5></a>
										<p><span>$150</span></p>
									</div>
									<div class="actions-btn floatright">
										<ul class="clearfix">
											<li>
												<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- riding section end -->
        <!-- discount section start -->
		<section class="discount-area">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="discount-left">
							<h4>Promotional</h4>
							<h2>Discount <strong>UP TO 35%</strong></h2>
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form... or randomised words</p>
							<a class="shop-btn" href="shop.html">view more</a>
							<div class="count-text clearfix">
								<ul id="countdown-1">
									<li>
										<span class="days timenumbers">00</span>
										<p class="timeRefDays timedescription">days</p>
									</li>
									<li>
										<span class="hours timenumbers">00</span>
										<p class="timeRefHours timedescription">hrs</p>
									</li>
									<li>
										<span class="minutes timenumbers">00</span>
										<p class="timeRefMinutes timedescription">mins</p>
									</li>
									<li>
										<span class="seconds timenumbers">00</span>
										<p class="timeRefSeconds timedescription">secs</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6">
						<div class="discount-right">
							<img src="img/products/d1.png" alt="" />
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- discount section end -->
        <!-- best-sell section start -->
		<section class="best-sell-area best-sell-one section-padding-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-text-center">
						<div class="section-title text-center">
							<h3><span>best</span> sell</h3>
							<div class="shape">
								<img src="img/icon/t-shape.png" alt="Title Shape" />
							</div>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 text-center">
						<div class="tab-menu">
							<ul>
								<li class="active">
									<a data-toggle="tab" href="#bikes">Bikes <span>-</span></a>
								</li>
								<li>
									<a data-toggle="tab" href="#parts">Parts <span>-</span></a>
								</li>
								<li>
									<a data-toggle="tab" href="#man">Man <span>-</span></a>
								</li>
								<li>
									<a data-toggle="tab" href="#women">Women <span>-</span></a>
								</li>
								<li>
									<a data-toggle="tab" href="#accessories">Accessories</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="text-center tab-content">
						<div class="tab-pane fade in active" id="bikes">
							<div class="four-item single-products">
							 
							<c:forEach  items="${pagebean.list}"  var="q">
							   <div class="col-xs-12">
							
								 <div class="product-item">
										<div class="pro-img">
											<a href="product-details.html"><img src="${q.tupian}" alt="Product" /></a>
										</div>
										
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="javascript:tocar(${q.id})"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										
										<div class="riding-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>${q.xinghao}</h5></a>
												<p>Price: <span>${q.jiage} </span><del>$1800</del></p>
											</div>
										</div>
									
									   </div>
									
									
								</div>
						</c:forEach>
								
								
								<div class="col-xs-12">
									<div class="product-item">
										<div class="pro-img">
											<a href="product-details.html"><img src="${q.tupian}" alt="Product" /></a>
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="javascript:tocar(${q.id})"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="riding-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>${q.xinghao}</h5></a>
												<p>Price: <span>${q.jiage} </span><del>$1800</del></p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12">
									<div class="product-item">
										<div class="pro-img">
											<a href="product-details.html"><img src="${q.tupian}" alt="Product" /></a>
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="riding-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>${q.xinghao}</h5></a>
												<p>Price: <span>${q.jiage} </span><del>$1800</del></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	
	 

				<p>共有${pagebean.totalRecord}条记录, ${pagebean.totalpage}页  , 当前页：${pagebean.pageNum}</p>
		
<div class="page-normal">
	<span class="page-prev">&lt;</span>
	<span class="page-current">
	<!-- 如果为当前页，就没有上一页 -->
	
	   <a href="${pageContext.request.contextPath}/fenye?pageNum=1">首页</a>
	        
	         <c:if test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      
	      <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	      

	            
	            
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	    <!-- 如果当前页不是首页也不是最后一页，则有上一页和下一页 -->
	    <c:if  test="${sessionScope.pagebean.pageNum>1 && sessionScope.pagebean.pageNum<sessionScope.pagebean.totalpage}">
	       <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	       <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1"  var="i">
	         <c:if test="${sessionScope.pagebean.pageNum==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	           <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	          <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum+1}">下一页</a>
	    </c:if>
	    
	    
	    
	    <!--如果是最后一页，则只有上一页。没有下一页  -->
	   
	     
	   
	    <c:if  test="${sessionScope.pagebean.pageNum == sessionScope.pagebean.totalpage}">
	      <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.pageNum-1}">上一页</a>
	      <c:forEach  begin="${sessionScope.pagebean.start}"  end="${sessionScope.pagebean.end}"  step="1" var="i">
	         <c:if  test="${sessionScope.pagebean.pageNum ==i}">${i}</c:if>
	         <c:if test="${sessionScope.pagebean.pageNum != i }">
	            <a href="${pageContext.request.contextPath}/fenye?pageNum=${i}">${i}</a>
	         </c:if>
	      </c:forEach> 
	    </c:if>    
	    
	    <a href="${pageContext.request.contextPath}/fenye?pageNum=${sessionScope.pagebean.totalpage}">尾页</a>
	     
	</span>
	</div>
 
				<div class="row">
					<div class="col-xs-12 text-center">
						<div class="view-more">
							<a class="shop-btn" href="shop.html">Shop Now</a>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- best-sell section end -->
        <!-- arrival section start -->
		<section class="arrival-area arrival-one section-padding-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-text-center">
						<div class="section-title text-center">
							<h3><span>New</span> Arrival</h3>
							<div class="shape">
								<img src="img/icon/t-shape.png" alt="Title Shape" />
							</div>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid arrival-content">
				<div class="row text-center">
					<div class="col-xs-12 col-md-6 col-lg-4 arrival-left">
						<div class="single-arrival left">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/ssl.jpg" alt="Product" /></a>
								</div>
								<div class="tag-new">
									<img src="img/products/tag.png" alt="New Tag" />
								</div>
								<div class="actions-btn">
									<ul class="clearfix">
										<li>
											<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-heart"></i></a>
										</li>
										<li>
											<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
										</li>
									</ul>
								</div>
								<div class="arrival-title clearfix">
									<div class="product-title">
										<a href="product-details.html"><h5>Mountain Bike MZ 5500J</h5></a>
										<p>Price: <span>$3200.00 </span><del>$3600.00</del></p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 hidden-md col-lg-4 arrival-middle">
						<div class="single-arrival middel">
							<div class="row">
								<div class="col-sm-6">
									<div class="product-item">
										<div class="pro-img">
											<a href="product-details.html"><img src="img/products/ss.jpg" alt="Product" /></a>
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="arrival-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>Mountain Bike</h5></a>
												<p>Price: <span>$3200</span><del>$3600</del></p>
											</div>
										</div>
									</div>
									<div class="product-item margin-top">
										<div class="pro-img">
											<a href="product-details.html"><img src="img/products/ss.jpg" alt="Product" /></a>
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="arrival-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>Mountain Bike</h5></a>
												<p>Price: <span>$3200</span><del>$3600</del></p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="product-item">
										<div class="pro-img">
											<a href="product-details.html"><img src="img/products/ss.jpg" alt="Product" /></a>
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="arrival-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>Mountain Bike</h5></a>
												<p>Price: <span>$3200</span><del>$3600</del></p>
											</div>
										</div>
									</div>
									<div class="product-item margin-top">
										<div class="pro-img">
											<a href="product-details.html"><img src="img/products/ss.jpg" alt="Product" /></a>
										</div>
										<div class="tag-new">
											<img src="img/products/tag.png" alt="New Tag" />
										</div>
										<div class="actions-btn">
											<ul class="clearfix">
												<li>
													<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
												</li>
												<li>
													<a href="#"><i class="fa fa-heart"></i></a>
												</li>
												<li>
													<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
												</li>
											</ul>
										</div>
										<div class="arrival-title clearfix">
											<div class="product-title">
												<a href="product-details.html"><h5>Mountain Bike</h5></a>
												<p>Price: <span>$3200</span><del>$3600</del></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12  col-md-6 col-lg-4 arrival-left">
						<div class="single-arrival right">
							<div class="product-item">
								<div class="pro-img">
									<a href="product-details.html"><img src="img/products/ssr.jpg" alt="Product" /></a>
								</div>
								<div class="tag-new">
									<img src="img/products/tag.png" alt="New Tag" />
								</div>
								<div class="actions-btn">
									<ul class="clearfix">
										<li>
											<a href="cart.html"><i class="fa fa-shopping-cart"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-heart"></i></a>
										</li>
										<li>
											<a href="#" data-toggle="modal" data-target="#quick-view"><i class="fa fa-eye"></i></a>
										</li>
									</ul>
								</div>
								<div class="arrival-title clearfix">
									<div class="product-title">
										<a href="product-details.html"><h5>Mountain Bike MZ 5500J</h5></a>
										<p>Price: <span>$3200.00 </span><del>$3600.00</del></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- arrival section end -->
        <!-- blog section start -->
		<section class="blog-area blog-one section-padding">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-text-center">
						<div class="section-title text-center">
							<h3><span>FROM</span> BLOG</h3>
							<div class="shape">
								<img src="img/icon/t-shape.png" alt="Title Shape" />
							</div>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="blog-item">
							<div class="blog-img">
								<a href="product-details.html"><img src="img/blog/1.jpg" alt="Blog" /></a>
							</div>
							<div class="blog-text clearfix">
								<hr class="line"/>
								<a href="single-blog.html"><h4>Lights & Motion Night Light</h4></a>
								<p><span>15 dec </span></p>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form... </p>
								<div class="view-more">
									<a class="shop-btn" href="single-blog.html">View More</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4">
						<div class="blog-item middel">
							<div class="blog-text clearfix">
								<hr class="line"/>
								<a href="single-blog.html"><h4>Lights & Motion Night Light</h4></a>
								<p><span>15 dec </span></p>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form... </p>
								<div class="view-more">
									<a class="shop-btn" href="single-blog.html">View More</a>
								</div>
							</div>
							<div class="blog-img">
								<a href="product-details.html"><img src="img/blog/2.jpg" alt="Blog" /></a>
							</div>
						</div>
					</div>
					<div class="col-xs-12 hidden-sm col-md-4">
						<div class="blog-item">
							<div class="blog-img">
								<a href="product-details.html"><img src="img/blog/3.jpg" alt="Blog" /></a>
							</div>
							<div class="blog-text clearfix">
								<hr class="line"/>
								<a href="single-blog.html"><h4>Lights & Motion Night Light</h4></a>
								<p><span>15 dec </span></p>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form... </p>
								<div class="view-more">
									<a class="shop-btn" href="single-blog.html">View More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
        <!-- blog section end -->
		<!-- quick view start -->
		<div class="product-details quick-view modal animated zoomIn" id="quick-view">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="d-table">
							<div class="d-tablecell">
								<div class="modal-dialog">
									<div class="main-view modal-content">
										<div class="modal-footer" data-dismiss="modal">
											<span>x</span>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="left">
													<!-- Single-pro-slider Big-photo start -->
													<div class="quick-img">
														<img src="img/products/l1.jpg" alt="" />
													</div>	
													<!-- Single-pro-slider Big-photo end -->
												</div>
											</div>
											<div class="col-sm-6">
												<div class="right">
													<div class="singl-pro-title">
														<h3>GT Sensor Carbon Jenson </h3>
														<h1>$1700.00</h1>
														<hr />
														<p>doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
														<hr />
														<div class="color-brand clearfix">
															<div class="s-select">
																<div class="custom-select">
																	<select class="form-control">
																		<option>Color</option>
																		<option>Red </option>
																		<option>Green </option>
																		<option>Blue</option>
																	</select>
																</div>
															</div>
															<div class="s-select">
																<div class="custom-select">
																	<select class="form-control">
																		<option>Brend</option>
																		<option>Men </option>
																		<option>Fashion </option>
																		<option>Shirt</option>
																	</select>
																</div>
															</div>
															<div class="s-select s-plus-minus">
																<form action="#" method="POST">
																	<div class="plus-minus">
																		<a class="dec qtybutton">-</a>
																		<input type="text" value="02" name="qtybutton" class="plus-minus-box">
																		<a class="inc qtybutton">+</a>
																	</div>
																</form>
															</div>
														</div>
														<div class="actions-btn">
															<ul class="clearfix text-center">
																<li>
																	<a href="cart.html"><i class="fa fa-shopping-cart"></i> add to cart</a>
																</li>
																<li>
																	<a href="cart.html"><i class="fa fa-heart-o"></i></a>
																</li>
																<li>
																	<a href="#"><i class="fa fa-compress"></i></a>
																</li>
																<li>
																	<a href="#"><i class="fa fa-share-alt"></i></a>
																</li>
															</ul>
														</div>
														<hr />
														<div class="categ-tag">
															<ul class="clearfix">
																<li>
																	CATEGORIES: 
																	<a href="#">Bike,</a> <a href="#">Cycle,</a> <a href="#">Ride,</a> <a href="#">Mountain</a>
																</li>
																<li>
																	TAG: 
																	<a href="#">Ride,</a> <a href="#">Helmet,</a> <a href="#">cycle,</a> <a href="#">bike</a> 
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- quick view end -->
		<!-- footer section start -->
		<footer>
			<!-- brand logo area start -->
			<div class="brand-logo-area">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="brand-logo">
								<ul class="clearfix">
									<li>
										<a href="#"><img src="img/brand/1.png" alt="Brand Logo" /></a>
									</li>
									<li>
										<a href="#"><img src="img/brand/2.png" alt="Brand Logo" /></a>
									</li>
									<li>
										<a href="#"><img src="img/brand/3.png" alt="Brand Logo" /></a>
									</li>
									<li>
										<a href="#"><img src="img/brand/4.png" alt="Brand Logo" /></a>
									</li>
									<li>
										<a href="#"><img src="img/brand/5.png" alt="Brand Logo" /></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- brand logo area end -->
			<!-- contact area start -->
			<div class="map-contact clearfix">
				<div class="googleMap-info half-width">
					<div id="googleMap"></div>
				</div>
				<div class="footer-contact half-width">
					<form action="#">
						<div class="input-text">
							<input type="text" name="name" placeholder="Your Name" />
							<input type="text" name="email" placeholder="Email" required />
							<input type="text" name="subject" placeholder="Subject" />
							<textarea name="message" placeholder="Message" rows="4"></textarea>
						</div>
						<div class="submit-text">
							<input type="submit" name="submit" value="submit" />
						</div>
					</form>
				</div>
			</div>
			<!-- contact area end -->
			<div class="footer-logo-text">
				<div class="container text-center">
					<a href="index.html"><img src="img/logo2.png" alt="Logo" /></a>
					<p>There are many variations of passages of Lorem Ipsum available, but the majority have</p>
					<p> suffered alteration in some form, by injected humour, or randomised</p>
				</div>
			</div>
			<!-- footer top start -->
			<div class="footer-top section-padding">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="s-footer-text">
								<div class="footer-title">
									<h4>Socail Network</h4>
								</div>
								<div class="social-link actions-btn clearfix">
									<ul>
										<li>
											<a href="#"><i class="fa fa-facebook"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-twitter"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-google-plus"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-facebook"></i></a>
										</li>
									</ul>
								</div>
								<h4>Newsletter</h4>
								<form action="#">
									<div class="input-text">
										<input type="text" name="email" placeholder="Email Address" />
									</div>
									<div class="submit-text">
										<input type="submit" name="submit" value="submit" />
									</div>
								</form>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-3">
							<div class="s-footer-text">
								<div class="footer-title">
									<h4>Contact</h4>
								</div>
								<div class="contact-link">
									<ul>
										<li>
											<span>Email:</span><p>Domain@email.com Name@company.info</p>
										</li>
										<li>
											<span>Phone:</span> <p>+111 (019) 25184203 +111 (018) 50950555</p>
										</li>
										<li>
											<span>Address:</span><p>777/a4 Bonosri Road, Danpura East USA. -25000</p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-2">
							<div class="s-footer-text">
								<div class="footer-title">
									<h4>INFORMATION</h4>
								</div>
								<div class="footer-menu">
									<ul>
										<li>
											<a href="about.html">About Us</a>
										</li>
										<li>
											<a href="#">Our Store</a>
										</li>
										<li>
											<a href="#">Order history</a>
										</li>
										<li>
											<a href="#">Help</a>
										</li>
										<li>
											<a href="#">FAQ</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-3">
							<div class="s-footer-text">
								<div class="footer-title">
									<h4>My Account</h4>
								</div>
								<div class="footer-menu">
									<ul>
										<li>
											<a href="#">My Orer</a>
										</li>
										<li>
											<a href="cart.html">My Cart</a>
										</li>
										<li>
											<a href="wishlist.html">Wishlist</a>
										</li>
										<li>
											<a href="login.html">Login</a>
										</li>
										<li>
											<a href="login">Register</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer top end -->
			<!-- footer bottom start -->
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="left floatleft">
								<p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
							</div>
							<div class="right mayment-card floatright">
								<ul>
									<li>
										<a href="#"><img src="img/footer/v1.png" alt="Payment Card" /></a>
									</li>
									<li>
										<a href="#"><img src="img/footer/v2.png" alt="Payment Card" /></a>
									</li>
									<li>
										<a href="#"><img src="img/footer/v3.png" alt="Payment Card" /></a>
									</li>
									<li>
										<a href="#"><img src="img/footer/v4.png" alt="Payment Card" /></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer bottom end -->
		</footer>
		<!-- footer section end -->
		
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.3.min.js"></script>
		<!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
		<!-- camera slider JS -->
        <script src="js/camera.min.js"></script>
		
		<!-- jquery.easing js -->
        <script src="js/jquery.easing.1.3.js"></script>
		<!-- slick slider js -->
        <script src="js/slick.min.js"></script>
		<!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
		<!-- magnific-popup js -->
        <script src="js/magnific-popup.min.js"></script>
		<!-- countdown js -->
        <script src="js/countdown.js"></script>
		<!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		<!-- plugins js -->
        <script src="js/plugins.js"></script>
		<!-- Google Map JS -->
		<!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_Agsvf36du-7l_mp8iu1a-rXoKcWfs2I"> </script>--->
		<!-- Custom map-script js -->
        <script src="js/map-script.js"></script>
		<!-- main js -->
        <script src="js/main.js"></script>


</body>
</html>