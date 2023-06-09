package com.soloproject.gamingverse.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
			return "redirect:/admin/addgame";
		}
	}
	
	//VIEW ALL GAMES
	@GetMapping("/allgames")
	public String games(Model model, HttpSession session, RedirectAttributes redirect) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			redirect.addFlashAttribute("error", "You must be logged in to view that page.");
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
	
	
	//VIEW ONE GAME & ITS REVIEWS
	@GetMapping("/viewgame/{gameId}")
	public String viewGame(@PathVariable("gameId") Long id, Model model, HttpSession session, RedirectAttributes redirect) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			redirect.addFlashAttribute("error", "You must be logged in to view that page.");
			return "redirect:/login";
		}
		
		Game game = gameService.findGame(id);
		model.addAttribute("game", game);
		
		
		model.addAttribute("user", userService.findById((Long) session.getAttribute("userId")));

		
		return "/viewGame.jsp";
	}

	
	//ADD REVIEW FORM
	@GetMapping("/add/review/{gameId}")
	public String addReview(@PathVariable("gameId") Long id, Model model, @ModelAttribute("newReview") Review newReview, HttpSession session, RedirectAttributes redirect) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			redirect.addFlashAttribute("error", "You must be logged in to view that page.");
			return "redirect:/login";
		}
		
		Game game = gameService.findGame(id);
		model.addAttribute("game", game);
		model.addAttribute("user", userService.findById((Long) session.getAttribute("userId")));

		return "addReview.jsp";
	}
	
	
	//PROCESS AND ADD REVIEW
	@PostMapping("/add/review/{gameId}/create")
	public String createGame(@Valid @ModelAttribute("newReview") Review newReview, BindingResult result, @PathVariable("gameId") Long id, Model model, HttpSession session)
	{
		if(result.hasErrors()) {
			return "addReview.jsp";
		}
		else {
			User user = userService.findById((Long) session.getAttribute("userId"));
			newReview.setUser(user);
			
			Game game = gameService.findGame(id);
			
			model.addAttribute("game", game);
			
			newReview.setGame(game);
			
			reviewService.createReview(newReview);
			
			return String.format("redirect:/viewgame/" + id);
		}
	}
	
	
	//VIEW & EDIT REVIEW
	@GetMapping("/view/review/{gameId}/{reviewId}")
	public String viewReview(@PathVariable("gameId") Long id, @PathVariable("reviewId") Long reviewid, Model model, HttpSession session, RedirectAttributes redirect) {
		//Only accessible if logged on
		if (session.getAttribute("userId") == null) {
			redirect.addFlashAttribute("error", "You must be logged in to view that page.");
			return "redirect:/login";
		}
		else {
		model.addAttribute("user", userService.findById((Long) session.getAttribute("userId")));	
		
		Game game = gameService.findGame(id);
		model.addAttribute("game", game);
		
		Review review = reviewService.findReview(reviewid);
		model.addAttribute("editReview", review);
		
		reviewService.updateReview(review);
		return "viewReview.jsp";
		}
	}
	
	
	//PROCESS EDIT FORM
	@PutMapping(value="/view/review/{gameId}/{reviewId}/edit")
	public String update(@Valid @ModelAttribute("editReview") Review review, @PathVariable("gameId") Long id, @PathVariable("reviewId") Long reviewid, BindingResult result) {
		if(result.hasErrors()) {
			return "viewReview.jsp";
		}
		else {
			
			reviewService.updateReview(review);
			
			return String.format("redirect:/viewgame/" + id);
		}
		
	}
	
	
	//DELETE REVIEW
	@DeleteMapping("/review/{id}")
	public String deleteReview(@PathVariable("id") Long id) {
		reviewService.delete(id);
		return "redirect:/allgames";
	}
	
	
	//ADD GAME TO FAVORITES LIST
	
	
	//REMOVE GAME FROM FAVORITES LIST
	
	
	//ADD TO CART
	
	
	//VIEW CART
	
	
	//EDIT CART
	
	
	//DELETE FROM CART

}
