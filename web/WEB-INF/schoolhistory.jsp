<%-- 
    Document   : schoolhistory
    Created on : Jan 28, 2016, 2:00:00 PM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/headsection.jsp" %>
        <title>Minamata High School History</title>
    </head>
    <body>
        <%@include file="/WEB-INF/fragments/navsection.jsp" %>
        <div id="historyContainer" class="container">
            <div class="row text-center" id='historyHeader'>
                <header class="page-header">Minamata  High's History</header>
            </div>
            <div id="historyRow" class="row">
                
                <div class="col-lg-5"><img class="img-responsive" src="Images/front-entrance.JPG"></div>
                <div id="historyText"><p>Minamata High School was originally founded on April 1st, 1948 when  Minamata Girls' High School 
                    and Minamata Agricultural High School joined together in order to form the newly founded Kumamoto Prefectural
                    Minamata High School. 
                    <br>
                    <br>
                    The school began in 1948 with three different curriculums. The curriculums included 
                    a General Education study path, a Mechanical Engineering study path, and an Architectural Engineering
                    path.
                    <br>
                    <br>
                    In 2012, due to the declining birthrate and closing of many schools in Japan, 
                    it was decided that Minamata High School and Minamata Industrial High School would
                    join into one school.
                    <br>
                    <br>
                    The new school was called "Kumamoto Prefectural Shin(New) Minamata High School".
                    <br>
                    <br>
                    On March 1st of 2014, the final class of Minamata High School graduated, and all students 
                    began attending classes at the newly reformed building where Minamata Industrial once stood.
                    <br>
                    <br>
                    While Kumamoto Prefectural Minamata High School is officially closed, many of the facilities are still
                    in use, and remain well taken care of. 
                    
                    The practice field is still used by the Baseball Club, and the gym is still in use by the Rhythmic Gymnastics club.
                    
                
                </p>
                </div>
            </div>

<%@include file="/WEB-INF/fragments/footer.jsp" %>
        </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
