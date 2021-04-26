/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.client.expenses.entities;

import java.util.Date;
import lombok.Data;

/**
 *
 * @author User
 */
@Data
public class Categories {
    private Integer categoryId;
    private String categoryName;
    private Date cutOff;
    private Integer limitRequest;

    public Categories() {
    }

    public Categories(Integer categoryId, String categoryName, Date cutOff, Integer limitRequest) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.cutOff = cutOff;
        this.limitRequest = limitRequest;
    }
    
    
}
