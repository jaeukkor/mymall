package com.mall.order.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.mall.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.mall.order.dao")
public interface OrderDao {
	public  OrderInfoVO selectOrderList(OrderInfoVO vo) throws Exception;
	}
