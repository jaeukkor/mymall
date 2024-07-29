package com.mall.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.goods.dao.GoodsDao;
import com.mall.table.vo.GoodsInfoVO;

@Service
public class GoodsService {
	@Autowired
	GoodsDao dao;
	
	public  GoodsInfoVO selectGoodsDetail(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodsDetail(vo);
	}

	public List<GoodsInfoVO> selectImgList(GoodsInfoVO vo) throws Exception{
		return dao.selectImgList(vo);
	}
	public int insertCartList(GoodsInfoVO vo) throws Exception{
		return dao.insertCartList(vo);
	}
	public int selectCartCount(GoodsInfoVO vo) throws Exception{
		return dao.selectCartCount(vo);
	}
}