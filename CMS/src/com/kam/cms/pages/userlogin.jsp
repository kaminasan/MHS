<%-- 
    Document   : userlogin
    Created on : Oct 7, 2015, 11:25:41 PM
    Author     : Blacksteath
--%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="returnURL" value="${header['referer']}" scope="session"/>
<html>

    <%@include file="/WEB-INF/fragments/htmlhead.jsp" %>
<body>

<div class="container row">

    <jsp:include page="/WEB-INF/fragments/headersection.jsp"/>
	<main role="main" class="row gutters margin_bottom">
            <jsp:include page="/WEB-INF/fragments/leftsidesegment.jsp"/>    
		<article class="col span_6 background_tan hovering">
                    <header id="loginHeader">Welcome to the Bake Trade login form! </header>
                    <c:if test="${empty user.userName}"><section id="loginSection" class="row">
                        <form method="POST" action="/login" id="loginForm">
                            <fieldset id="formFieldSet">
                                <legend>Login Here</legend>
                            <label>Username:</label><input type="text" placeholder="username" name="userName">
                            <br>
                            <label>Password</label><input type="password" placeholder="password" name="userPass"><br>
                            <c:out value="${errorMessage}"/>
                            <input type="submit" value="Submit"/>
                            </fieldset>
                        </form>
                        
                    </section>
                    </c:if>
                        <c:if test="${not empty user.userName}"> Sorry ${user.userName}, but you can't login twice. Please logout first.</c:if>
 
                    
                    
		</article>
            
		  <jsp:include page="/WEB-INF/fragments/rightsidesegment.jsp"/>
	
	</main>
	
    <%@include file="/WEB-INF/fragments/footer.jsp" %>
	
   ${returnURL}

</div>

</body>

</html>