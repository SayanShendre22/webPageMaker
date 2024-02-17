package com.project.webPageMaker.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.webPageMaker.Models.UserWebData;

public interface UserWebDataRepo extends JpaRepository<UserWebData, Integer>  {

}
