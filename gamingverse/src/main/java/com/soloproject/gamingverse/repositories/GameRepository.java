package com.soloproject.gamingverse.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.soloproject.gamingverse.models.Game;

@Repository
public interface GameRepository extends CrudRepository <Game, Long>{
	
	public List<Game> findAll();

}
