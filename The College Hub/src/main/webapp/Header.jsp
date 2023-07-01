<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header - menu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<meta name="description" content="nalanda College, University of patna">
<meta name="keywords" content="nalanda collage, patna University">
<link rel="icon" href="photos/nalanda-logo.png" type="image">
</head>
<body>
	<div class="container-fluid">
		<div class="row ps-lg-5 p-3">
			<div class="col-lg">
				<div class="display-6">Nalanda College</div>
					<div class="lead">Constituent unit of Patliputra University, Patna</div>
			</div>
	
			<div class="col-lg">
				<marquee direction="left"scrollamount="5">
					<ul class="text-danger">
						<li class="float-start me-5">NAAC accredited B+</li>
						<li class="float-start me-5">UGC Approved</li>
						<li class="float-start me-5">AICTE Approved</li>
					</ul>
				</marquee>
			</div>
		</div><!-- header -->
	</div><!-- container-fluid -->
	
	
	<!-- -navbar -->
	<!-- C2D4E5;-->
	<nav class="navbar navbar-expand-lg navbar-light"style="background:#F1C4C0">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav"style="font-family:verdana;">
      	<li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Academics
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="pdf/MCA routine 23-2-2023.pdf"target="_blank">Time Table</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           	Departments
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="Arts.jsp">Arts</a></li>
            <li><a class="dropdown-item" href="Science.jsp">Science</a></li>
            <li><a class="dropdown-item" href="Vocational.jsp">Vocational</a></li>
            <li><a class="dropdown-item" href="Education.jsp">Education - B.Ed</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           	Syllabus
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="pdf/Final Revised MCA Syllabus.pdf"target="_blank">MCA</a></li>
            <li><a class="dropdown-item" href="pdf/MBA.pdf"target="_blank">MBA</a></li>
            <li><a class="dropdown-item" href="pdf/BCA.pdf"target="_blank">BCA</a></li>
            <li><a class="dropdown-item" href="pdf/Economics-MA.pdf"target="_blank">MA - Economics</a></li>
            <li><a class="dropdown-item" href="pdf/Economics-BA.pdf"target="_blank">BA - Economics</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="events.jsp">Events</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AboutUs.jsp">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Alumni
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="Alumni.jsp">Alumni Association</a></li>
            <li><a class="dropdown-item" href="Alumni-registration.jsp"> Alumni Membership Registration</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Placement.jsp">Placements</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Student Zone
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="NCC.jsp">NCC</a></li>
            <li><a class="dropdown-item" href="NSS.jsp">NSS</a></li>
            <li><a class="dropdown-item" href="pdf/SportsCalendar.pdf"target="_blank">Sports</a></li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav ms-auto">
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">
          <i class="bi bi-box-arrow-in-right fs-4"></i>
        </a>
      </li>
    </ul>
    </div>
  </div>
</nav>