/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.mcc.expenses.repositories;

import com.example.mcc.expenses.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface RoleRepository extends JpaRepository<Role,Integer>{
    Role findByRoleName(String roleName);
}
