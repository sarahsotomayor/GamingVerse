package com.soloproject.gamingverse.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="games")
public class Game {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 @NotEmpty
	 @Size(min = 3, message="Name must be at least 3 characters long.")
	 private String name;
	 @NotEmpty
	 @Size(min = 20, message="Description must be at least 20 characters long.")
	 private String description;
	 @NotEmpty(message="ESBR Rating cannot be empty")
	 private String esbrRating;
	 @NotEmpty(message="Console Compatibility cannot be empty")
	 private String console;
	 @NotEmpty(message="Genre cannot be empty")
	 private String genre;
	 @NotEmpty(message="Download Size cannot be empty")
	 private String size;
	 
	 @Column(updatable=false)
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date createdAt;
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date updatedAt;
	 
	 //a game has many reviews
	 @OneToMany(mappedBy="game", fetch = FetchType.EAGER)
	 private List<Review> reviews;

	public Game() {
		 
	 }
	 
	 public Game(String name, String description, Integer rating, String esbrRating, String console, String genre, String size) {
		 this.name = name;
		 this.description = description;
		 this.esbrRating = esbrRating;
		 this.console = console;
		 this.genre = genre;
		 this.size = size;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEsbrRating() {
		return esbrRating;
	}

	public void setEsbrRating(String esbrRating) {
		this.esbrRating = esbrRating;
	}

	public String getConsole() {
		return console;
	}

	public void setConsole(String console) {
		this.console = console;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	 
	 public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}
	
	
	 @PrePersist
	 protected void onCreate(){
	     this.createdAt = new Date();
	 }
	 @PreUpdate
	 protected void onUpdate(){
	     this.updatedAt = new Date();
	 }

	 
}
