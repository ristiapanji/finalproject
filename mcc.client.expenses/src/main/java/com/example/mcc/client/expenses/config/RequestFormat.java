/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.client.expenses.config;

import java.nio.charset.Charset;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 *
 * @author User
 */
public class RequestFormat {
     public static HttpHeaders createHeaders() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        return new HttpHeaders() {
            {
                String auth = authentication.getName() + ":" + authentication.getCredentials();
                byte[] encodeAuth = Base64.encodeBase64(
                        auth.getBytes(Charset.forName("US-ASCII")));

                String authHeader = "Basic " + new String(encodeAuth);
                set("Authorization", authHeader);

            }
        };
    }
}
