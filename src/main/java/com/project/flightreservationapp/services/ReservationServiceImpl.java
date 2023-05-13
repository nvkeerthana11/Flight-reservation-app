package com.project.flightreservationapp.services;

import java.util.Optional;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.flightreservationapp.services.ReservationServiceImpl;
import com.project.flightreservationapp.util.EmailUtil;
import com.project.flightreservationapp.util.PDFGenerator;
import com.project.flightreservationapp.dto.ReservationRequest;
import com.project.flightreservationapp.entities.Flight;
import com.project.flightreservationapp.entities.Passenger;
import com.project.flightreservationapp.entities.Reservation;
import com.project.flightreservationapp.repos.FlightRepository;
import com.project.flightreservationapp.repos.PassengerRepository;
import com.project.flightreservationapp.repos.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	FlightRepository flightRepository;

	@Autowired
	PassengerRepository passengerRepository;

	@Autowired
	ReservationRepository reservationRepository;

	@Autowired
	PDFGenerator pdfGenerator;

	@Autowired
	EmailUtil emailUtil;

	private static final Logger LOGGER = LoggerFactory.getLogger(ReservationServiceImpl.class);


	@Override
	public Reservation bookFlight(ReservationRequest request) {

		LOGGER.info("Inside bookFlight()");

		Long flightId = request.getFlightId();
		LOGGER.info("Fetching  flight for flight id:" + flightId);
		Flight flight = flightRepository.findById(flightId).get();

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setPhone(request.getPassengerPhone());
		passenger.setEmail(request.getPassengerEmail());
		LOGGER.info("Saving the passenger:" + passenger);
		Passenger savedPassenger = passengerRepository.save(passenger);

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		LOGGER.info("Saving the reservation:" + reservation);
		Reservation savedReservation = reservationRepository.save(reservation);

		String filePath ="C:/Users/2128267/OneDrive - Cognizant/Documents/reservation"+savedReservation.getId()+".pdf";
		
		pdfGenerator.generateItinerary(savedReservation,filePath);
		emailUtil.sendItinerary(passenger.getEmail(), filePath);
		
		return savedReservation;
	}

	
}
