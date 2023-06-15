package com.soloproject.gamingverse.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.soloproject.gamingverse.models.Game;
import com.soloproject.gamingverse.models.Review;
import com.soloproject.gamingverse.models.User;
import com.soloproject.gamingverse.services.GameService;
import com.soloproject.gamingverse.services.ReviewService;
import com.soloproject.gamingverse.services.UserService;

@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private UserService userService;
	
	//ADMIN - VIEW ADMIN PAGE - ADD GAME FORM
	@GetMapping("/admin/addgame")
	public String adminAddGame(@ModelAttribute("newGame") Game newGame) {
		return "adminAddGame.jsp";
	}
	
	//ADMIN - VIEW ADMIN PROCESS AND ADD GAME
	@PostMapping("/admin/addgame/create")
	public String createGame(@Valid @ModelAttribute("newGame") Game newGame, BindingResult result)
	{
		if(result.hasErrors()) {
			return "adminAddGame.jsp";
		}
		else {
			gameService.createGame(newGame);
			return "redirect:/viewgame";
		}
	}
	
	//VIEW ALL GAMES
	@GetMapping("/allgames")
	public String games(Model model, HttpSession session) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
	//RETURN ALL GAMES
		List<Game> allGames = gameService.allGames();
	//STORE LIST IN MODEL
		model.addAttribute("allGames", allGames);
	//GET USER FROM SESSION
		model.addAttribute("user", userService.findById((Long) session.getAttribute("userId")));
		
		return "viewAllGames.jsp";
	}
	
	
	//VIEW ONE GAME
	@GetMapping("/viewgame/{gameId}")
	public String viewGame(@PathVariable("gameId") Long id, Model model, HttpSession session) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		
		Game game = gameService.findGame(id);
		model.addAttribute("game", game);
		model.addAttribute("user", userService.findById((Long) session.getAttribute("userId")));

		
		return "/viewGame.jsp";
	}

	
	//ADD REVIEW FORM
	@GetMapping("/add/review/{gameId}")
	public String addReview(@PathVariable("gameId") Long id, Model model, @ModelAttribute("newReview") Review newReview, HttpSession session) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		
		Game game = gameService.findGame(id);
		model.addAttribute("game", game);
		return "addReview.jsp";
	}
	
	/*
	 * @GetMapping("/viewgame/{gameId}/add/review") public String
	 * addReview(@PathVariable("gameId") Long id, Model
	 * model, @ModelAttribute("newReview") Review newReview) { Game game =
	 * gameService.findGame(id); model.addAttribute("game", game); return
	 * "addReview.jsp"; }
	 */
	
	
	//PROCESS AND ADD REVIEW
	@PostMapping("/add/review/create")
	public String createGame(@Valid @ModelAttribute("newReview") Review newReview, BindingResult result, HttpSession session)
	{
		if(result.hasErrors()) {
			return "addReview.jsp";
		}
		else {
			User user = userService.findById((Long) session.getAttribute("userId"));
			newReview.setUser(user);
			reviewService.createReview(newReview);
			return "redirect:viewGame.jsp";
		}
	}
	
	
	//VIEW REVIEW
	
	
	//EDIT REVIEW
	
	
	//DELETE REVIEW
	
	
	//ADD GAME TO FAVORITES LIST
	
	
	//REMOVE GAME FROM FAVORITES LIST
	
	
	//ADD TO CART
	
	
	//VIEW CART
	
	
	//EDIT CART
	
	
	//DELETE FROM CART

}
