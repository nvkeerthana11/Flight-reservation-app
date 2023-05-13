package com.project.flightreservationapp.controller;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.flightreservationapp.controller.ReservationRESTController;
import com.project.flightreservationapp.dto.ReservationUpdateRequest;
import com.project.flightreservationapp.entities.Reservation;
import com.project.flightreservationapp.entities.User;
import com.project.flightreservationapp.repos.ReservationRepository;

@RestController
public class ReservationRESTController {

	private static final Logger LOGGER = LoggerFactory.getLogger(ReservationRESTController.class);

	@Autowired
	ReservationRepository reservationRepository;

	@RequestMapping("/reservations/{id}")
	public Reservation findReservation(@PathVariable("id") Long id) {
		LOGGER.info("Inside findReservation() for id: " + id);
		return reservationRepository.findById(id).get();

	}
	
	@RequestMapping(value="/allreservations",method=RequestMethod.GET)
	public List<Reservation> getReservations()   
	{  
	
	List<Reservation> reservation = reservationRepository.findAll();  
	
	return reservation;  
	}  
	
	@RequestMapping("/reservations")
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request) {
		LOGGER.info("Inside updateReservation() for " + request);
		Reservation reservation = reservationRepository.findById(request.getId()).get();
		reservation.setNumberOfBags(request.getNumberOfBags());
		reservation.setCheckedIn(request.getCheckedIn());
		LOGGER.info("Saving Reservation");
		return reservationRepository.save(reservation);

	}


}
