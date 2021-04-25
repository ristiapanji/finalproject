/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.client.expenses.entities;

import java.util.List;
import lombok.Data;

/**
 *
 * @author User
 */
@Data
public class AuthResponse {
    private Integer userId;
    private String userName;
    private List<String> authorities;

    public AuthResponse() {
    }

    public AuthResponse(Integer userId, String userName, List<String> authorities) {
        this.userId = userId;
        this.userName = userName;
        this.authorities = authorities;
    }
    
    
}
