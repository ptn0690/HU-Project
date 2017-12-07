package com.it.spring.service;

import java.util.List;
import com.it.spring.model.Userz;

public interface UserzService {
	 public List<Userz> getAllUsers();
	 public void insertUsers(Userz users);
	 public void insertUsersForAdmin(Userz users);
	 public void updateUsers(Userz users);
	 public void deleteUsers(String[] ids);
	 public Userz findCurrentUser();
	 public void setActiveUsers(int userId);
	 public Userz login(String userName, String pass);
	 public void forgetPassword(String  userName);
	 public Userz findUsersByUserName(String userName);
	 public Userz findUserzById(int useid);

}
