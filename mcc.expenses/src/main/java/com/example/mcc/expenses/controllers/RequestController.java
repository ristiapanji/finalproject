/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.controllers;

import com.example.mcc.expenses.dto.RequestDTO;
import com.example.mcc.expenses.entities.Requests;
import com.example.mcc.expenses.sevices.RequestService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author User
 */
@RestController
@RequestMapping("/request")
public class RequestController {
    @Autowired
    RequestService requestService;

    public RequestController() {
    }

    public RequestController(RequestService requestService) {
        this.requestService = requestService;
    }
    
    
    @GetMapping("")
    public List<RequestDTO> getAll(){
        return requestService.getAll();
    }
    
    
}
