package com.soloproject.gamingverse.models;

import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;


//CALLS THE MAIN GENRE SEARCH, RETRIEVING ALL GENRES
public class Genre {
	
	@OneToMany(mappedBy="genreResults", fetch = FetchType.EAGER)
	private List<GenreResults> genreResults;

	public List<GenreResults> getGenreResults() {
		return genreResults;
	}

	public void setGenreResults(List<GenreResults> genreResults) {
		this.genreResults = genreResults;
	}

	public Genre() {
		
	}

	@Override
	public String toString() {
		return "Genre [genreResults=" + genreResults + "]";
	}

	

}
