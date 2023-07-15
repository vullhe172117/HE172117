
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Header -->
<header class="">
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href=""><h2>Car Dealer <em>Website</em></h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home">Home
                            <span class="sr-only"></span>
                        </a>
                    </li> 

                    <li class="nav-item"><a class="nav-link" href="cars">Cars</a></li>              

                    <li class="nav-item"><a class="nav-link" href="term.jsp">Term</a></li>

                    <li class="nav-item"><a class="nav-link" href="about_us.jsp">About Us</a></li>

                    <li class="nav-item"><a class="nav-link" href="contact_us.jsp">Contact Us</a></li>
                        <c:if test="${sessionScope.acc == null}">
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc != null}">
                        <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                        <li class="nav-item"><a class="nav-link" href="home">Hello ${sessionScope.acc.user}</a></li>
                        </c:if>                    
                </ul>
            </div>  
        </div>
            <c:if test="${sessionScope.acc.isAdmin == 1}">
            <li class="nav-item navbar-brand btn navbar-nav ml-auto"><a class="nav-link" href="">Manager <em>Account</em></a></li>
            </c:if>
            <c:if test="${sessionScope.acc.isSell == 1}">
            <li class="nav-item navbar-brand btn navbar-nav ml-auto"><a class="nav-link" href="manager_cars">Manager <em>Cars</em></a></li>
            </c:if>
    </nav>
</header>