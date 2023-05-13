<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8" />
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>register page</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      body {
        background: url("https://img.freepik.com/free-photo/side-view-person-holding-airplane-figurine-map_23-2148748634.jpg?w=1060&t=st=1683697524~exp=1683698124~hmac=a891c5d2baefa148aaeb159dc06255c3c063bd9f288e1aef2dcaeafda603140c")
          no-repeat;
        width: 100%;
        height: 100vh;
        background-size: cover;
        background-position: center;
        position: relative;
      }
      .container {
        max-width: 700px;
        width: 100%;
        background-color: rgba(255, 255, 255, 0.13);
        position: absolute;
        transform: translate(-50%, -50%);
        top: 60%;
        left: 50%;
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 50px 35px;
      }
      .container .title {
        font-size: 25px;
        font-weight: 500;
        position: relative;
      }
      .container .title::before {
        content: "";
        position: absolute;
        left: 0;
        bottom: 0;
        height: 3px;
        width: 30px;
        border-radius: 5px;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
      }
      .content form .user-details {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin: 20px 0 12px 0;
      }
      form .user-details .input-box {
        margin-bottom: 15px;
        width: calc(100% / 2 - 20px);
      }
      form .input-box span.details {
        display: block;
        font-weight: 500;
        margin-bottom: 5px;
      }
      .user-details .input-box input {
        height: 45px;
        width: 100%;
        outline: none;
        font-size: 16px;
        border-radius: 5px;
        padding-left: 15px;
        border: 1px;
        border-bottom-width: 2px;
        transition: all 0.3s ease;
      }
      .user-details .input-box input:focus,
      .user-details .input-box input:valid {
        background-color: rgba(255, 255, 255, 0.13);
      }
      form .gender-details .gender-title {
        font-size: 20px;
        font-weight: 500;
      }
      form .category {
        display: flex;
        width: 80%;
        margin: 14px 0;
        justify-content: space-between;
      }
      form .category label {
        display: flex;
        align-items: center;
        cursor: pointer;
      }
      form .category label .dot {
        height: 18px;
        width: 18px;
        border-radius: 50%;
        margin-right: 10px;
        background: #d9d9d9;
        border: 5px solid transparent;
        transition: all 0.3s ease;
      }
      #dot-1:checked ~ .category label .one,
      #dot-2:checked ~ .category label .two,
      #dot-3:checked ~ .category label .three {
        background: #9b59b6;
        border-color: #d9d9d9;
      }
      form input[type="radio"] {
        display: none;
      }
      form .button {
        height: 45px;
        margin: 35px 0;
      }
      form .button input {
        height: 100%;
        width: 100%;
        border-radius: 5px;
        border: none;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        letter-spacing: 1px;
        cursor: pointer;
        transition: all 0.3s ease;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
      }
      form .button input:hover {
        /* transform: scale(0.99); */
        background: linear-gradient(-135deg, #71b7e6, #9b59b6);
      }
      @media (max-width: 584px) {
        .container {
          max-width: 100%;
        }
        form .user-details .input-box {
          margin-bottom: 15px;
          width: 100%;
        }
        form .category {
          width: 100%;
        }
        .content form .user-details {
          max-height: 300px;
          overflow-y: scroll;
        }
        .user-details::-webkit-scrollbar {
          width: 5px;
        }
      }
      @media (max-width: 459px) {
        .container .content .category {
          flex-direction: column;
        }
      }

      ::selection {
        color: #000;
        background: #fff;
      }
      nav {
        position: fixed;
        background: #1b1b1b;
        width: 100%;
        padding: 10px 0;
        z-index: 12;
      }
      nav .menu {
        max-width: 1250px;
        margin: auto;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 20px;
      }
      .menu .logo a {
        text-decoration: none;
        color: #fff;
        font-size: 35px;
        font-weight: 600;
      }
      .menu ul {
        display: inline-flex;
      }
      .menu ul li {
        list-style: none;
        margin-left: 7px;
      }
      .menu ul li:first-child {
        margin-left: 0px;
      }
      .menu ul li a {
        text-decoration: none;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        padding: 8px 15px;
        border-radius: 5px;
        transition: all 0.3s ease;
      }
      .menu ul li a:hover {
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
    <div class="container">
      <div class="title">Fill in details</div>
      <div class="content">
      
        <form action="completeReservation" method="post">
          <div class="user-details">
            <div class="input-box">
              <span class="details">First Name</span>
              <input type="text" name="passengerFirstName"  />
            </div>
            <div class="input-box">
              <span class="details">Last Name</span>
              <input type="text" name="passengerLastName" />
            </div>

            <div class="input-box">
              <span class="details">Email</span>
              <input type="email" name="passengerEmail"  />
            </div>
            <div class="input-box">
              <span class="details">Mobile Number</span>
              <input type="text" name="passengerPhone"  />
            </div>

            <div class="input-box">
              <span class="details">Card Name</span>
              <input type="text" name="nameOnTheCard"  />
            </div>
            <div class="input-box">
              <span class="details">Card Number</span>
              <input type="text" name="cardNumber"  />
            </div>
            <div class="input-box">
              <span class="details">Expiry Date</span>
              <input type="text" name="expirationDate" />
            </div>
            <div class="input-box">
              <span class="details">Section Code</span>
              <input type="text" name="securityCode" />
              
            </div>
          </div>
<input type="hidden" name="flightId" value="${flight.id}"/>
          <div class="button">
            <input type="submit" value="Confirm" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
