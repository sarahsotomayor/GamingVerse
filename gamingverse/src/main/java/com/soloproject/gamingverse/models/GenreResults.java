package com.soloproject.gamingverse.models;



//RETRIEVES LIST OF GAMES IN EACH GENRE
public class GenreResults {
	
	public Long id;
	
	public String name;
	
	public String slug;
	
	public int games_count;
	
	public GenreResults() {
		
	}

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

	public int getGames_count() {
		return games_count;
	}

	public void setGames_count(int games_count) {
		this.games_count = games_count;
	}
	
	
}
