package com.project.order.dao;

import java.util.List;

import com.project.order.domain.OrderDTO;
import com.project.order.domain.OrderDetailDTO;
import com.project.order.domain.PaymentDTO;

public interface PaymentDAO {

	//결제 등록
	public boolean paymentWrite(String userId, PaymentDTO paymentDTO, OrderDTO orderDTO, List<OrderDetailDTO> orderDetails) throws Exception;
	
	
	//결제 내역 목록
	public List<PaymentDTO> paymentList(PaymentDTO paymentDTO) throws Exception;

	
	//결제 상세 내역
	public PaymentDTO paymentView(String userId) throws Exception;
}
