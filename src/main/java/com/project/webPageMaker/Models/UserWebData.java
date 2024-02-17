package com.project.webPageMaker.Models;

import java.util.ArrayList;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UserWebData {

	@Id
	private int id;
	private String title, profile_pic, notes, map, text;
	
	private ArrayList<String> social_links, photos, videos;
	public UserWebData(String title, String profile_pic, String notes, String map, String text, int id,
			ArrayList<String> social_links, ArrayList<String> photos, ArrayList<String> videos) {
		super();
		this.title = title;
		this.profile_pic = profile_pic;
		this.notes = notes;
		this.map = map;
		this.text = text;
		this.id = id;
		this.social_links = social_links;
		this.photos = photos;
		this.videos = videos;
	}
	public UserWebData() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ArrayList<String> getSocial_links() {
		return social_links;
	}
	public void setSocial_links(ArrayList<String> social_links) {
		this.social_links = social_links;
	}
	public ArrayList<String> getPhotos() {
		return photos;
	}
	public void setPhotos(ArrayList<String> photos) {
		this.photos = photos;
	}
	public ArrayList<String> getVideos() {
		return videos;
	}
	public void setVideos(ArrayList<String> videos) {
		this.videos = videos;
	}
	@Override
	public String toString() {
		return "UserWebData [title=" + title + ", profile_pic=" + profile_pic + ", notes=" + notes + ", map=" + map
				+ ", text=" + text + ", id=" + id + ", social_links=" + social_links + ", photos=" + photos
				+ ", videos=" + videos + "]";
	}
	
	

}
