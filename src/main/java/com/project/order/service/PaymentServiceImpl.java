package com.project.order.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.order.dao.PaymentDAO;
import com.project.order.domain.OrderDTO;
import com.project.order.domain.OrderDetailDTO;
import com.project.order.domain.PaymentDTO;
import com.project.product.domain.CartDTO;
import com.project.product.service.CartService;

@Service
public class PaymentServiceImpl implements PaymentService {

	private static final Logger logger = LoggerFactory.getLogger(PaymentServiceImpl.class);
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	@Autowired
	private CartService cartService;
	
	
	//결제 등록
	@Override
	public void paymentWrite(String userId, 
							PaymentDTO paymentDTO, 
							CartDTO cartDTO,
							OrderDTO orderDTO, 
							OrderDetailDTO orderDetailDTO)
			throws Exception {
			
		logger.info("결제 등록 paymentWrite - Serivce");
		
		List<CartDTO> cart = cartService.cartList(cartDTO);
		
		List<OrderDetailDTO> orderDetails = new ArrayList<>();
		
		cart.forEach(o -> orderDetails.add(new OrderDetailDTO(orderDTO.getOrderNum(), o.getPno(), o.getProductCnt(), o.getUserId(), orderDTO.getProductPrice())));
	
		paymentDAO.paymentWrite(userId, paymentDTO, orderDTO, orderDetails);
		
	}
	
	//결제 내역 목록
	@Override
	public List<PaymentDTO> paymentList(PaymentDTO paymentDTO) throws Exception {
		
		logger.info("결제 내역 목록 paymentList - Service");
		
		return paymentDAO.paymentList(paymentDTO);
	}
	
	//결제 상세내역
	@Override
	public PaymentDTO paymentView(String userId) throws Exception {
		
		logger.info("결제 상세내역 paymentView - Service");
		
		
		
		return paymentDAO.paymentView(userId);
	}
	
}
