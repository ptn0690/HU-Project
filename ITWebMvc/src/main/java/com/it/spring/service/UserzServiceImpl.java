package com.it.spring.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.UserzDAO;
import com.it.spring.model.Userz;

@Service("userzServiceImpl")
public class UserzServiceImpl implements UserzService {
	@Autowired
	private UserzDAO userzDAO;

	@Override
	public List<Userz> getAllUsers() {
		return userzDAO.getAllUsers();
	}

	@Override
	public void insertUsers(Userz users) {
		userzDAO.insertUsers(users);
	}

	@Override
	public void insertUsersForAdmin(Userz users) {
		userzDAO.insertUsersForAdmin(users);
		
	}

	@Override
	public void updateUsers(Userz users) {
		userzDAO.updateUsers(users);
		
	}

	@Override
	public void deleteUsers(String[] ids) {
		userzDAO.deleteUsers(ids);
		
	}

	@Override
	public Userz findCurrentUser() {
		return userzDAO.findCurrentUser();
	}

	@Override
	public void setActiveUsers(int userId) {
		userzDAO.setActiveUsers(userId);
	}

	@Override
	public Userz login(String userName, String pass) {
		return userzDAO.login(userName, pass);
	}

	@Override
	public void forgetPassword(String userName) {
		userzDAO.forgetPassword(userName);
	}

	@Override
	public Userz findUsersByUserName(String userName) {
		return userzDAO.findUsersByUserName(userName);
	}

	@Override
	public Userz findUserzById(int useid) {
		return userzDAO.findUserzById(useid);
	}

}
