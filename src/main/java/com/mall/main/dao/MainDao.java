package com.mall.main.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.MainGoodsVO;

@MapperScan(basePackages="com.mall.main.dao")
public interface MainDao {
	
	public List<MainGoodsVO> selectHotItemList(MainGoodsVO vo) throws Exception;
	public List<MainGoodsVO> selectCategory(MainGoodsVO vo) throws Exception;
	public List<MainGoodsVO> selectInCategory(MainGoodsVO vo) throws Exception;

}
