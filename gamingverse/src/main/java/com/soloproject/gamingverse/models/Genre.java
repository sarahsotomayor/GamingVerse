package com.soloproject.gamingverse.models;




//CALLS THE MAIN GENRE SEARCH, RETRIEVING ALL GENRES
public class Genre {
	
	public Integer count;
	
	public String next;
	
	public String previous;

	public Genre() {
		
	}
	

	public Integer getCount() {
		return count;
	}


	public void setCount(Integer count) {
		this.count = count;
	}


	public String getNext() {
		return next;
	}


	public void setNext(String next) {
		this.next = next;
	}


	public String getPrevious() {
		return previous;
	}


	public void setPrevious(String previous) {
		this.previous = previous;
	}
	

}
