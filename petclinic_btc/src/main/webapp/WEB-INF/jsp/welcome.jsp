<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <h2><fmt:message key="Welcome to PNP Petclinic"/></h2>
    <div class="row">
        <div class="col-md-12">
            <spring:url value="/resources/images/duck-1.png" htmlEscape="true" var="duck-1-Image"/>
            <img class="img-responsive" alt="Duck-1" src="${duck-1-Image}"/>
            
            <spring:url value="/resources/images/duck-2.png" htmlEscape="true" var="duck-2-Image"/>
            <img class="img-responsive" alt="Duck-2" src="${duck-2-Image}"/> 

            <spring:url value="/resources/images/duck-3.png" htmlEscape="true" var="duck-3-Image"/>
            <img class="img-responsive" alt="Duck-3" src="${duck-3-Image}"/>          
        </div>
    </div>
</petclinic:layout>
