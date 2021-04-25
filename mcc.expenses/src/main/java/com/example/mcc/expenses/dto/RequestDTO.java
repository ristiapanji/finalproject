/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.dto;

import java.util.Date;

/**
 *
 * @author User
 */
public class RequestDTO {
    private Integer requestId;
    private Integer quantity;
    private Integer total;
    private String file;
    private Date dateRequest;
    private String message;
    private String userName;
    private String name;
    private String categoryName;

    public RequestDTO() {
    }

    public RequestDTO(Integer requestId, Integer quantity, Integer total, String file, Date dateRequest, String message, String userName, String name, String categoryName) {
        this.requestId = requestId;
        this.quantity = quantity;
        this.total = total;
        this.file = file;
        this.dateRequest = dateRequest;
        this.message = message;
        this.userName = userName;
        this.name = name;
        this.categoryName = categoryName;
    }

    public Integer getRequestId() {
        return requestId;
    }

    public void setRequestId(Integer requestId) {
        this.requestId = requestId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public Date getDateRequest() {
        return dateRequest;
    }

    public void setDateRequest(Date dateRequest) {
        this.dateRequest = dateRequest;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    
    
}
