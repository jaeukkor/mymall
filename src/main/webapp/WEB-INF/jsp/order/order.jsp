<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<table>
		<tr>
		<th><h3>주문하기</h3></th>
		
		</tr>
	</table>
	
	
	
 <!-- Card with an image on left -->
 		
          <div class="card mb-3" id='carts'>
          <form id ="searchform">
          </form>
            </div>
           <div>
           <table id="orderDetail">
			<tr>
			<th><h3>주문자 정보</h3></th>
			</tr>
			<tr>
				<td>
				성명:
				</td>
				<td id='userName' name='userName'>
				</td>
			</tr>
			<tr>
				<td>
				연락처:
				</td>
				<td id='phone' name='phone'>
				</td>
			</tr>
			<tr>
				<td>
				주소:
				</td>
				<td id='addr' name='addr'>
				</td>
			</tr>
			
			<tr>
			<th><h3>수취인 정보</h3></th>
			<td><input type="checkbox" id="receiveInfo" value="">주문자와 동일</td>
			</tr>
			<tr>
				<td>
				성명:
				</td>
				<td><input type="text"  id="receiveName" >
				</td>
			</tr>
			<tr>
				<td>
				연락처:
				</td>
				<td><input type="text" id="pphone" >
				</td>
			</tr>
			<tr>
				<td>
				주소:
				</td>
				<td><input type="text" id="aaddr"  >
				</td>
			</tr>
			
			<tr>
			<th><h3>결제 정보</h3></th>
			</tr>
			
			<tr>
				<td><h4>결제수단</h4></td>
				<td><input type="checkbox" name="payment" value="온라인 입금" onchange="checkboxGroup(this)">온라인 입금</td>
				<td><input type="checkbox" name="payment" value="카드 결제" onchange="checkboxGroup(this)">카드 결제</td>
				<td><input type="checkbox" name="payment" value="카카오페이" onchange="checkboxGroup(this)">카카오페이</td>
			</tr>
			<tr>
			
				<td><h4>결제금액:</h4></td>
				<td id="totalPrice"></td><td>원</td>
			</tr>
			</table>
			</div>
			<div style=" text-align: center;">
				<button style=" display: inline-block;" onclick="doOrder();"><h2>주문하기</h2></button>
			</div>
			
    
           <form id="hiddenform">
           	<input type='hidden' id='goodsCd' name='goodsCd'>
           	<input type='hidden' id='buyQty' name='buyQty'>
           </form>
<script>
		function checkboxGroup(currentCheckbox) {
			  const checkboxes = document.getElementsByName("payment");
			  let checkedCount = 0;
			  
			  for (let i = 0; i < checkboxes.length; i++) {
			    if (checkboxes[i].checked) {
			      checkedCount++;
			      if (checkboxes[i] !== currentCheckbox) {
			        checkboxes[i].checked = false;
			      }
			    }
			  }
	  
	  if (checkedCount === 0) {
	    currentCheckbox.checked = true;
	  }
	}
			
			
		function orderList(list){
			console.log(list);
			var sum = 0;
			for(var i=0; i<list.length; i++){
				str = "<div class=\"card mb-3\">";
				str += "<div class=\"row g-0\">";
				str += "<div class=\"col-md-4\">";
				str += "<img src=\""+list[i].thumnailUrl+"\" width='300px' height='200px'>";
				str += "</div>";
				str += "<div class=\"col-md-8\">";
				str += "<div class=\"card-body\">";
				str += "<h5 class=\"card-title\">"+list[i].goodsName+"</h5>";
				str += "<p class=\"card-text\">"+list[i].sellPrice+"원</p>";
				str += "<p class=\"card-text\">주문수량:"+list[i].buyQty+"</p>";
				//str += "<p class=\"card-text\">:"+list[i].buyQty+"</p>";
				//str += "<input type =\"text\" id = 'buyQty"+i+"' name='buyQty' value='"+list[i].buyQty+"'>";
				str += "</div>";
				str += "</div>";
				str += "</div>";
				str += "</div>";
				sum = list[i].sellPrice*list[i].buyQty;
				
				
				$('#carts').append(str);
				$('#totalPrice').append(sum);
			}
		}
		
		var uservo;
		
		function orderInfo(vo){
			$('#userName').text(vo.userName);
			$('#phone').text(vo.phone);
			$('#addr').text(vo.addr);
			orderList(vo.basketlist);
			
			uservo = vo;
			
		}
		
		//call_server(searchform, '/goods/basketList', orderList);
		call_server(hiddenform, '/order/orderList', orderInfo);
		
		
		$('#receiveInfo').change(function() {
			
			if($('#receiveInfo').is(":checked")==true){
				
				$('#receiveName').val(uservo.userName);
				$('#pphone').val(uservo.phone);
				$('#aaddr').val(uservo.addr);
			}else {
				$('#receiveName').val('');
				$('#pphone').val('');
				$('#aaddr').val('');
			}
		});
		
</script>