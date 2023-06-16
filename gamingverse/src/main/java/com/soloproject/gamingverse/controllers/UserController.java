package com.soloproject.gamingverse.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.soloproject.gamingverse.models.User;
import com.soloproject.gamingverse.services.UserService;
import com.soloproject.gamingverse.models.LoginUser;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	//LOGIN & REGISTRATION PAGE
	@GetMapping("/login")
	public String logreg(Model model) {
		
		model.addAttribute("user", new User());
		model.addAttribute("loginUser", new LoginUser());
		return "loginRegistration.jsp";
	}
	
	//REGISTER 
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
		//run register method to then check for errors
		//you can call it anything as long as it is not the same as above
			//User user  not same as User newUser
		User newUser = userService.createUser(user, result);
		
		//if new user is null(has errors), re-renders logReg template
		if(newUser == null) {
			//must include login user attribute because there is a login user form on that page
			model.addAttribute("loginUser", new LoginUser());
			return "loginRegistration.jsp";
		}
		
		//add user to DB and login using session
		session.setAttribute("userId", newUser.getId());
		return "redirect:/allgames";
	}
	
	//LOGIN
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("loginUser") LoginUser loginUser, BindingResult result, Model model, HttpSession session) {
		//run login method
		User user = userService.login(loginUser, result);
		if (user == null) {
			model.addAttribute("user", new User());
			return "loginRegistration.jsp";
		}
		session.setAttribute("userId", user.getId());
		
		return "redirect:/allgames";
	}
	
	
	//HOME PAGE
	@GetMapping("/welcome")
	public String dashboard(Model model, HttpSession session) {
		Long id = (Long) session.getAttribute("userId");
		User loggedUser = userService.findById(id);
		model.addAttribute("user", loggedUser);
		return "homePage.jsp";
	}
	
	
	//LOGOUT
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("userId", null);
		// you can also do the following instead: session.invalidate();
		return "redirect:/login";
	}
	

	
}
