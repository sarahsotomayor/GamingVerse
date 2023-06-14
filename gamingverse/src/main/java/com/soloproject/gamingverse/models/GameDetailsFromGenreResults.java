package com.soloproject.gamingverse.models;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

//RETRIEVES THE BASIC GAME DETAILS IN EACH GAME LISTED IN EACH GENRE
public class GameDetailsFromGenreResults {
	
	public Long id;
	
	public String name;
	
	public String slug;
	
	public GameDetailsFromGenreResults() {
		
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="genreResults_id")
	private GenreResults genreResults;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

}
