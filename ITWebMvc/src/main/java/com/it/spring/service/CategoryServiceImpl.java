package com.it.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.it.spring.dao.CategoryDAO;
import com.it.spring.model.Category;


@Service("categoryServiceImpl")
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public List<Category> findALl() {
		// TODO Auto-generated method stub
		return categoryDAO.findALl();
	}

	@Override
	public Category findCategoryByID(int cat_id) {
		// TODO Auto-generated method stub
		return categoryDAO.findCategoryByID(cat_id);
	}

	@Override
	public void updateCategory(Category category) {
		categoryDAO.updateCategory(category);
	}

	@Override
	public void deleteCategory(String[] categorys) {
		categoryDAO.deleteCategory(categorys);
		
	}

	@Override
	public void insertCategory(Category category) {
		categoryDAO.insertCategory(category);
		
	}

}
