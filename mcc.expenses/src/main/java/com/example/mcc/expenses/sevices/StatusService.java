/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.sevices;

import com.example.mcc.expenses.entities.Status;
import com.example.mcc.expenses.repositories.StatusRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public class StatusService {
    @Autowired
    StatusRepository statusRepository;

    public StatusService() {
    }

    public StatusService(StatusRepository statusRepository) {
        this.statusRepository = statusRepository;
    }
    
    public List<Status> getAll(){
        List<Status> status = new ArrayList<>();
        for (Status stat:statusRepository.findAll()){
        status.add(new Status(stat.getStatusId(),stat.getName()));
    }
        return status;
    }
}
