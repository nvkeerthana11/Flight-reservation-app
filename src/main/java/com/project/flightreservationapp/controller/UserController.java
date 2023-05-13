package com.project.flightreservationapp.controller;

import java.util.List;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.flightreservationapp.entities.User;
import com.project.flightreservationapp.repos.UserRepository;



@Controller
public class UserController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserRepository userRepository;

	
	@RequestMapping("/showReg")
	public String showRegistrationPage() {
	LOGGER.info("inside showRegistrationPage");
		return "login/registerUser";
	}
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user) {
		LOGGER.info("inside register");
	
		userRepository.save(user);
	
		return "login/login";

	}
	
	
	@RequestMapping("/showLogin")
	public String showLoginPage() {
		LOGGER.info("Inside showLoginPage()");
		return "login/login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {
		LOGGER.info("inside login and your email is " + email);
	User user = userRepository.findByEmail(email);
		if (user.getPassword().equals(password)) {
			
			return "findFlights";
		} else {
			modelMap.addAttribute("msg", "Invalid user name or password .Please try again.");
		}

		return "login/login";

	}
}
