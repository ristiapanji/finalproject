/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.dto;

import java.util.Collection;

/**
 *
 * @author User
 */
public class LoginDTO {
    private Integer userId;
    private String userName;
    private String employeeName;
    private Collection<String> authorities;

    public LoginDTO() {
    }

    public LoginDTO(Integer userId, String userName, String employeeName, Collection<String> authorities) {
        this.userId = userId;
        this.userName = userName;
        this.employeeName = employeeName;
        this.authorities = authorities;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Collection<String> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(Collection<String> authorities) {
        this.authorities = authorities;
    }
    
    
}
