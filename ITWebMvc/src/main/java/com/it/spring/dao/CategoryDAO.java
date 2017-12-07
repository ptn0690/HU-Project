package com.it.spring.dao;

import java.util.List;

import com.it.spring.model.Category;

public interface CategoryDAO {
	
	public List<Category> findALl(); 
    public Category findCategoryByID(int cat_id);
    public void updateCategory(Category category);
    public void deleteCategory(String[] categorys);
    public void insertCategory(Category category);

}
