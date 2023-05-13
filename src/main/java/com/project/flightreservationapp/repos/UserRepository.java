package com.project.flightreservationapp.repos;

import org.springframework.data.jpa.repository.JpaRepository;


import com.project.flightreservationapp.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

	
    

}
