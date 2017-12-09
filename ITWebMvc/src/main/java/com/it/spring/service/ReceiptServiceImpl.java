package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.it.spring.dao.ReceiptDAO;
import com.it.spring.model.Receipt;
import com.it.spring.model.ReceiptInformation;

@Service("receiptServiceImpl")
public class ReceiptServiceImpl implements ReceiptService {
	@Autowired
	private ReceiptDAO receiptDAO;

	@Override
	public List<Receipt> showReceiptByCusId(int useId) {
		return receiptDAO.showReceiptByCusId(useId);
	}

	@Override
	public ReceiptInformation getReceiptInformationById(int useId) {
		return receiptDAO.getReceiptInformationById(useId);
	}

	@Override
	public ReceiptInformation getReceiptInformationAdmin(int orderId) {
		return receiptDAO.getReceiptInformationAdmin(orderId);
	}

	@Override
	public List<Receipt> showReceiptByOrderId(int orderId) {
		return receiptDAO.showReceiptByOrderId(orderId);
	}

}
