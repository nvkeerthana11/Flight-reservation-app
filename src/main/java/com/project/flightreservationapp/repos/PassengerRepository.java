package com.project.flightreservationapp.repos;

import java.util.Date;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.flightreservationapp.entities.Flight;
import com.project.flightreservationapp.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {


}
