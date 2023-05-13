package com.project.flightreservationapp.services;

import com.project.flightreservationapp.dto.ReservationRequest;
import com.project.flightreservationapp.entities.Reservation;

public interface ReservationService {

	public Reservation bookFlight(ReservationRequest request);
	
}
