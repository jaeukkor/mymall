package com.mall.goods.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.goods.dao")
public interface GoodsDao {
	
	public  GoodsInfoVO selectGoodsDetail(GoodsInfoVO vo) throws Exception;
	public List<GoodsInfoVO> selectImgList(GoodsInfoVO vo) throws Exception;
	public int insertCartList(GoodsInfoVO vo) throws Exception;
	public int selectCartCount(GoodsInfoVO vo) throws Exception;
}
