<%-- 
    Document   : navsection
    Created on : Nov 13, 2015, 9:06:29 AM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav id="navBar" class="navbar navbar-inverse navbar-fixed-top" role="navigation"> <!-- Define our NavBar -->
            <div id="navContainer" class="container">
                <div id="navHeader" class="navbar-header">
                    <button type="button" id="dropdown" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="/mhs" id="homeLink" class="navbar-brand">Minamata High<div><h6>熊本県立水俣高等学校</h6></div></a>
                </div>
                <div id="collapsibleContent" class="navbar-collapse collapse"><!-- If we don't put collapse here, it unfolds immediately on resize if we don't have navbar-collapse, the data-target cannot pick it up -->
                    <ul id ="linksList" class="nav navbar-nav navbar-right">
                        <li><a href="#" class="dropdown-toggle dropdown" data-toggle="dropdown"><span class="glyphicon  glyphicon-blackboard"></span> About
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="principal-greeting">Principal's Greetings</a></li>
                                <li> <a href='school-history'>School History</a></li>
                            </ul>
                        </li>
                        <li><a href="<c:url value="/contact"></c:url>"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                        <li><a href="#" class=""><span class="glyphicon glyphicon-globe"></span> International</a></li>
                    </ul>
                </div>
            </div>

        </nav>