package com.project.flightreservationapp.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.flightreservationapp.entities.Flight;
import com.project.flightreservationapp.repos.FlightRepository;

@RestController
@RequestMapping(value="/flights")
public class FlightRestController {

	private static final Logger LOGGER = LoggerFactory.getLogger(FlightController.class);

	@Autowired
	FlightRepository flightRepository;

	@GetMapping
	public List<Flight> getFlights(@RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate) {

		LOGGER.info("Inside findFlights() From:" + from + " TO:" + to + "Departure Date: " + departureDate);
		List<Flight> flights = flightRepository.findFlights(from, to, departureDate);
		return flights;

	}
	
	
	
}
