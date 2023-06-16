package com.soloproject.gamingverse.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soloproject.gamingverse.models.Review;
import com.soloproject.gamingverse.repositories.ReviewRepository;

@Service
public class ReviewService {

	@Autowired
	private ReviewRepository reviewRepository;
	
	//CREATE REVIEW
	public Review createReview(Review r) {
		return reviewRepository.save(r);
	}
	
	//GET ONE REVIEW BY ID
	public Review findReview(Long id) {
		Optional<Review>optionalReview = reviewRepository.findById(id);
		if(optionalReview.isPresent()) {
			return optionalReview.get();
		} else {
			return null;
		}
	}

	//ALL REVIEWS
	public List<Review>allReviews(){
		return reviewRepository.findAll();
	}
	
	//UPDATE REVIEW
	public Review updateReview(Review r) {
		return reviewRepository.save(r);
	}
	
	//DELETE REVIEW
	public void delete(Long id) {
		reviewRepository.deleteById(id);
	}
	
	
}
