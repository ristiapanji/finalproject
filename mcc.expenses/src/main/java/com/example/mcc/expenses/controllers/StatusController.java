/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.controllers;

import com.example.mcc.expenses.entities.Status;
import com.example.mcc.expenses.sevices.StatusService;
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
@RequestMapping("/status")
public class StatusController {
    
    @Autowired
    StatusService statusService;

    public StatusController() {
    }

    public StatusController(StatusService statusService) {
        this.statusService = statusService;
    }
    
    @GetMapping("")
    public List<Status> getAll(){
        return statusService.getAll();
    }
}
