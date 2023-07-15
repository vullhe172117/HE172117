
<%@page import = "java.util.*"%>
<%@page import = "java.io.*"%>
<%@page import = "entity.Cars"%>
<%@page import = "entity.Brand"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

            <!-- Additional CSS Files -->
            <link rel="stylesheet" href="css/font.css">
            <link rel="stylesheet" href="css/styles.css">
            <link rel="stylesheet" href="css/owl.css">
        <%   Cars detail = (Cars) request.getAttribute("detail"); %>
    </head>

    <body>
        <!-- Header -->
        <jsp:include page="menu.jsp"></jsp:include>

            <!-- Page Content -->

            <div class="page-heading about-heading header-text" style="background-image: url(img/slider-image-2-1920x600.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="text-content">
                                <h4><strong class="text-primary">$<%=detail.getPrice() %></strong></h4>
                            <h2><%=detail.getModel() %></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="products">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div>
                            <img src="<%=detail.getImage_url() %>" alt="" class="img-fluid wc-image" style="width:640px;height:480px;">
                        </div>
                        <br>

                    </div>

                    <div class="col-md-6">
                        <form action="#" method="post" class="form">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Type</span>

                                        <strong class="pull-right"><%=detail.getType() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Brand</span>

                                        <strong class="pull-right"><%=detail.getBrand() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left"> Model</span>

                                        <strong class="pull-right"><%=detail.getModel() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">First registration</span>

                                        <strong class="pull-right"><%=detail.getFirstRegistration() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Mileage</span>

                                        <strong class="pull-right"><%=detail.getMileage() %> km</strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Fuel</span>

                                        <strong class="pull-right"><%=detail.getFuelType() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Engine size</span>

                                        <strong class="pull-right"><%=detail.getEngine() %> cc</strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Power</span>

                                        <strong class="pull-right"><%=detail.getPower() %> hp</strong>
                                    </div>
                                </li>


                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Gearbox</span>

                                        <strong class="pull-right"><%=detail.getGearbox() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Number of seats</span>

                                        <strong class="pull-right"><%=detail.getNumberOfSeats() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Doors</span>

                                        <strong class="pull-right"><%=detail.getNumberOfDoors() %></strong>
                                    </div>
                                </li>

                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Color</span>

                                        <strong class="pull-right"><%=detail.getColor() %></strong>
                                    </div>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <br><br>
                        <div class="section-heading">  

                        </div>
                        <div class="left-content">
                            <br>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="section-heading">
                            <h2>BUY NOW</h2>
                        </div>
                        <button><a href="home">ADD TO CART</a></button>
                        <div class="left-content">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="section-heading">
                            <h2>Contact Details</h2>
                        </div>

                        <div class="left-content">
                            <p>
                                <span>Name</span>

                                <br>

                                <strong>Le Long Vu</strong>
                            </p>

                            <p>
                                <span>Phone</span>

                                <br>

                                <strong>
                                    <a href="tel:123-456-789">123-456-789</a>
                                </strong>
                            </p>

                            <p>
                                <span>Mobile phone</span>

                                <br>

                                <strong>
                                    <a href="tel:456789123">0393019179</a>
                                </strong>
                            </p>

                            <p>
                                <span>Email</span>

                                <br>

                                <strong>
                                    <a href="mailto:john@carsales.com">Blockfull34@gmail.com</a>
                                </strong>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


        <!-- Additional Scripts -->
        <script src="js/custom.js"></script>
        <script src="js/owll.js"></script>
    </body>

</html>

