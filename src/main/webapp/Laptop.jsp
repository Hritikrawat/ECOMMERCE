
<%@ page import="java.util.Date"%>
<%@ page import="java.util.concurrent.TimeUnit"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Electro - HTML Ecommerce Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> +91-9818XXXXXX</a></li>
					<li><a href="mailto:rr907004@gmail.com" target="_blank"><i
							class="fa fa-envelope-o"></i>Mail me</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> Ghaziabad
							,U.P</a></li>
				</ul>
				<ul class="header-links pull-right">
					<!--  	<li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>-->

					<li><a href="Logout"><i class="fa fa-user-o"></i>Logout</a></li>
					<li style="color: white">
						<%
						HttpSession sesn = request.getSession();
						String name = (String) sesn.getAttribute("email");
						out.println(name);
						%>

					</li>

				</ul>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="NewFile.jsp" class="logo"> <img src="./img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>
								<select class="input-select">
									<option value="0">All Categories</option>
									<option value="1">Category 01</option>
									<option value="1">Category 02</option>
								</select> <input class="input" placeholder="Search here">
								<button class="search-btn">Search</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<!-- Wishlist -->
							<!-- Wishlist -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="true"> <i class="fa fa-heart-o"></i> <span>Your
										Wishlist</span>
									<div class="qty">2</div>
								</a>
								<div class="cart-dropdown">
									<div class="cart-list">
										<div class="product-widget">
											<div class="product-img">
												<img src="./img/product01.png" alt="Product Image">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">Wishlist Product 1</a>
												</h3>
												<h4 class="product-price">$450.00</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>

										<div class="product-widget">
											<div class="product-img">
												<img src="./img/product02.png" alt="Product Image">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">Wishlist Product 2</a>
												</h3>
												<h4 class="product-price">$750.00</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>
									</div>
									<!-- <div class="cart-btns"> Reusing cart-btns class
            <a href="wishlist.html">View Wishlist</a>
        </div> -->
								</div>
							</div>
							<!-- /Wishlist -->



							<!-- Cart -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Your
										Cart</span>
									<div class="qty">3</div>
								</a>
								<div class="cart-dropdown">
									<div class="cart-list">
										<div class="product-widget">
											<div class="product-img">
												<img src="./img/product01.png" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">product name goes here</a>
												</h3>
												<h4 class="product-price">
													<span class="qty">1x</span>$980.00
												</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>

										<div class="product-widget">
											<div class="product-img">
												<img src="./img/product02.png" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">product name goes here</a>
												</h3>
												<h4 class="product-price">
													<span class="qty">3x</span>$980.00
												</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>
									</div>
									<div class="cart-summary">
										<small>3 Item(s) selected</small>
										<h5>SUBTOTAL: $2940.00</h5>
									</div>
									<div class="cart-btns">
										<a href="viewcart.html">View Cart</a> <a href="checkout.html">Checkout
											<i class="fa fa-arrow-circle-right"></i>
										</a>
									</div>
								</div>
							</div>
							<!-- /Cart -->

							<!-- Menu Toogle -->
							<div class="menu-toggle">
								<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
								</a>
							</div>
							<!-- /Menu Toogle -->
						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	<!-- SECTION FOR LAPTOPS -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title">Laptops</h2>
				</div>
			</div>

			<div class="row">
				<!-- Laptop Product -->
				<div class="col-md-3">
					<div class="product">
						<div class="product-img">
							<img src="img/laptop1.webp" alt="Laptop 1">
							<div class="product-label">
								<span class="sale">Sale</span> <span class="new">New</span>
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">Laptops</p>
							<h3 class="product-name">
								<a href="#">Laptop Brand 1</a>
							</h3>
							<h4 class="product-price">$899.99</h4>
							<div class="product-btns">
								<button class="add-to-cart-btn">
									<i class="fa fa-shopping-cart"></i><span class="tooltipp">add
										to cart</span>
								</button>
								<button class="add-to-wishlist">
									<i class="fa fa-heart-o"></i><span class="tooltipp">add
										to wishlist</span>
								</button>
								<button class="quick-view">
									<i class="fa fa-eye"></i><span class="tooltipp">quick
										view</span>
								</button>
							</div>
						</div>
						<div class="add-to-cart">
							<button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> add to cart
							</button>
						</div>
					</div>
				</div>

				<!-- Laptop Product -->
				<div class="col-md-3">
					<div class="product">
						<div class="product-img">
							<img src="img/laptop2.jpg" alt="Laptop 2">
							<div class="product-label">
								<span class="sale">Sale</span>
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">Laptops</p>
							<h3 class="product-name">
								<a href="#">Laptop Brand 2</a>
							</h3>
							<h4 class="product-price">$749.99</h4>
							<div class="product-btns">
								<button class="add-to-cart-btn">
									<i class="fa fa-shopping-cart"></i><span class="tooltipp">add
										to cart</span>
								</button>
								<button class="add-to-wishlist">
									<i class="fa fa-heart-o"></i><span class="tooltipp">add
										to wishlist</span>
								</button>
								<button class="quick-view">
									<i class="fa fa-eye"></i><span class="tooltipp">quick
										view</span>
								</button>
							</div>
						</div>
						<div class="add-to-cart">
							<button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> add to cart
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="product">
						<div class="product-img">
							<img src="img/laptop3.avif" alt="Laptop 1">
							<div class="product-label">
								<span class="sale">Sale</span> <span class="new">New</span>
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">Laptops</p>
							<h3 class="product-name">
								<a href="#">Laptop Brand 1</a>
							</h3>
							<h4 class="product-price">$899.99</h4>
							<div class="product-btns">
								<button class="add-to-cart-btn">
									<i class="fa fa-shopping-cart"></i><span class="tooltipp">add
										to cart</span>
								</button>
								<button class="add-to-wishlist">
									<i class="fa fa-heart-o"></i><span class="tooltipp">add
										to wishlist</span>
								</button>
								<button class="quick-view">
									<i class="fa fa-eye"></i><span class="tooltipp">quick
										view</span>
								</button>
							</div>
						</div>
						<div class="add-to-cart">
							<button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> add to cart
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="product">
						<div class="product-img">
							<img src="img/laptop4.jpg" alt="Laptop 1">
							<div class="product-label">
								<span class="sale">Sale</span> <span class="new">New</span>
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">Laptops</p>
							<h3 class="product-name">
								<a href="#">Laptop Brand 1</a>
							</h3>
							<h4 class="product-price">$899.99</h4>
							<div class="product-btns">
								<button class="add-to-cart-btn">
									<i class="fa fa-shopping-cart"></i><span class="tooltipp">add
										to cart</span>
								</button>
								<button class="add-to-wishlist">
									<i class="fa fa-heart-o"></i><span class="tooltipp">add
										to wishlist</span>
								</button>
								<button class="quick-view">
									<i class="fa fa-eye"></i><span class="tooltipp">quick
										view</span>
								</button>
							</div>
						</div>
						<div class="add-to-cart">
							<button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> add to cart
							</button>
						</div>
					</div>
				</div>



				<!-- More laptops can be added similarly -->
			</div>
		</div>
	</div>

	<footer id="footer">
		<!-- top footer -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">About Us</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut.</p>
							<ul class="footer-links">
								<li><a href="#"><i class="fa fa-map-marker"></i>1734
										Stonecoal Road</a></li>
								<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Categories</h3>
							<ul class="footer-links">
								<li><a href="#">Hot deals</a></li>
								<li><a href="#">Laptops</a></li>
								<li><a href="#">Smartphones</a></li>
								<li><a href="#">Cameras</a></li>
								<li><a href="#">Accessories</a></li>
							</ul>
						</div>
					</div>

					<div class="clearfix visible-xs"></div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Information</h3>
							<ul class="footer-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Orders and Returns</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Service</h3>
							<ul class="footer-links">
								<li><a href="#">My Account</a></li>
								<li><a href="#">View Cart</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Track My Order</a></li>
								<li><a href="#">Help</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /top footer -->

		<!-- bottom footer -->
		<div id="bottom-footer" class="section">
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-payments">
							<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
							<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
						</ul>
						<span class="copyright"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</span>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bottom footer -->
	</footer>
	<!-- /FOOTER -->

</body>

</html>