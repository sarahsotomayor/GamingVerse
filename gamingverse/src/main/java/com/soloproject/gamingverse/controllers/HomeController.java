package com.soloproject.gamingverse.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.soloproject.gamingverse.services.VideoGameService;

@Controller
public class HomeController {

	//HOME PAGE
	@GetMapping("/")
	public String index() {
		return "homePage.jsp";
	}
	
	//GAMES PAGE
	@GetMapping("/games")
	public String gamesPage() {
		return "/gamesPage.jsp";
	}
	
	
	//SEARCH PAGE - API
	@GetMapping("/search")
	public String searchPage() {
		return "/searchPage.jsp";
	}
	
	//SEARCH PAGE FORM PROCESSING - API
	
	
	
	//SEARCH RESULTS PAGE - API
	@GetMapping("/api/results")
	public String searchResults(Model model) {
		
		model.addAttribute("genre", VideoGameService.getGenres());
		
		//Testing
		System.out.println("Home Controller API Results:");
		System.out.println(VideoGameService.getGenres());
		return "/searchResultsPage.jsp";
	}
	

	
}
