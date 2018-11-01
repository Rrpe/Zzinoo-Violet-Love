<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
     <link rel="icon" href="favicon.ico">
    <title>Mappage</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="blog.css" rel="stylesheet">
 
  </head>

  <body>
    <div class="container">
      <header>
      
      <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
    
        </div>
      </div>
    </header>
    
   <table>    
     
<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark"style="background-color:gray"  >
          <h1 class="display-4"></h1>
      <div class="row mb-2">
         <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">      
                  
            <img class="mySlides" src="image/다운로드.jpg">
			<img class="mySlides" src="image/noname01.bmp">
			<img class="mySlides" src="image/다운로드.jpg">
			<img class="mySlides" src="image/noname01.bmp">
			<a class="w3-btn-floating" onclick="plusDivs(-1)">&#10094;</a>
			<a class="w3-btn-floating" onclick="plusDivs(+1)">&#10095;</a>
              </div>
            </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
            
              <h3 class="mb-0">
                <a class="text-dark" href="#">Closer</a>
              </h3>
				<p>So baby pull me closer in the backseat of your Rover
				That I know you can't afford Bite that tattoo on your
				shoulder Pull the sheets right off the corner Of the mattress
				that you stole From your roommate back in Boulder We ain't
				ever getting older</p>
			</div>           
          </div>
        </div>
     
      </div>
</div>
    <hr>
    <footer class="blog-footer"align="center">
      <p>jyj6010<a href="https://getbootstrap.com/">yujin</a> by <a href="http://jyj6010.tistory.com/">@tistory.com</a>.</p>
      <p>
        <a href="#" a>Back to top</a>
      </p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/vendor/holder.min.js"></script>
    <script>var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {slideIndex = 1} 
        if (n < 1) {slideIndex = x.length} ;
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none"; 
        }
        x[slideIndex-1].style.display = "block"; 
    }</script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>