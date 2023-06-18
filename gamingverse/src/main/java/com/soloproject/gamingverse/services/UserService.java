package com.soloproject.gamingverse.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.soloproject.gamingverse.models.LoginUser;
import com.soloproject.gamingverse.models.User;
import com.soloproject.gamingverse.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	//CREATE USER
	public User createUser(User u, BindingResult result) {
		//check if passwords match in registration
		if (!u.getConfirmPassword().equals(u.getPassword())) {
			result.rejectValue("confirmPassword", null, "Passwords do not match!");
		}
		//checks for other errors
		if (result.hasErrors()) {
			return null;
		}
		//BCrypt
		String hashedPW = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt());
		u.setPassword(hashedPW);
		
		return userRepository.save(u);
	}
	
	//LOGIN USER
	public User login(LoginUser l, BindingResult result) {
		Optional<User> optUser = userRepository.findByEmail(l.getEmail());
		if (optUser.isEmpty()) {
			return null;
		}
		User user = optUser.get();
		
		if(!BCrypt.checkpw(user.getPassword(), user.getPassword())) {
		    result.rejectValue("password", "Matches", "Invalid Password!");
		}
		return user;
	}
	
	//GET ONE USER BY ID
	public User findById(Long id) {
		Optional<User> user = userRepository.findById(id);
		if (user.isEmpty()) {
			return null;
		}
		return user.get();
	}
	
}
