<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet" href="src/styles.css" />
<title>Flights</title>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

h1 {
	text-align: center;
}

body {
	background:
		url("https://img.freepik.com/free-photo/side-view-person-holding-airplane-figurine-map_23-2148748634.jpg?w=1060&t=st=1683697524~exp=1683698124~hmac=a891c5d2baefa148aaeb159dc06255c3c063bd9f288e1aef2dcaeafda603140c")
		no-repeat;
	width: 100%;
	height: 100vh;
	background-size: cover;
	background-position: center;
	position: relative;
	background-attachment: fixed;
}

.card {
	height: 180px;
	width: 900px;
	background-color: rgba(255, 255, 255, 0.13);
	margin: 0 auto;
	float: none;
	border-radius: 10px;
	backdrop-filter: blur(10px);
	border: 2px solid rgba(255, 255, 255, 0.1);
	box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
}

.borderless td, .borderless th {
	border: none !important;
}
::selection{
  color: #000;
  background: #fff;
}
nav{
  position: fixed;
  background: #1b1b1b;
  width: 100%;
  padding: 10px 0;
  z-index: 12;
}
nav .menu{
  max-width: 1250px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 20px;
}
.menu .logo a{
  text-decoration: none;
  color: #fff;
  font-size: 35px;
  font-weight: 600;
}
.menu ul{
  display: inline-flex;
}
.menu ul li{
  list-style: none;
  margin-left: 7px;
}
.menu ul li:first-child{
  margin-left: 0px;
}
.menu ul li a{
  text-decoration: none;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  padding: 8px 15px;
  border-radius: 5px;
  transition: all 0.3s ease;
}
.menu ul li a:hover{
  background: #fff;
  color: black;
}
</style>
</head>
<body>
<nav>
    <div class="menu">
      <div class="logo">
        <a href="/">FlightBuzz</a>
      </div>
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="showReg">Register</a></li>
         <li><a href="showLogin">Login</a></li>
        <li><a href="#">Contact</a></li>
       
      </ul>
    </div>
  </nav>
	<h1>Book Flights</h1>
	<c:forEach items="${flights}" var="flight">


		<div class="card mt-4">
			<div class="card-body">
				<h5 class="card-title">${flight.operatingAirlines}</h5>
				<table class="table borderless">
					<thead>
						<tr>
							<th scope="col">Flying from</th>
							<th scope="col">Flying to</th>
							<th scope="col">Departure time</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td>${flight.departureCity}</td>
							<td>${flight.arrivalCity}</td>
							<td>${flight.estimatedDepartureTime}</td>
							<td><a class="btn btn-primary" href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</c:forEach>
</body>
</html>
