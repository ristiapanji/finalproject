/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.sevices;

import com.example.mcc.expenses.entities.Categories;
import com.example.mcc.expenses.repositories.CategoryRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;

    public CategoryService() {
    }

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
    
    public List<Categories> getAll(){
        List<Categories> categories = new ArrayList<>();
        for (Categories category:categoryRepository.findAll()){
        categories.add(new Categories(category.getCategoryId(),category.getCategoryName(),category.getCutOff(),category.getLimitRequest()));
    }
        return categories;
    }
    
    //Read -> Select
//    public List<Person> getAll() {
//        return personRepository.findAll();
//    }
}
