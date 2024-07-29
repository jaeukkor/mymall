package com.mall.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.BasketService;
import com.mall.order.service.OrderService;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.OrderInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller
public class OrderController {
	
@Autowired
OrderService service;

@Autowired
BasketService basketservice;

	@RequestMapping("/order/orderList")
	@ResponseBody
	public OrderInfoVO orderList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo , HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
	    UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
	    vo.setUserId(uservo.getUserId());
	    
	    vo = service.selectOrderList(vo);
	    
	    GoodsInfoVO goodsvo = new GoodsInfoVO();
	    goodsvo.setUserId(uservo.getUserId());
	    List<GoodsInfoVO> list = basketservice.selectCartList(goodsvo);
		
	    vo.setBasketlist(list);
	    
		
	    return vo;
		
	}
}
