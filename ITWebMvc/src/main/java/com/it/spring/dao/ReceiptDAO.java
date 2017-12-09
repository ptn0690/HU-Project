package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.Receipt;
import com.it.spring.model.ReceiptInformation;

public interface ReceiptDAO {
	public List<Receipt> showReceiptByCusId(int useId);
	public ReceiptInformation getReceiptInformationById(int useId);
	public ReceiptInformation getReceiptInformationAdmin(int orderId);
	public List<Receipt> showReceiptByOrderId(int orderId);

}
