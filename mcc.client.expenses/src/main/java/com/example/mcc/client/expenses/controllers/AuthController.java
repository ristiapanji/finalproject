/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.client.expenses.controllers;


import com.example.mcc.client.expenses.entities.AuthRequest;
import com.example.mcc.client.expenses.services.AuthService;
import com.example.mcc.client.expenses.services.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author User
 */


@Controller
public class AuthController {

    @Autowired
    AuthService authService;
    
    @Autowired
    private IndexService indexService;

    @GetMapping("/login")
    public String loginPage(Model model) {
        Authentication authenticated = SecurityContextHolder.getContext().getAuthentication();
        if (!(authenticated instanceof AnonymousAuthenticationToken)) {
            /* The user is logged in :) */
            return "redirect:/dashboard";
        }

        AuthRequest auth = new AuthRequest();
        model.addAttribute("auth", auth);
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashborad(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("username", authentication.getPrincipal().toString());
         model.addAttribute("categories", indexService.getAll());//list dari getall
//        model.addAttribute("autor", authentication.getPrincipal().toString());

//        model.addAttribute("autor", authentication.getAuthorities().toString());
        model.addAttribute("autor", authentication.getAuthorities().toString());
        return "dashboard";
    }

    @PostMapping("/login")
    public String loginProcess(@ModelAttribute("auth") AuthRequest auth) {
        String redirectUrl = "";

        if (authService.loginProcess(auth)) {
            redirectUrl = "redirect:/dashboard";
        } else {
            redirectUrl = "redirect:/login?error";
        }

        return redirectUrl;
    }

}
