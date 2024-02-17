package com.project.webPageMaker.Models;

import java.util.ArrayList;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UserWebData {

	@Id
	private int id;
	private String title, profile_pic,map;
	
	private ArrayList<String> social_links, photos, videos,notes,text;
	
	

}
