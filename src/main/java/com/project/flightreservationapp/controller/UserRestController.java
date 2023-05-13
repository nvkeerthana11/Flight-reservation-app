package com.project.flightreservationapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.flightreservationapp.entities.User;
import com.project.flightreservationapp.repos.UserRepository;

@RestController
@RequestMapping(value="/users")
public class UserRestController {

	@Autowired
	private UserRepository userRepository;
	
	
		@GetMapping
		public List<User> getUsers()   
		{  
		
		List<User> users = userRepository.findAll();  
		
		return users;  
		}  
		
		//@RequestMapping(method = RequestMethod.POST)
		@PostMapping
		public User create(@RequestBody User user)
		{
			return userRepository.save(user);
		}
		
		@PutMapping
		public User update(@RequestBody User user)
		{
			return userRepository.save(user);
		}
		
		@GetMapping("/{id}")
		public User getUser(@PathVariable("id") Long id)   
		{  
		return userRepository.findById(id).get();  
		} 
	
}
