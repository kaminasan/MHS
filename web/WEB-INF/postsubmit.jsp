<%-- 
    Document   : postsubmit
    Created on : Mar 11, 2016, 10:44:31 AM
    Author     : KaminaSan <www.kaminasan.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="/WEB-INF/headsection.jsp" %>
        <title>Insert Title Here</title>
    </head>
    <body>
        
         <%@include file="/WEB-INF/fragments/navsection.jsp" %>
         <div class="container-fluid">
             <form>
                 <div class="row">
                        <div class="form-group col-lg-6">
                            <label for="mainTitleImage">Add a main Image for your post!</label>
                            <input id="mainTitleImage" type="file" name="mainTitleImage" accept="image/*" required>
                            <div class="">Upload Status: <span id="fileStatus">No Image Selected</span></div>
                        </div> 
                        <div class="form-group col-lg-6">
                            <label for="extraImages">Add Extra Images for your post!</label>
                            <input id="extraImages" type="file" name="extraImages[]" accept="image/*" multiple>
                           
                        </div> 
                 </div>
             </form>
             
        
         <%@include file="/WEB-INF/fragments/footer.jsp" %>
         
         </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
         <script src="js/Controllers.js"></script>
    </body>
</html>