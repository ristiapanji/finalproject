/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.controllers;

import com.example.mcc.expenses.dto.DataLoginDTO;
import com.example.mcc.expenses.dto.LoginDTO;
import com.example.mcc.expenses.sevices.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author User
 */

@RestController
public class LoginController {
    
    @Autowired
    LoginService loginService;
    
    @PostMapping("/login")
    public LoginDTO loginDTO(@RequestBody DataLoginDTO dataLoginDTO){
        return loginService.loginDTO(loginService.loadByUserName(dataLoginDTO.getUserName(), dataLoginDTO.getUserPassword()));
    }
}
