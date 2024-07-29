package com.mall.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.order.dao.OrderDao;
import com.mall.table.vo.OrderInfoVO;

@Service
public class OrderService {
@Autowired
OrderDao dao;
public  OrderInfoVO selectOrderList(OrderInfoVO vo) throws Exception{
	return dao.selectOrderList(vo);
}
}
