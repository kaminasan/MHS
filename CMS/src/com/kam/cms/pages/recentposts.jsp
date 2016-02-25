<%-- 
    Document   : recentposts
    Created on : Oct 13, 2015, 12:36:11 AM
    Author     : Blacksteath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <%@include file="/WEB-INF/fragments/htmlhead.jsp" %>
<body>
 
<div class="container row">

   <jsp:include page="/WEB-INF/fragments/headersection.jsp"/>
	<main role="main" class="row gutters margin_bottom">
            <jsp:include page="/WEB-INF/fragments/leftsidesegment.jsp"/> 
            <header id="recentPostHeader" class="row background_teal"><h1>Top 5 Most Recent Posts on BakeTrade</h1></header>
            <c:forEach items="${postList}" var="post">                  <%-- Here we create a new HTML section for each post in the list --%>
		<article class="col span_6 background_tan hovering">
	
                    <section id="postContent" class="row">
                        
                        <header id="postName" class="row">${post.postTitle}</header>
                        <br>
                        ${post.postSummary}
                        <img class="picture_content" src="Images/Posts/${post.postId}.jpg" alt="Picture of the Bentou">
                        
                            <br>
                         
                         ${post.postContent}
                        <br>
                        <b>Written By: ${post.posterName} </b>
                    </section>
                    
                    
                </article>
            </c:forEach>
            
	  <jsp:include page="/WEB-INF/fragments/rightsidesegment.jsp"/>
	
	</main>
	
    <%@include file="/WEB-INF/fragments/footer.jsp" %>
	
	

</div>

</body>

</html>