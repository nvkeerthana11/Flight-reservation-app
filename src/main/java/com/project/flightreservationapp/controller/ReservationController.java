package com.project.flightreservationapp.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;


import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.flightreservationapp.controller.FlightController;
import com.project.flightreservationapp.dto.ReservationRequest;
import com.project.flightreservationapp.entities.Flight;
import com.project.flightreservationapp.entities.Reservation;
import com.project.flightreservationapp.repos.FlightRepository;
import com.project.flightreservationapp.repos.ReservationRepository;
import com.project.flightreservationapp.services.ReservationService;

@Controller
public class ReservationController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ReservationController.class);

	@Autowired
	FlightRepository flightRepository;

	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	ReservationService reservationService;

	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {

		LOGGER.info("showCompleteReservation() invoked with the Flight Id: " + flightId);
		Flight flight = flightRepository.findById(flightId).get();
		modelMap.addAttribute("flight", flight);
		LOGGER.info("Flight is:" + flight);
		return "completeReservation";

	}
	

	@RequestMapping(value = "/completeReservation", method = RequestMethod.POST)
	public String completeReservation(ReservationRequest request, ModelMap modelMap) {
		LOGGER.info("completeReservation()  " + request);
		Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Your reservation id is" + reservation.getId());
		return "reservationConfirmation";

	}
	
	@RequestMapping("/allReservations")
	public List<Reservation> getReservations() {

		List<Reservation> reservations = reservationRepository.findAll();
		return reservations;

	}
	

	

}
