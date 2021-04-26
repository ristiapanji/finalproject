/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.client.expenses.services;

import com.example.mcc.client.expenses.config.RequestFormat;
import com.example.mcc.client.expenses.entities.Categories;
import java.util.List;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author User
 */
@Service
public class IndexService {
    
    @Autowired
    private RestTemplate restTemplate;
    
     @Value("${api.url}/category")
    private String url;
     
    public List<Categories> getAll() {
                ResponseEntity<List<Categories>> response = restTemplate
                        .exchange(url, HttpMethod.GET, new HttpEntity(RequestFormat.createHeaders()),
                                new ParameterizedTypeReference<List<Categories>>() {
                        });
 
                return response.getBody();
            }
}
