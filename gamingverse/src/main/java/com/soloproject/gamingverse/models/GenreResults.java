package com.soloproject.gamingverse.models;

import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


//RETRIEVES LIST OF GAMES IN EACH GENRE
public class GenreResults {
	
	public Long id;
	
	public String name;
	
	public String slug;
	
	public int games_count;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="genre")
	private Genre genre;
	
	@OneToMany(mappedBy="gameDetailsFromGenreResults", fetch = FetchType.EAGER)
	private List<GameDetailsFromGenreResults> gameDetailsFromGenreResults;
	
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

	public List<GameDetailsFromGenreResults> gameDetailsFromGenreResults() {
		return gameDetailsFromGenreResults;
	}

	public void setGameDetails(List<GameDetailsFromGenreResults> gameDetailsFromGenreResults) {
		this.gameDetailsFromGenreResults = gameDetailsFromGenreResults;
	}
	
	
}
