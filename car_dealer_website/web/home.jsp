<%-- 
    Document   : home
    Created on : Jul 11, 2023, 6:52:21 PM
    Author     : PC LONG VU
--%>
<%@page import = "entity.Cars"%>
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

            <title>Car Dealer</title>

            <!-- Bootstrap core CSS -->
            <link rel="stylesheet" href="css/bootstrap.css">

            <!-- Additional CSS Files -->
            <link rel="stylesheet" href="css/font.css">
            <link rel="stylesheet" href="css/styles.css">
            <link rel="stylesheet" href="css/owl.css">

        <%  
                List<Cars> listC = (List<Cars>) request.getAttribute("listC");
        %>

    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <!--   <div id="preloader">
               <div class="jumper">
                   <div></div>
                   <div></div>
                   <div></div>
               </div>
           </div>  -->
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
                            <li class="nav-item active">
                                <a class="nav-link" href="home">Home
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li> 

                            <li class="nav-item"><a class="nav-link" href="cars">Cars</a></li>

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
        <!-- Banner Starts Here -->
            <div class="banner header-text">
              <div class="owl-banner owl-carousel">
                <div class="banner-item-01">
                  <div class="text-content">
                    <h4>Find your car today!</h4>
                  </div>
                </div>
                <div class="banner-item-02">
                  <div class="text-content">
                    <h4>Aspernatur flees</h4>
                    <h2>We lead a laborious criticism</h2>
                  </div>
                </div>
                <div class="banner-item-03">
                  <div class="text-content">
                    <h4>Often every</h4>
                  </div>
                </div>
              </div>
            </div>
        <div class="banner banner-item-01 header-text">
            <div class="text-content">
                <h2 style="color: whitehite">Elevating Your Car Buying Experience</h2>
                <h4 style="color: #ff3333">Find your car today!</h2>
            </div>
        </div>
        <div class="latest-products">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Featured Cars</h2>
                            <a href="cars">view more <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>                    
                <%
                     int i=0;
                     for (Cars o : listC) {
                     if (i<6){ 
                %>
                <div class="col-lg-4 col-md-6">   
                        <div class="product-item">
                            <a href="car-details.html"><img src="<%= o.getImage_url() %>" alt=""></a>
                            <div class="down-content">
                                <a href="car-details.html"><h4><%= o.getModel() %></h4></a>

                                <h6>$<%= o.getPrice() %></h6>

                                <p> <%=o.getPower() %> hp &nbsp;/&nbsp; <%= o.getFuelType() %> &nbsp;/&nbsp; <%= o.getFirstRegistration() %> &nbsp;/&nbsp; <%= o.getType() %></p>

                                <small>
                                    <strong title="Author"><i class="fa fa-dashboard"></i><%= o.getMileage() %>km</strong> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong title="Author"><i class="fa fa-cube"></i><%= o.getEngine() %>cc</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <strong title="Views"><i class="fa fa-cog"></i><%= o.getGearbox() %></strong>
                                </small>
                            </div>
                        </div>         
                    </div>  
               <% }
                i=i+1;
                    } %>



                </div>
            </div>
        </div>

        <div class="best-features">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>About Us</h2>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="left-content">
                            <p>It is very important for the customer to pay attention to the adipiscing process. I will explain, that it is a result that repels others in taking the inventor to the harsher times itself. The accusers are bound by the pleasure of labor to open the trouble of things except in the present, of the body, something said.</p>
                            <ul class="featured-list">
                                <li><a href="#">for customer satisfaction</a></li>
                                <li><a href="#">It will be determined whether the developer</a></li>
                                <li><a href="#">There is no asperation of the body of water</a></li>
                                <li><a href="#">without a scratch</a></li>
                            </ul>
                            <a href="about-us.html" class="filled-button">Read More</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="right-image">
                            <img src="img/about-1-570x350.jpg"alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="services" style="background-image: url(img/other-image-fullscren-1-1920x900.jpg);" >
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Latest blog posts</h2>

                            <a href="blog.html">read more <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <a href="#" class="services-item-image"><img src="img/blog-1-370x270.jpg" class="img-fluid" alt=""></a>

                            <div class="down-content">
                                <h4><a href="#">It's very important to have a very good customer</a></h4>

                                <p style="margin: 0;"> John Doe &nbsp;&nbsp;|&nbsp;&nbsp; 12/06/2020 10:30 &nbsp;&nbsp;|&nbsp;&nbsp; 114</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <a href="#" class="services-item-image"><img src="img/blog-2-370x270.jpg" class="img-fluid" alt=""></a>

                            <div class="down-content">
                                <h4><a href="#">The company itself is a very successful company.</a></h4>

                                <p style="margin: 0;"> John Doe &nbsp;&nbsp;|&nbsp;&nbsp; 12/06/2020 10:30 &nbsp;&nbsp;|&nbsp;&nbsp; 114</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <a href="#" class="services-item-image"><img src="img/blog-3-370x270.jpg" class="img-fluid" alt=""></a>

                            <div class="down-content">
                                <h4><a href="#">I would open the way to the pleasures of the flight from the offices.</a></h4>

                                <p style="margin: 0;"> John Doe &nbsp;&nbsp;|&nbsp;&nbsp; 12/06/2020 10:30 &nbsp;&nbsp;|&nbsp;&nbsp; 114</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="happy-clients">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Happy Clients</h2>

                            <a href="testimonials.html">read more <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="owl-clients owl-carousel text-center">
                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>John Doe</h4>
                                    <p class="n-m"><em>"It's very important to have a very good customer"</em></p>
                                </div>
                            </div>

                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>Jane Smith</h4>
                                    <p class="n-m"><em>"The company itself is a very successful company."</em></p>
                                </div>
                            </div>

                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>Antony Davis</h4>
                                    <p class="n-m"><em>"I would open the way to the pleasures of the flight from the offices."</em></p>
                                </div>
                            </div>

                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>John Doe</h4>
                                    <p class="n-m"><em>"It's very important to have a very good customer"</em></p>
                                </div>
                            </div>

                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>Jane Smith</h4>
                                    <p class="n-m"><em>"The company itself is a very successful company."</em></p>
                                </div>
                            </div>

                            <div class="service-item">
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="down-content">
                                    <h4>Antony Davis</h4>
                                    <p class="n-m"><em>"I would open the way to the pleasures of the flight from the offices."</em></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="call-to-action">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="inner-content">
                            <div class="row">
                                <div class="col-md-8">
                                    <h4>It is very important to take care of the patient, and the adipiscing will be followed.</h4>
                                    <p>It is very important for the customer to pay attention to the adipiscing process. Therefore, there is no responsible elite body.</p>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <a href="contact.html" class="filled-button">Contact Us</a>
                                </div>
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


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/bootstrapbundle.js"></script>
        <!-- Additional Scripts -->
        <script src="js/custom.js"></script>
        <script src="js/owll.js"></script>
    </body>
</html>


