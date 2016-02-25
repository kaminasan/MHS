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
        <title>Principal's Greeting</title>
    </head>
    <body>
        <%@include file="/WEB-INF/fragments/navsection.jsp" %>
        <div id="historyContainer" class="container">
            <div class="row text-center" id='historyHeader'>
                <header class="page-header">Principal's Greeting</header>
            </div>
            <div id="historyRow" class="row">
                
                <div class="col-lg-5"><img class="img-responsive" src="Images/principal.JPG"></div>
                <div id="historyText">Minamata Highschool will be celebrating it's 4th year since reorganizing both Old Minamata Highschool, 
                        and Minamata Industrial School into one school known as "New Minamata High School".
                        <br>
                        New Minamata High School is currently comprised of a Day School which has Four General Education paths, a Commercial path,
                        and an Industrial path. We also have a Night School comprised of an approximate max of 40 students.
                        
                        <br><br>New Minamata High School
                        is the only High School in Kumamoto Prefecture to have a General Ed path, Commercial path, and even an Industrial path all under one roof.
                        We have conducted many renovations during these past three years, including building a new gymnasium, new workshop, and new practical skills
                        room. We hope to achieve and maintain a high quality set of facilities for our students. 
                        <br>
                        At our school, we have a school slogan: "Autonomy, Respect and Affection, Creation ". 
                        <br><br>We strive to create a school that
                        balances those things, along with knowledge, and morality, creating a balance between education, mind, and body.<br><br>
                        Many of our students go on to schools such as Kumamoto University, Nagasaki University, and other National schools, as well as
                        private schools such as Fukuoka University and Ritsumeikan University. 
                        We have been fortunate enough to achieve a 100% job placement rate.
                        <br>
                        We focus on achieving the realization of each student's goals. In H27() we changed our slogan to "Advancing Steadily". 
                        We continue to work hard with the community, the students, and their families on order to raise our trust in the community.
                        
                        We strive to meet the expectations of others, and create a rich history. 
                        <br>
                        Please continue to cheer us on.
                        <br>
                        <br>
                        <footer>Sincerely, Iwamoto, Shuuichi</footer>
                      
             
 
                
                
                </div>
            </div>


        </div>
        <div class='container'><%@include file="/WEB-INF/fragments/footer.jsp" %></div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
