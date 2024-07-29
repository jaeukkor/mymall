package com.mall.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.goods.dao.BasketDao;
import com.mall.table.vo.GoodsInfoVO;

@Service
public class BasketService {
@Autowired
BasketDao dao;

		public List<GoodsInfoVO> selectCartList(GoodsInfoVO vo) throws Exception{
			return dao.selectCartList(vo);
		}
		public int updateCart(GoodsInfoVO vo) throws Exception{
			return dao.updateCart(vo);
		}
		public int deleteCart(GoodsInfoVO vo) throws Exception{
			return dao.deleteCart(vo);
		}
		
}
