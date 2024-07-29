package com.mall.goods.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.BasketService;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller
public class BasketController {

@Autowired
BasketService service;

		@RequestMapping("/cart")
		public String main(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
			
			return "goods/basket";
		}
		
		
		@RequestMapping("/goods/basketList")
		@ResponseBody
		public List<GoodsInfoVO> basketList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo , HttpServletRequest request) throws Exception {
			HttpSession session = request.getSession();
	        UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
	        vo.setUserId(uservo.getUserId());
			List<GoodsInfoVO> list = service.selectCartList(vo);
			
			return list;
			
		}
		@RequestMapping("/goods/upCart")
		@ResponseBody
		public int upCart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo , HttpServletRequest request) throws Exception {
			HttpSession session = request.getSession();
	        UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
	        vo.setUserId(uservo.getUserId());
			int c = service.updateCart(vo);
			return c;
			
		}
		@RequestMapping("/goods/delCart")
		@ResponseBody
		public int delCart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo , HttpServletRequest request) throws Exception {
			HttpSession session = request.getSession();
	        UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
	        vo.setUserId(uservo.getUserId());
			int c = service.deleteCart(vo);
			return c;
			
		}@RequestMapping("/order/order")
		public String main() throws Exception {
			
			return "/order/order";
		}
		
		
}
