
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
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

            <!-- Additional CSS Files -->
            <link rel="stylesheet" href="css/font.css">
            <link rel="stylesheet" href="css/styles.css">
            <link rel="stylesheet" href="css/owl.css">
        <%  
                List<Cars> listC = (List<Cars>) request.getAttribute("listC");
                List<Brand> listB = (List<Brand>) request.getAttribute("listB");
                String tag = (String) request.getAttribute("tag");
        %>
    </head>

    <body>




        <!-- Header -->
        <jsp:include page="menu.jsp"></jsp:include>

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
                                <form action="search" method="post" class="form-inline my-2 my-lg-0">
                                    <div class="input-group">                                
                                        <div class="input-group rounded">
                                            <input style="margin: 10px" name="txt" type="text" class="form-control rounded" placeholder="search" aria-label="search" aria-describedby="search-addon" />
                                            <button type="submit" class="btn btn-secondary btn-number rounded ratio" style="">
                                                search
                                            </button>  
                                        </div>      
                                    </div>            
                                </form>
                                
                                <label>Brand:</label>                     
                                <ul class="list-group form-control">
                                    <li class="list-group-item text-white "><a href="cars"> All Cars </a></li>
                                    <%
                                    for (Brand b : listB) { 
                                    %>
                                <li class="list-group-item text-white <%if (tag==String.valueOf(b.getBid())) {%> active <%}%>" ><a href="brand?bid=<%= b.getBid() %>"> <%= b.getBname() %> </a></li>
                                    <% } %>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-9">
                        <div class="row">  
                            <%
                                 for (Cars o : listC) { 
                            %>
                            <div class="col-md-6">
                                <div class="product-item">
                                    <a href="detail?cid=<%= o.getId() %>"><img src="<%= o.getImage_url() %>" alt=""></a>
                                    <div class="down-content">
                                        <a href="detail?cid=<%= o.getId() %>"><h4><%= o.getModel() %></h4></a>

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

        <jsp:include page="footer.jsp"></jsp:include>

        
                   


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


        <!-- Additional Scripts -->
        <script src="js/custom.js"></script>
        <script src="js/owll.js"></script>
    </body>

</html>

