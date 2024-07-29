package com.mall.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.main.service.MainService;
import com.mall.table.vo.MainGoodsVO;

@Controller	
public class MainController {
	@Autowired
	MainService service;
	
	@RequestMapping("/")
	public String main() throws Exception {
		return "main";
	}
	

	@RequestMapping("/main/initt")
	@ResponseBody
	public List<MainGoodsVO> hotItem(@ModelAttribute("MainGoodsVO") MainGoodsVO vo) throws Exception {
		List<MainGoodsVO> list = service.selectHotItemList(vo);
		
		return list;
	}
	
	@RequestMapping("/main/category")
	@ResponseBody
	public List<MainGoodsVO> categoryy(@ModelAttribute("MainGoodsVO") MainGoodsVO vo) throws Exception {
		List<MainGoodsVO> list = service.selectCategory(vo);
		
		return list;
	}
	@RequestMapping("/main/intoCategory")
	@ResponseBody
	public List<MainGoodsVO> intoCate(@ModelAttribute("MainGoodsVO") MainGoodsVO vo) throws Exception {
		List<MainGoodsVO> list = service.selectInCategory(vo);
		
		return list;
	}
}
