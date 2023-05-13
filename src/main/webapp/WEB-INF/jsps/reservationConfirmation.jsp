<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Responsive Registration Form | CodingLab</title>

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
        background-attachment: fixed;
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

      body {
        text-align: center;
      }
      h1 {
        color: #88b04b;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
      }
      p {
        color: #404f5e;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size: 20px;
        margin: 0;
      }
      i {
        color: #9abc66;
        font-size: 100px;
        line-height: 200px;
        margin-left: -15px;
      }
      .card {
        background-color: rgba(255, 255, 255, 0.13);
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 60px;
        border-radius: 4px;

        display: inline-block;
        margin: 0 auto;
        margin-top: 100px;
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

    <div class="card">
      <div
        style="
          border-radius: 200px;
          height: 200px;
          width: 200px;
          background: #f8faf5;
          margin: 0 auto;
        "
      >
        <i class="checkmark">✓</i>
      </div>
      <h1>Registration Successful.</h1>
      <p>${msg}</p>
       
    </div>
  </body>
</html>
