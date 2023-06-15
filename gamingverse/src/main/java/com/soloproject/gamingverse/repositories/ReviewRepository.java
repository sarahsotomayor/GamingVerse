package com.soloproject.gamingverse.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.soloproject.gamingverse.models.Review;

@Repository
public interface ReviewRepository extends CrudRepository <Review, Long>{

	public List<Review> findAll();
}
