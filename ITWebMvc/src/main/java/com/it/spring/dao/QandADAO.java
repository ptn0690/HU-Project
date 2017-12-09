package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.QAndA;

public interface QandADAO {
	public List<QAndA> listOfQandA();
	public void insertQAndA(QAndA qAndA);
	public void updateQAndA(QAndA qAndA);
	public void deleteQAndA(String[] ids);
	public QAndA findQAndAById(int qaaid);
	public List<QAndA> findQandADetailById(int id);

}
