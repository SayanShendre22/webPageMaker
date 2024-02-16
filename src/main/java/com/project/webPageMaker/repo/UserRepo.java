package com.project.webPageMaker.repo;


import org.springframework.data.jpa.repository.JpaRepository;

import com.project.webPageMaker.Models.User;

public interface UserRepo extends JpaRepository<User, Integer> {

}
