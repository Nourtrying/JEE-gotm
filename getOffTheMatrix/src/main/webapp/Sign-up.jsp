<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,900&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="css/Sign.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/34c5593909.js" crossorigin="anonymous"></script>
    </head>
    <body >
        <nav class="navbar navbar-expand-lg navbar-dark ">
      <a class="navbar-brand" href="#">
        <img src="media\PNG\Asset 4@3x.png" height="40"
        loading="lazy"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#Home">Home </a>
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
    <section>
        <div class="form-box">
          <div class="form-value">
            <form action="">
              <h2>Sign Up</h2>
              <div class="inputbox">
                <input type="text" required>
                <label for="">Username</label>
              </div>
              <div class="inputbox">
                <input type="text" required>
                <label for="">Discord Tag</label>
              </div>
              <div class="inputbox">
                <input type="email" required>
                <label for="">Email</label>
              </div>
              <div class="inputbox">
                <input type="password" required>
                <label for="">Password</label>
              </div>
              <div class="inputbox">
                <input type="password" required>
                <label for="">Confirm Password</label>
              </div>
              <button>Sign Up</button>
              <div class="register">
                <p>Already have an account? <a routerLink="/sign-in">Login</a></p>
              </div>
            </form>
          </div>
        </div>
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