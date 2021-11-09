<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.eryi.pojo.Article" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="stylesheet/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="stylesheet/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css" href="stylesheet/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="stylesheet/revslider.css" >
<link rel="stylesheet" type="text/css" href="stylesheet/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="stylesheet/owl.theme.css">
<link rel="stylesheet" type="text/css" href="stylesheet/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="stylesheet/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" media="all">
<link rel="stylesheet" type="text/css" href="stylesheet/responsive.css" media="all">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Teko:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Saira+Condensed:300,400,500,600,700,800" rel="stylesheet">
</head>
<%
  Article article=(Article)request.getAttribute("article");
  List<Article> articles=new ArrayList<Article>();
  if(request.getAttribute("articles")!=null) {
    articles = (List<Article>) request.getAttribute("articles");
  }
%>
<body>
<div id="page">
   <header>
  <div class="container">
    <div class="row">
      <div id="header">
        <div class="header-container">
          <div class="header-logo">
            <div style="background:black" class="logo"></div>
          </div>
          <div class="header__nav">
            <div class="header-banner">
              <div class="col-lg-6 col-xs-12 col-sm-7 col-md-8">
                <div class="assetBlock">
                  <div style="height: 20px; overflow: hidden;" id="slideshow">
                    <!--p style="display: block;"><a href="post-1.html">固原日报 文艺副刊</a> </p>
                    <p style="display: none;"><a href="post-1.html">固原日报 Young woman with shopping bags in a beautiful dress</a> </p-->
                  </div>
                </div>
              </div>
              <!-- div class="col-lg-6 col-lg-6 col-xs-12 col-sm-5 col-md-4 social">
                <ul>
                  <li class="fb"><a href="#"></a></li>
                  <li class="tw"><a href="#"></a></li>
                  <li class="googleplus"><a href="#"></a></li>
                  <li class="pintrest"><a href="#"></a></li>
                  <li class="youtube"><a href="#"></a></li>
                </ul>
              </div -->
            </div>
            <div class="fl-header-right">
              <div class="fl-links">
              <div class="fl-cart-contain">
                <div class="mini-cart">
                  
                  <div class="fl-mini-cart-content" style="display: none;">
                    <div class="block-subtitle">
                      <div class="top-subtotal">2 items, <span class="price">$259.99</span> </div>
                      <!--top-subtotal--> 
                      <!--pull-right--> 
                    </div>
                    <!--block-subtitle-->
                    <ul class="mini-products-list" id="cart-sidebar">
                      <li class="item first">
                        <div class="item-inner"><a class="product-image" title="" href="#l"><img alt="" src="products-images/shop/p3.jpg"></a>
                          <div class="product-details">
                            <div class="access"><a class="btn-remove1" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <!--access--> 
                            <strong>1</strong> x <span class="price">$179.99</span>
                            <p class="product-name"><a href="product-detail.html">Silk Flared Full Length Pink Women's Skirt</a></p>
                          </div>
                        </div>
                      </li>
                      <li class="item last">
                        <div class="item-inner"><a class="product-image" title="" href="#l"><img alt="" src="products-images/shop/p11.jpg"></a>
                          <div class="product-details">
                            <div class="access"><a class="btn-remove1" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <!--access--> 
                            <strong>1</strong> x <span class="price">$80.00</span>
                            <p class="product-name"><a href="product-detail.html">Lifestyle Stainless Steel Flask, 1000ml</a></p>
                          </div>
                        </div>
                      </li>
                    </ul>
                    <div class="actions">
                      <button class="btn-checkout" title="Checkout" type="button" onClick="window.location=checkout.html"><span>Checkout</span></button>
                    </div>
                    <!--actions--> 
                  </div>
                  <!--fl-mini-cart-content--> 
                </div>
              </div>
<%--              <!--mini-cart-->--%>
<%--              <div class="collapse navbar-collapse">--%>
<%--                <form class="navbar-form" role="search">--%>
<%--                  <div class="input-group">--%>
<%--                    <input type="text" class="form-control" placeholder="Search">--%>
<%--                    <span class="input-group-btn">--%>
<%--                    <button type="submit" class="search-btn"> <span class="glyphicon glyphicon-search"> <span class="sr-only">Search</span> </span> </button>--%>
<%--                    </span> </div>--%>
<%--                </form>--%>
<%--              </div>--%>
              <!--links--> 
            </div>
            <div class="fl-nav-menu">
              <nav>
                <div class="mm-toggle-wrap">
                  <div class="mm-toggle"><i class="fa fa-bars"></i><span class="mm-label">Menu</span> </div>
                </div>
                <div class="nav-inner"> 
                  <!-- BEGIN NAV -->
                  <ul id="nav" class="hidden-xs">
                    <li> <a class="level-top" href="index"><span>首页</span></a></li>
                    <li> <a class="level-top" href="category-1.html"><span>概况</span></a> </li>
                    <li> <a class="level-top" href="category-2.html"><span>小说‎</span></a></li>
                    <li> <a class="level-top" href="category-1.html"><span>散文</span></a></li>
                    <li> <a class="level-top" href="category-2.html"><span>诗歌</span></a> </li>
					<li> <a class="level-top" href="category-2.html"><span>诗歌</span></a> </li>
					<li> <a class="level-top" href="category-2.html"><span>诗歌</span></a> </li>
                    <li> <a href="category-2.html" class="level-top"> <span>Travel</span> </a></li>
                  </ul>
                  <!--nav--> 
                </div>
              </nav>
            </div>
          </div>
          
          <!--row--> 
          
        </div>
      </div>
    </div>
  </div>
  </div>
</header>
  <div class="page-heading">
    <div class="breadcrumbs">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <ul>
<%--              <li class="home"> <a href="index.jsp" title="Go to Home Page">Home</a> <span>› </span> </li>--%>
<%--              <li class="category1601"> <strong>固原日报·文艺副刊</strong> </li>--%>
            </ul>
          </div>
          <!--col-xs-12--> 
        </div>
        <!--row--> 
      </div>
      <!--container--> 
    </div>
    <div class="page-title">
      <h2>固原日报·文艺副刊</h2>
    </div>
  </div>
  <div class="top-cate">
    <div class="featured-pro container-fluid">
      <div>
<%--        <div class="slider-items-products">--%>
<%--          <div id="top-categories" class="product-flexslider hidden-buttons">--%>
<%--            <div class="slider-items slider-width-col4 products-grid">--%>
<%--              --%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
      </div>
    </div>
  </div>
  
  <!-- BEGIN Main Container -->
  <div class="main-container col2-right-layout">
    <div class="main container">
      <div class="row">
        <div class="col-main col-sm-9 main-blog">
          <div id="main" class="blog-post">
            <article class="blog_entry clearfix">
						
						<h1 class="blog_entry-title"><%=article.getTitle()%></h1>
                     
              <div class="entry-content">
                 <ul class="post-meta">
                        <li><a href="#"> <%=article.getAuthor()%>  </a> </li>
<%--                        <li><i class="fa fa-comments"></i><a href="#"><%=article.getTitle()%></a> </li>--%>
                        <li><i class="fa fa-clock-o"></i><%=article.getDate()%></li>
                      </ul>
                <div class="thm-post">
                  <%List<String> context=article.getContext();%>
                  <%
                    Iterator<String> it=context.iterator();
                    while(it.hasNext()){
                      String line=it.next();
                  %>
                <p><%=line%></p>
<%--<figure class="block-image"><img src="products-images/p23.jpg" alt="blog-img"></figure>--%>
                  <%}%>
</div>			
</div>


				</article>
      
            <div class="comment-content">
                    <div class="comments-wrapper">
                    </div>
                    <!--comments-wrapper-->
                  </div>
          </div>
          <!--#main wrapper grid_8--> 
          
        </div>
        <!--col-main col-sm-9-->
        <aside class="col-sm-3 sidebar">
          <div class="blog-side">
            <div class="popular-posts widget block">
              <form action="/queryByAuthor" method="GET">
                <input  type="text" name="author">
                <input  type="submit" value="搜索"/>
                <input type="hidden" name="url" value="article">
                <input type="hidden" name="file_id" value=<%=article.getFile_id()%>>
              </form>
            </div>
            <div id="categories-2" class="widget widget_categories block" style="visibility: visible;">
              <h2 class="widget-title">文章列表</h2>
              <ul>
                <%
                  for (Article a:articles) {
                %>
                <li><a href="/showArticle?file_id=<%=a.getFile_id()%>"><%=a.getTitle()%>  <%=a.getAuthor()%>  <%=a.getDate()%></a> <!-- span class="count">2</span --></li>
                <%
                  }
                %>
              </ul>
            </div>
            <!-- Banner Ad Block -->
            <div class="custom-slider">
              <div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="item"><img src="products-images/p28.jpg" alt="slide3">
                      <div class="carousel-caption"> <a class="tag " href="#" title="Fashion">Travels</a>
                        <h3><a title=" Sample Product" href="product-detail.html"> Female tourists on hand have a happy travel map</a></h3>
                        <a class="link" href="#">Read more</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Banner Text Block -->
          
            
            
          </div>
        </aside>
      </div>
    </div>
    <!--main-container--> 
    
  </div>
  </section>
  
  <div class="recent-news">
    
  
</div>
<!--page--> 
<!-- Mobile Menu-->
<div id="mobile-menu">
  <ul>
    <li>
      <div class="mm-search">

      </div>
    </li> <li> <a class="level-top" href="#"><span>Home</span></a></li>
    <li><a href="grid1.html">Accessories</a> 
      <!--mega menu-->
      <ul class="level0">
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Audio</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Amplifiers</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Installation Parts</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Speakers</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Stereos</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Subwoofers</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Body Parts</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Bumpers</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Doors</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Fenders</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Grilles</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Hoods</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Exterior</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Bed Accessories</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Body Kits</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Custom Grilles</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Car Covers</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Off-Road Bumpers</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Interior</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Custom Gauges</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Dash Kits</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Seat Covers</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Steering Wheels</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Sun Shades</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Lighting</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Fog Lights</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Headlights</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>LED Lights</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Off-Road Lights</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Signal Lights</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
        <li class="level3 nav-6-1 parent item"> <a href="grid.html"><span>Performance</span></a> 
          <!--sub sub category-->
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Air Intake Systems</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Brakes</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Exhaust Systems</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Power Adders</span></a> </li>
            <!--level2 nav-6-1-1-->
            <li class="level2 nav-6-1-1"> <a href="grid.html"><span>Racing Gear</span></a> </li>
            <!--level2 nav-6-1-1-->
          </ul>
          <!--level1--> 
          <!--sub sub category--> 
        </li>
        <!--level3 nav-6-1 parent item-->
      </ul>
      <!--level0--> 
    </li>
    <li><a href="#">Listing‎</a>
      <ul class="level1">
        <li class="level1 first"><a href="grid.html"><span>Car Grid</span></a></li>
        <li class="level1 nav-10-2"> <a href="list.html"> <span>Car List</span> </a> </li>
        <li class="level1 nav-10-3"> <a href="grid1.html"> <span>Accessories Grid</span> </a> </li>
        <li class="level1 nav-10-4"> <a href="list1.html"> <span>Accessories List</span> </a> </li>
        <li class="level1 first parent"><a href="car-detail.html"><span>Car Detail</span></a> </li>
        <li class="level1 first parent"><a href="accessories-detail.html"><span>Accessories Detail</span></a> </li>
      </ul>
    </li>
    <li><a href="grid.html">Blog</a>
      <ul class="level1">
        <li class="level1 first"><a href="blog.html"><span>Blog List</span></a></li>
        <li class="level1 nav-10-2"> <a href="blog-detail.html"> <span>Blog Detail</span> </a> </li>
      </ul>
    </li>
    <li><a href="compare.html">Sandwiches‎</a></li>
    <li><a href="#">Pages</a>
      <ul class="level1">
        <li class="level1"> <a href="about-us.html"> <span>About us</span> </a> </li>
        <li class="level1 nav-10-4"> <a href="shopping-cart.html"> <span>Cart Page</span> </a> </li>
        <li class="level1 first parent"><a href="checkout.html"><span>Checkout</span></a> 
          <!--sub sub category-->
          <ul class="level2 right-sub">
            <li class="level2 nav-2-1-1 first"><a href="checkout-method.html"><span>Method</span></a></li>
            <li class="level2 nav-2-1-5 last"><a href="checkout-billing-info.html"><span>Billing Info</span></a></li>
          </ul>
          <!--sub sub category--> 
        </li>
        <li class="level1 nav-10-4"> <a href="wishlist.html"> <span>Wishlist</span> </a> </li>
        <li class="level1"> <a href="dashboard.html"> <span>Dashboard</span> </a> </li>
        <li class="level1"> <a href="multiple-addresses.html"> <span>Multiple Addresses</span> </a> </li>
        <li class="level1"><a href="contact-us.html"><span>Contact us</span></a> </li>
        <li class="level1"><a href="404error.html"><span>404 Error Page</span></a> </li>
        <li class="level1"><a href="login.html"><span>Login Page</span></a> </li>
        <li class="level1"><a href="quickview.html"><span>Quick View</span></a> </li>
        <li class="level1"><a href="newsletter.html"><span>Newsletter</span></a> </li>
      </ul>
    </li>
    <li><a href="#">Custom</a></li>
  </ul>
</div>
</div>
<!-- JavaScript --> 
<script src="js/jquery-3.5.0.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/parallax.js"></script> 
<script src="js/revslider.js"></script> 
<script src="js/common.js"></script> 
<script src="js/jquery.bxslider.min.js"></script> 
<script src="js/jquery.flexslider.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/jquery.mobile-menu.min.js"></script>
</body>
</html>