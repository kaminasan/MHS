<%-- 
    Document   : home
    Created on : Nov 16, 2015, 10:50:03 AM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
    <head><%@include file="/WEB-INF/headsection.jsp" %>
        <title>Minamata HS Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
    </head>

    <body>
        <%@include file="/WEB-INF/fragments/navsection.jsp" %>
        <div class="container-fluid" ng-app="">
            <div id="jumbotronRow" class="container">
                   
                       
                        <header id="theHeader" class="page-header text-center row">
                            <h1>Minamata High School</h1>
                        </header>
                <div class="overlay row">
                    
                </div>
                 
                <div id="carouselRow" class="row">
                
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators aboveOverlay">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
     <li data-target="#myCarousel" data-slide-to="2"></li>
     <li data-target="#myCarousel" data-slide-to="3"></li>

  </ol>

  <!-- Wrapper for slides -->
  <div id="slidesBox" class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="Images/CarouselImages/stockphoto1.JPG" class="img-responsive" alt="Header1">
    </div>
 <div class="item">
      <img src="Images/CarouselImages/stockphoto2.JPG" class="img-responsive" alt="Header2">
    </div>
      
    <div class="item">
      <img src="Images/CarouselImages/stockphoto3.JPG" class="img-responsive" alt="Header2">
    </div>
    
    <div class="item">
      <img src="Images/CarouselImages/stockphoto4.JPG" class="img-responsive" alt="Canoe">
    </div>
     
   
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control aboveOverlay" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control aboveOverlay" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                
            </div>
                    </div>
                
                
         
          
            <div class="postRow container">
                <h3 class="page-header recentEventHeader" >Recent Events</h3>
                <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 post">
                    <div class=""><h3 class="page-header">Running Competition</h3></div>
                      <div class="col-xs-6 col-md-6"><img class="img-responsive" src="Images/post1.JPG"></div>
                    <div class="col-xs-6 col-md-6 "><p>At our long distance running contest all of the students gather
                                                        and run 15km(boys), or 10km(girls)!</p></div>
                    
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 post">
                     <div class=""><h3 class="page-header">Field Work Trip</h3></div>
                      <div class="col-xs-6 col-md-6"><img class="img-responsive" src="Images/post2.JPG"></div>
                    <div class="col-xs-6 col-md-6 "><p>Our second year Industrial students went out into the field for a lecture, and a couple hours of
                                                        hands on work to get a feel for everyday activities in the field.</p></div>
                    
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 post">
                    <div class=""><h3 class="page-header">Fire Safety Drill</h3></div>
                      <div class="col-xs-6 col-md-6"><img class="img-responsive" src="Images/post3.JPG"></div>
                    <div class="col-xs-6 col-md-6 "><p>Just recently our students took part in the yearly Fire Safety Drill. 
                                        We had a live demonstration from the Minamata Fire Department.</p></div>
                </div>
           
</div>
               
            </div>
            <div class="container"><%@include file="/WEB-INF/fragments/footer.jsp"%></div>
            <%@include file="/WEB-INF/fragments/loginmodal.jsp"%>
               </div>
              
        <!-- Container end -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
         <script src="js/Controllers.js"></script>
    </body>
</html>


