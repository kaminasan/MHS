<%-- 
    Document   : landing
    Created on : Nov 13, 2015, 9:27:38 AM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href='https://fonts.googleapis.com/css?family=Lobster|Anonymous+Pro:700' rel='stylesheet' type='text/css'>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Minamata High School</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/myapp.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style> body{
                background:
     linear-gradient(
      rgba(0, 0, 0, 0.35), 
      rgba(0, 0, 0, 0.35)
    ),
      url('/mhs/Images/stockphoto1.JPG') no-repeat top  fixed;
            
              -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;}
        </style>
    </head>
    <body>


        <%@include file="/WEB-INF/fragments/navsection.jsp"%> 
        
            <div id ="contentContainer" class='container'>
                <div id="landing_box">
            <div id='header' class='row text-center'>
                <header class='page-header'><h1>Minamata High School</h1></header>
            </div>
            <div id ="landingZone" class='row text-center'>
               
                <a href="home" class='btn btn-primary'> English </a>
                <a href='http://sh.higo.ed.jp/mina/' class='btn btn-primary'>日本語</a>
               
            </div>
                    </div>
        </div>
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
         <script src="js/Controllers.js"></script>
    </body>
</html>