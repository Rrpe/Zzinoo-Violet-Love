<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
}
.carousel-control.right {
	right: -12px;
}

.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: 0px;
	margin-right: -19px;
}

.carousel-indicators li {
	background: #c0c0c0;
}

.carousel-indicators .active {
background: #333333;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$('#myCarousel').carousel({
	interval: 10000
	})
});
</script>
</head>
<body>

<div class="container">
  
  <div class="span8">
    
    <h1>Bootstrap Thumbnail Slider</h1>
    
    <div class="well">
     
    <div class="carousel slide" id="myCarousel">
     
    <ol class="carousel-indicators">
        <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
     
    <!-- Carousel items -->
    <div class="carousel-inner">
        
    <div class="item active">
        <div class="row-fluid">
          <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
          <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
          <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
          <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
        </div><!--/row-fluid-->
    </div><!--/item-->
     
    <div class="item">
        <div class="row-fluid">
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
        </div><!--/row-fluid-->
    </div><!--/item-->
     
    <div class="item">
        <div class="row-fluid">
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
            <div class="span3"><a class="thumbnail" href="#x"><img style="max-width: 100%;" alt="Image" src="http://placehold.it/250x250"></a></div>
        </div><!--/row-fluid-->
    </div><!--/item-->
     
    </div><!--/carousel-inner-->
     
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
    </div><!--/myCarousel-->
     
    </div><!--/well-->
  </div>
</div>
</body>
</html>