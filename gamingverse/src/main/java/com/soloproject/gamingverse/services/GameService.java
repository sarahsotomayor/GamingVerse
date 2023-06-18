package com.soloproject.gamingverse.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soloproject.gamingverse.models.Game;
import com.soloproject.gamingverse.repositories.GameRepository;


@Service
@Transactional
public class GameService {

	@Autowired
	private GameRepository gameRepository;
	
	//CREATE GAME
	public Game createGame(Game g) {
		return gameRepository.save(g);
		
	}
	
	//GET ONE GAME BY ID
	public Game findGame(Long id) {
		Optional<Game>optionalGame = gameRepository.findById(id);
		if(optionalGame.isPresent()) {
			return optionalGame.get();
		} else {
			return null;
		}
	}
	
	//ALL GAMES
	public List<Game>allGames(){
		return gameRepository.findAll();
	}
	
	//PAGINATION & SORTING

	
}
