<%-- 
    Document   : message
    Created on : Aug 3, 2024, 9:57:27 PM
    Author     : ezram
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
           href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap"
           rel="stylesheet"
        />
        <link rel="stylesheet" href="css/font-awesome.css" />
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="icon" href="images/Bc.png" />
          <script>
        function redirect() {
            setTimeout(function() {
                window.location.href = "logIn.html"; // Replace with your desired URL
            }, 5000); // 5000 milliseconds = 5 seconds
        }
       </script>
        <title>Account Created</title>
    </head>
    <body onload="redirect()">
        <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a href="index.html" class="navbar-brand">
          <img src="images/cyber.png" alt="" width="150" height="90" />
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#contactUs">Contact Us</a>
            </li>
          </ul>
          <span class="nav-item">
            <span class="fa-stack">
              <a href="#">
                <i class="fas fa-circle fa-stack-2x"></i>
                <i class="fab fa-facebook-f fa-stack-1x text-white"></i>
              </a>
            </span>
          </span>
          <span class="nav-item">
            <span class="fa-stack">
              <a href="#">
                <i class="fas fa-circle fa-stack-2x"></i>
                <i class="fab fa-twitter fa-stack-1x text-white"></i>
              </a>
            </span>
          </span>
        </div>
      </div>
    </nav>
        <p class="fas fa-check fa-3x text-success bg-light p-3 rounded-circle mb-4">
            <b>Account was created successfully</b>
        </p>
        <form action="logIn.html" method="POST">
            <div class="d-flex justify-content-center align-items-center vh-100">
            <button class="btn btn-outline-dark btn-sm" >Sign In</button>
        </div>
        </form>
        
        
        
         <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
