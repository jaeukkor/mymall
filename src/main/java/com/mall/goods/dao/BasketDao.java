package com.mall.goods.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.goods.dao")
public interface BasketDao {
	public List<GoodsInfoVO> selectCartList(GoodsInfoVO vo) throws Exception;
	public int updateCart(GoodsInfoVO vo) throws Exception;
	public int deleteCart(GoodsInfoVO vo) throws Exception;
}
