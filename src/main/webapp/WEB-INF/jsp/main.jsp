<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/backimg1.jpg);">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/backimg2.jpg);">
          <div class="carousel-container">
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/backimg3.jpg);">
          <div class="carousel-container">
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->
    
<main id="main">
	<form id='hiddenform'>
    <!-- ======= Portfolio Section ======= -->
    <section class="portfolio">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2> <strong>HOT ITEMS</strong></h2>
        </div>

        <div class="row" data-aos="fade-up"  style='cursor:pointer;' id="hotItem" >

        </div>

      </div>
     
    </section>
    </form>
    <!-- ======= Portfolio Section ======= -->
    <form id="categoryform">
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters"  >
              <li data-filter="*" class="filter-active">전체</li>
              
            </ul>
          </div>
        </div>
	
        <div class="row portfolio-container" data-aos="fade-up" id="goodsDetail">

          <!--div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/assets/goodsImg/Baguette.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>app</h4>
              <p>App</p>
              <a href="/assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="/assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 2</h4>
              <p>App</p>
              <a href="/assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 2</h4>
              <p>Card</p>
              <a href="/assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 2</h4>
              <p>Web</p>
              <a href="/assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 3</h4>
              <p>App</p>
              <a href="/assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 1</h4>
              <p>Card</p>
              <a href="/assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 3</h4>
              <p>Card</p>
              <a href="/assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="/assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div-->

        </div>

      </div>
    </section><!-- End Portfolio Section -->
</form>
    

  </main><!-- End #main -->
 
 
  	
  <script>
  	function goodsView(cd){
  		
  		location.href="/goods/view?goodsCd="+cd;
  	}
  	
  	
  	function init(){
  		call_server(hiddenform ,'/main/initt', initt );
  	}
  	function initt(list){
  		//console.log(list);
  		$('#hotItem').empty();
  		
  		
  		for(var i =0; i<list.length; i++){
  			str =  "<div class=\"col-lg-3 col-md-6 hot-item\"onclick=\"goodsView('"+list[i].goodsCd+"')\">";
  			str += "  <img src =\""+list[i].thumnailUrl+"\" width='300px' height='200px'>";
  			str += "  <div>";
  			str += "    <h6>"+list[i].goodsName+"</h6>";
  			str += "    <p>"+list[i].sellPrice+"</p>";
  			str += "  </div>";
  			str += "</div>";
  			
  			$('#hotItem').append(str);
  		}
  	}
  	init();
  	
  	function iinit(){
  		call_server( categoryform ,'/main/category', category);
  	}
  	function category(list){
  		//$('#portfolio-flters').empty();
  		
  		
  		for(var i=0; i<list.length; i++){
  				
  			 str = '<li data-filter=".filter-' + list[i].ctCd + '">' + list[i].ctName + '</li>';
  				console.log(list);
  				$('#portfolio-flters').append(str);
  			
  		}
  	}
  	iinit();
  	function iiinit(){
  		call_server( categoryform,'/main/intoCategory', intoCategory);
  	}
  	function intoCategory(list){
  		console.log(list);
  		for(var i = 0; i<list.length; i++){
			str = "<div class=\"row portfolio-container\" data-aos=\"fade-up\">";
			str += "<div class=\"col-lg-4 col-md-6 portfolio-item filter-"+list[i].ctCd+"\">";
			str +=  "<img src=\""+list[i].thumnailUrl+"\" class=\"img-fluid\" alt=\"\">";
			str +=  "<div class=\"portfolio-info\">";
			str +=  "<h4>"+list[i].goodsName+"</h4>";
			str +=  "<p>"+list[i].sellPrice+"</p>";
			str +=  "<a href=\"/assets/img/portfolio/portfolio-1.jpg\" data-gallery=\"portfolioGallery\" class=\"portfolio-lightbox preview-link\" title=\"App 1\"><i class=\"bx bx-plus\"></i></a>";
			str +=  "<a href=\"portfolio-details.html\" class=\"details-link\" title=\"More Details\"><i class=\"bx bx-link\"></i></a>";
			str +=  "</div>";
			str +=  "</div>";
          
			$('#goodsDetail').append(str);
  		}
  	}
  	iiinit();
  	
  </script>
    