<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GOT'M</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="css/Home.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/34c5593909.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ">
  <a class="navbar-brand" href="#">
    <img src="media\PNG\Asset 4@3x.png" height="40"
    loading="lazy"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#Home">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#About">About</a>
      </li>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#Events">Events</a>
      </li>
    </ul>
    
        <div class="buttons" >
            <a href="/sign-in"><button class="signin"> Sign In</button></a> 
            <a href="/sign-up">
              <button class="signup"> Sign Up </button></a>
          </div>
    
  </div>
</nav>
<section id="Home" style="display:flex; height: 100%; flex-direction: column; align-items:flex-start; justify-content: space-evenly;" >
    <div class="info">

        <h1>WANT TO JOIN THE COMMUNITY? </h1>
    
        <div style="display: flex; flex-direction: row; align-items: center;">
          
          
            <h3>Join our Discord server.</h3>
            <a href="https://discord.gg/McCjptsb" target="_blank">
            <button>
              <div class="button-content">
                <img src="media/svg/SVGRepo_iconCarrier.svg" alt="" >
              </div>
            </button>
          </a>
        </div>
      
      </div>
    
      <div class="info">
        <h1> WANT TO WORK WITH US?</h1>
        <div style="display: flex; flex-direction: row; align-items: center;">
          <h3>Sign Up Now</h3>
          <a href="/sign-up">
            <button>
              <div class="button-content">
                <img class="nonHovered" src="../../assets/socials/pennonhovered.svg" alt="" >
              </div>
            </button>
          </a>
          
        </div>
      </div>
</section>
<section id="About" style="display:flex; height: 100%;">
this about
</section>
<section id="Events" style="display:flex; height: 100%;">
this event
hello
<c:forEach var="user" items="${users}">
		                    <p>${user.username}</p>
		                    <p>${user.name}</p>
		                    <p>${user.discordTag}</p>
		                    <p>${user.email}</p>
		                    <p>${user.phoneN}</p>
            	</c:forEach>
</section>

<footer class="text-center text-light" style="background-color: #303030;">
    <div class="container p-4 pb-0 d-flex flex-column justify-content-center align-items-center">
      <section class="mb-4 d-flex align-items-center">
      
        <!-- Linkedin -->
        <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="#" role="button"><i
          class="fab fa-linkedin"></i></a>
    
      <!-- Twitter -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://twitter.com/got_matrix" role="button">
        <i class="fab fa-twitter"></i>
      </a>
    
      <!-- Youtube -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="#" role="button">
        <i class="fab fa-youtube"></i>
      </a>
    
      <!-- Facebook -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://www.facebook.com/GotMatrix" role="button">
        <i class="fab fa-facebook-f"></i></a>
    
      <!-- Instagram -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://www.instagram.com/gotm.istic/?igshid=ZDdkNTZiNTM%3D" role="button">
        <i class="fab fa-instagram"></i>
      </a>
    
      <!-- Twitch -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://www.twitch.tv/got_matrix" role="button"><i
          class="fab fa-twitch"></i></a>
    
      <!-- Tiktok -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://www.tiktok.com/@got_mmmm" role="button"><i
          class="fab fa-tiktok"></i></a>
    
      <!-- Discord -->
      <a mdbRipple rippleColor="dark" class="btn btn-link btn-floating btn-lg text-light m-1" href="https://discord.gg/McCjptsb" role="button"><i
          class="fab fa-discord"></i></a>
    
      
      </section>
    </div>
    <div class="text-center p-3">
      © 2023 Get Off The Matrix. All Rights Reserved.
    </div>
  </footer>
</body>
</html>