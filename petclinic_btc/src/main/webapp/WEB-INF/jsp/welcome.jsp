<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <h2><fmt:message key="Welcome to PNP Petclinic"/></h2>
    <div class="row">
        <div class="col-md-12">
            <spring:url value="/resources/images/duck-1.png" htmlEscape="true" var="duck1Image"/>
            <img class="img-responsive" alt="Duck-1" src="${duck1Image}"/>
            
            <spring:url value="/resources/images/duck-2.png" htmlEscape="true" var="duck2Image"/>
            <img class="img-responsive" alt="Duck-2" src="${duck2Image}"/> 

            <spring:url value="/resources/images/duck-3.png" htmlEscape="true" var="duck3Image"/>
            <img class="img-responsive" alt="Duck-3" src="${duck3Image}"/>          
        </div>
    </div>
</petclinic:layout>
