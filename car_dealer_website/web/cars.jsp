<%-- 
    Document   : cars
    Created on : Jul 14, 2023, 2:34:08 PM
    Author     : PC LONG VU
--%>
<%@page import = "entity.Cars"%>
<%@page import = "entity.Brand"%>
<%@page import = "java.util.*"%>
<%@page import = "java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:useBean id='a' class="dao.DAO" scope="request"></jsp:useBean>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/images/favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>car Dealer</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/owl.css">
        <%  
                List<Cars> listC = (List<Cars>) request.getAttribute("listC");
                List<Brand> listB = (List<Brand>) request.getAttribute("listB");
        %>
  </head>

  <body>

     
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
        
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="home"><h2>Car Dealer <em>Website</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home
                      <span class="sr-only">(current)</span>
                    </a>
                </li> 

                <li class="nav-item active"><a class="nav-link" href="cars.html">Cars</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">More</a>
                    
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="blog.html">Blog</a>
                      <a class="dropdown-item" href="team.html">Team</a>
                      <a class="dropdown-item" href="testimonials.html">Testimonials</a>
                      <a class="dropdown-item" href="terms.html">Terms</a>
                    </div>
                </li>

                <li class="nav-item"><a class="nav-link" href="about-us.html">About Us</a></li>
                
                <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <div class="page-heading about-heading header-text" style="background-image: url(img/slider-image-1-1920x600.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Elevating Your Car Buying Experience</h4>
              <h2>Cars</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
             <div class="contact-form">
                <form action="#">
                     <label>Used/New:</label>
                     
                     <select class="form-control">
                          <option value="">All</option>
                          <option value="new">New vehicle</option>
                          <option value="used">Used vehicle</option>
                     </select>

                     <label>Vehicle Type:</label>
                     
                     <select class="form-control">
                          <option value="">--All --</option>
                          <option value="">--All --</option>
                          <option value="">--All --</option>
                          <option value="">--All --</option>
                          <option value="">--All --</option>
                     </select>

                     <label>Brand:</label>
                     
                     <select class="form-control">
                         <option value="">All Brands</option>
                        <%
                            for (Brand b : listB) { 
                        %>
                          <option value=""><%= b.getBname() %></option>
                        <% } %>
                          
                     </select>

                     <label>Model:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Price:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Mileage:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Engine size:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Power:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Fuel:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Gearbox:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Doors:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <label>Number of seats:</label>
                     
                     <select class="form-control">
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                          <option value="">-- All --</option>
                     </select>

                     <button type="submit" class="filled-button btn-block">Search</button>
                </form>
             </div>
          </div>
            
          <div class="col-md-9">
            <div class="row">  
                <%
                     for (Cars o : listC) { 
                %>
              <div class="col-md-6">
                <div class="product-item">
                  <a href="car-details.html"><img src="<%= o.getImage_url() %>" alt=""></a>
                  <div class="down-content">
                    <a href="car-details.html"><h4><%= o.getModel() %></h4></a>

                    <h6>$<%= o.getPrice() %></h6>

                    <p><%=o.getPower() %> hp &nbsp;/&nbsp; <%= o.getFuelType() %> &nbsp;/&nbsp; <%= o.getFirstRegistration() %> &nbsp;/&nbsp; <%= o.getType() %></p>

                    <small>
                      <strong title="Author"><i class="fa fa-dashboard"></i> <%= o.getMileage() %>km</strong> &nbsp;&nbsp;&nbsp;&nbsp;
                      <strong title="Author"><i class="fa fa-cube"></i> <%= o.getEngine() %>cc</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                      <strong title="Views"><i class="fa fa-cog"></i> <%= o.getGearbox() %></strong>
                    </small>
                  </div>
                </div>
              </div>
                <% } %>
              

              <div class="col-md-12">
            <!--  <ul class="pages">
                  <li><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                </ul>  -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <p>Copyright © 2020 Car Dealer</p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Book Now</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="contact-form">
              <form action="#" id="contact">
                  <div class="row">
                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Pick-up location" required="">
                          </fieldset>
                       </div>

                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Return location" required="">
                          </fieldset>
                       </div>
                  </div>

                  <div class="row">
                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Pick-up date/time" required="">
                          </fieldset>
                       </div>

                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Return date/time" required="">
                          </fieldset>
                       </div>
                  </div>
                  <input type="text" class="form-control" placeholder="Enter full name" required="">

                  <div class="row">
                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Enter email address" required="">
                          </fieldset>
                       </div>

                       <div class="col-md-6">
                          <fieldset>
                            <input type="text" class="form-control" placeholder="Enter phone" required="">
                          </fieldset>
                       </div>
                  </div>
              </form>
           </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            <button type="button" class="btn btn-primary">Book Now</button>
          </div>
        </div>
      </div>
    </div>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="js/custom.js"></script>
    <script src="js/owll.js"></script>
  </body>

</html>

