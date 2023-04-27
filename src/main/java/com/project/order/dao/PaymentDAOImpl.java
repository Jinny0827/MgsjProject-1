package com.project.order.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.order.domain.OrderDTO;
import com.project.order.domain.OrderDetailDTO;
import com.project.order.domain.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	private static final Logger logger = LoggerFactory.getLogger(PaymentDAOImpl.class);

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAME_SPACE = "mappers.paymentMapper";
	private static final String NAME_SPACE2 = "mappers.orderMapper";
	private static final String NAME_SPACE3 = "mappers.cartMapper";
	
	//결제 등록
	@Override
	public boolean paymentWrite(String userId, 
							PaymentDTO paymentDTO, 
							OrderDTO orderDTO, 
							List<OrderDetailDTO> orderDetails)
							throws Exception {
		
		logger.info("결제 등록 paymentWrite - DAO");
		
		int result1 = sqlSession.insert(NAME_SPACE2 + ".orderWrite", orderDTO); // 주소정보
		
		for(OrderDetailDTO orderDetail : orderDetails) {
		
		int result2 = sqlSession.insert(NAME_SPACE2+ ".orderDetailWrite", orderDetail); // 장바구니목록 주문에 복사
		
		}
		int result3 = sqlSession.insert(NAME_SPACE + ".paymentWrite", paymentDTO); // 결제정보
		
		int result4 = sqlSession.delete(NAME_SPACE3 + ".cartDeleteAll", userId); //카트 삭제
		
		if(result1 == 1 && result3 == 1) {
			return true;
		}
			return false;
		
	}
	
	//결제 내역 목록
	@Override
	public List<PaymentDTO> paymentList(PaymentDTO paymentDTO) throws Exception {
		
		logger.info("결제 내역 목록 paymentList - DAO");
		
		return sqlSession.selectList(NAME_SPACE + ".paymentList", paymentDTO);
	}
	
	//결제 상세 내역
	@Override
	public PaymentDTO paymentView(String userId) throws Exception {
		
		logger.info("결제 상세 내역 paymentView - DAO");
		
		return sqlSession.selectOne(NAME_SPACE + ".paymentView", userId);
	}
}
