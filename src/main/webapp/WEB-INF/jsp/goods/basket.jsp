<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<table>
		<tr>
		<th><h3>장바구니</h3></th>
		<td><button type="button" class="btn btn-info" onclick="order();">주문하기</button></td>
		</tr>
	</table>
	
	
	
 <!-- Card with an image on left -->
 		
          <div class="card mb-3" id='carts'>
          <form id ="searchform">
          </form>
            </div>
           
           
           <form id="hiddenform">
           	<input type='hidden' id='goodsCd' name='goodsCd'>
           	<input type='hidden' id='buyQty' name='buyQty'>
           </form>
       
<script>
	function init(){
		call_server(searchform , '/goods/basketList', basketList);
	}
	function basketList(list){
		console.log(list);
		for(var i = 0; i<list.length; i++){
			str = "<div class=\"card mb-3\">";
			str += "<div class=\"row g-0\">";
			str += "<div class=\"col-md-4\">";
			str += "<img src=\""+list[i].thumnailUrl+"\" width='300px' height='200px'>";
			str += "</div>";
			str += "<div class=\"col-md-8\">";
			str += "<div class=\"card-body\">";
			str += "<h5 class=\"card-title\">"+list[i].goodsName+"</h5>";
			str += "<p class=\"card-text\">"+list[i].sellPrice+"원</p>";
			str += "<input type =\"text\" id = 'buyQty"+i+"' name='buyQty' value='"+list[i].buyQty+"'>";
			str += "<button type='button' onclick=\"updateCart('"+list[i].goodsCd+"',"+i+")\">수정</button>";
			str += "<button type='button' onclick=\"deleteCart('"+list[i].goodsCd+"',"+i+")\">삭제</button>";
			str += "</div>";
			str += "</div>";
			str += "</div>";
			str += "</div>";
			
			$('#carts').append(str);
		}
	}
	init();
	function updateCart(cd,idx){
		$('#goodsCd').val(cd);
		$('#buyQty').val( $('#buyQty'+idx).val() );
		call_server(hiddenform, 'goods/upCart', upCart);
	}
	function upCart(c){
		if(c>0){
			alert("수정되었습니다.");
			reload();
		}else{
			alert("수정실패.");
		}
	}
	function deleteCart(cd,idx){
		$('#goodsCd').val(cd);
		$('#buyQty').val( $('#buyQty'+idx).val() );
		call_server(hiddenform, 'goods/delCart',delCart);
	}
	function delCart(c){
		if(c>0){
			alert("수정되었습니다.");
			reload();
		}else{
			alert("수정실패.");
		}
	}
	function order(){
		location.href='/order/order';
	}
</script>