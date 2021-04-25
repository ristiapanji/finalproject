/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.sevices;

import com.example.mcc.expenses.dto.RequestDTO;
import com.example.mcc.expenses.entities.Requests;
import com.example.mcc.expenses.repositories.RequestRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public class RequestService {
    @Autowired
    RequestRepository requestRepository;

    public RequestService() {
    }

    public RequestService(RequestRepository requestRepository) {
        this.requestRepository = requestRepository;
    }
    
    public List<RequestDTO> getAll(){
        List<RequestDTO> requests = new ArrayList<>();
        for(Requests req:requestRepository.findAll()){
            requests.add(new RequestDTO(req.getRequestId(),req.getQuantity(),req.getTotal(), req.getFile(),req.getDateRequest(),req.getMessage(),
                    req.getUserId().getUserName(),req.getStatusId().getName(),req.getCategoryId().getCategoryName()));
        }
        return requests;
    }
}
