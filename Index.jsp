<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<!-- javascript -->
	<script src="js/validation.js"></script>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style type="text/css">
    .navbar .navbar-brand b{
    color:#fc0320;
    }
    .navbar .navbar-brand{
    font-weight:bold;
    font-size:25px;
    }
    </style>
</head>
<body>

<!-- Starting Nav-bar -->
	
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark shadow-lg"   style="background-image:linear-gradient(to right,black,#fc0303)">
        
        <a class="sidebar-toggle" href="#" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        </a>
        
        <a class="navbar-brand mx-auto" href="#">Booking <b>Zone</b></a>
        
         <form class="form-inline col-lg-7" action="#">
    		<input class="form-control mr-sm-2" type="text" placeholder="Search">
    		<!-- <button class="btn btn-outline-light" type="submit">Search</button> -->
  		</form>
        
        
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#collapsingNavbar2">
        <span class="navbar-toggler-icon my-toggler"></span>
        </button>
     <div class="navbar-collapse collapse" id="collapsingNavbar2">
        <ul class="navbar-nav mx-auto">
        
            <li class="navbar-item">
        <button class="btn btn-outline-light mt-2 ml-2" data-toggle="modal" data-target="#sign_up">Sign up</button>
        </li>
        
        <li class="navbar-item">
        <button class="btn btn-outline-light mt-2 ml-2" data-toggle="modal" data-target="#sign_in">Sign In</button>
        </li>
        </ul>
    </div>
        
        </nav>
       

<div class="container-fluid">
      <div class="row">
      
      <!-- filter starting -->
      <div class="mt-10">
     <div class="dropdown">
  <button class="btn btn-outline-primary dropdown-toggle"
          type="button" id="dropdownMenu1" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
    Select Language
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <input type="checkbox"  id="hindi">  Hindi</input><br>
    <input type="checkbox"  id="english">  English</input><br>
    <input type="checkbox"  id="bengali">  Bengali</input><br>
    <input type="checkbox"  id="tamil">  Tamil</input><br>
    <input type="checkbox"  id="malyalam">  Malyalam</input>
  </div>
	</div>
	</div>
      
      <!-- Carousel starting -->
      <div id="carouselExampleIndicators" class="carousel slide mx-auto mt-2 col-lg-5" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://digistatement.com/wp-content/uploads/2019/11/genos-one-punch-man-uhdpaper.com-4K-120-e1572816559113.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://img.theculturetrip.com/768x432/wp-content/uploads/2018/06/opm.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://cdn.ndtv.com/tech/images/gadgets/one_punch_man_punch.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
<!-- Carousel ending -->
        

        <!--Starting Sign Up modal header-->
        <div class="modal" id="sign_up">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h3 class="text-primary">Sign Up</h3>
                <button type="button" class="close" data-dismiss="modal" onclick="clearmodal()">&times; </button>
              </div>
              <!--Starting Sign Up modal body-->
              <div class="modal-body">
                <form method="post" action="#">
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" id="name" onblur="checkname()" onfocus="clearname()" required>
                    <div class="text-danger text-bold" id="nameerrormessage"></div>
                  </div>

                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" class="form-control" id="email" onblur="checkemail()" onfocus="clearemail()" required>
                    <div class="text-danger text-bold" id="emailerrormessage"></div>
                  </div>

                  <div class="form-group">
                    <label for="mobile">Mobile No</label>
                    <input type="tel" name="mobile" class="form-control" id="mobile" onblur="checkmobno()" onfocus="clearmobno()" required>
                    <div class="text-danger text-bold" id="mobnoerrormessage"></div>
                  </div>

                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password" onblur="checkpassword()" onfocus="clearpassword()" required>
                    <div class="text-danger text-bold" id="passerrormessage"></div>
                  </div>

                  <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input type="password" name="confirm_password" class="form-control" id="confirm_password" required>
                  </div>

                  <div class="form-group">
                    <input type="submit" class="btn btn-success btn-block" id="submit" value="Sign Up"  style="background-image:linear-gradient(to right,#03d7fc,#0314fc)">
                  </div>

                </form>

              </div>
              <!--Ending modal body for sign in-->
            </div>
            
          </div>
        </div>
        <!--Ending modal for sign up-->

        <!--Starting Sign in modal header-->
        <div class="modal" id="sign_in">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h3 class="text-primary">Sign In</h3>
                <button type="button" class="close" data-dismiss="modal" onclick="clearmodal()">&times;</button>
              </div>
              <!--Ending modal header-->

              <!--Starting Sign in modal body for sign in-->
              <div class="modal-body">
                <form action="#" method="post">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" class="form-control" id="email" onblur="checkemail()" required>
                    <div type="text-danger text-bold" id="emailerrormessage"></div>
                  </div>

                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password" required>
                  </div>

                  <div class="form-group">
                    <input type="submit"  class="btn btn-success btn-block" id="submit" value="Sign In"  style="background-image:linear-gradient(to right,#03d7fc,#0314fc)">
                  </div>

                </form>
              </div>
              <!--Ending modal body for sign in-->
            </div>
          </div>
          
        </div>
        <!--Ending Sign in modal-->
      </div>
    </div>
    
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>