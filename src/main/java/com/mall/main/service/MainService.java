package com.mall.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.main.dao.MainDao;
import com.mall.table.vo.MainGoodsVO;

@Service
public class MainService {

	
	@Autowired
	MainDao dao;
	
	public List<MainGoodsVO> selectHotItemList(MainGoodsVO vo) throws Exception{
		return dao.selectHotItemList(vo);
	}
	public List<MainGoodsVO> selectCategory(MainGoodsVO vo) throws Exception{
		return dao.selectCategory(vo);
	}
	public List<MainGoodsVO> selectInCategory(MainGoodsVO vo) throws Exception{
		return dao.selectInCategory(vo);
	}
}
