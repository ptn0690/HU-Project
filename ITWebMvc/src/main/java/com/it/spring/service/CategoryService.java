package com.it.spring.service;

import java.util.List;

import com.it.spring.model.Category;

public interface CategoryService {
	public List<Category> findALl(); 
    public Category findCategoryByID(int cat_id);
    public void updateCategory(Category category);
    public void deleteCategory(String[] categorys);
    public void insertCategory(Category category);

}
