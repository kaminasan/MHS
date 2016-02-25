<%-- 
    Document   : post
    Created on : Oct 9, 2015, 11:57:44 PM
    Author     : Blacksteath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

    <%@include file="/WEB-INF/fragments/htmlhead.jsp" %>
<body>
    
<div class="container row">

   <jsp:include page="/WEB-INF/fragments/headersection.jsp"/>
	<main role="main" class="row gutters margin_bottom">
            <jsp:include page="/WEB-INF/fragments/leftsidesegment.jsp"/> 
            <header id="recentPostHeader" class="row"><h1>Top 5 Most recent Bake Trade Posts</h1></header>
           <article class="col span_6 background_tan hovering">
	
                    <header id="postHeader" class="row"><h1>Check this out!</h1></header>
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
	  <jsp:include page="/WEB-INF/fragments/rightsidesegment.jsp"/>
	
	</main>
	
    <%@include file="/WEB-INF/fragments/footer.jsp" %>
	
	

</div>

</body>

</html>