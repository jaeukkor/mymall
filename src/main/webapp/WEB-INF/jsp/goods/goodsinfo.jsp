<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <main id="main">

	

    <form id="hiddenform">
    <input type='hidden' id='goodsCd' name='goodsCd' value='${data.goodsCd}'>
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center" id="imgsiper">

                
              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4" id="detailWrite">
            
          </div>
		
		<div>
			
			<input type='text' id="buyQty" name="buyQty">
		</div>
		
		<div>
			
			
			<button type="button" onclick='basket()'>장바구니</button>
			<button type='button'>바로구매</button>
			
		</div>
		
        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
</form>
  </main><!-- End #main -->
  <script>
  function basket(){
	  
	  call_server(hiddenform, '/goods/cart', cart);
  }
  
  function cart(c){
	  if(c>0){
		  alert("저장되었습니다.");
	  }else{
		  alert("장바구니에 등록된 상품입니다.");
	  }
  }
  
  function init(){
	  
	  call_server(hiddenform, '/goodsinfo/goodsDetail', goodsDetail );
  }
  
  function goodsDetail(vo){
	  
			str ="<div class=\"portfolio-info\">";
			str +="<h3>"+vo.goodsName+"</h3>";
			str +="<ul>";
			str +="<li><strong>제조국</strong>: 한국</li>";
			str +=" <li><strong>정가</strong>: "+vo.normalPrice+" 원</li>";
			str +="<li><strong>판매가</strong>: "+vo.sellPrice+" 원</li>";
			str +="</ul>";
			str +="</div>";
			str += "<div class=\"portfolio-description\">";
			str += "<h2>상품설명</h2>";
			str += "<p>"+vo.content+"</p>";
			str += "</div>";
			str += "</div>";
			$('#detailWrite').append(str);
		
 }
  
  init();
  	function iinit(){
  		call_server(hiddenform ,'/goodsinfo/goodsImg',goodsImg);
  	}
  	
  	iinit();
  	function goodsImg(list){
  		
  		
  		for(var i =0; i<list.length; i++){
  			str ="<div class=\"swiper-slide\">";
  			str +="<img src=\""+list[i].imgUrl+"\" alt=\"\">";
  			str +="</div>";
  			
  			$('#imgsiper').append(str);
  		}
  	}
  </script>