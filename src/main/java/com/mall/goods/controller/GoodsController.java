package com.mall.goods.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.GoodsService;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller	
public class GoodsController {
	@Autowired
	GoodsService service;
	
	@RequestMapping("/goods/view")
	public String main(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo, Model model) throws Exception {
		model.addAttribute("data", vo);
		return "goods/goodsinfo";
	}
	
	@RequestMapping("/goodsinfo/goodsDetail")
	@ResponseBody
	public GoodsInfoVO goodsDetail(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		vo = service.selectGoodsDetail(vo);
		return vo;
	}
	
	@RequestMapping("/goodsinfo/goodsImg")
	@ResponseBody
	public List<GoodsInfoVO> goodsImg(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectImgList(vo);
		
		return list;
		
	}
	@RequestMapping("/goods/cart")
	@ResponseBody
	public int cart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo , HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
        UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
        vo.setUserId(uservo.getUserId());
        
		int c = service.selectCartCount(vo);
		if(c>0) {
			c = 0;
		}else {
			c = service.insertCartList(vo);
		}
		
		return c;
		
	}
	
}

