<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <h2><fmt:message key="welcome to pnp petclinic"/></h2>
    
    <div class="container text-center">

    <div class="row">
        <div class="col-md-4">
            <spring:url value="/resources/images/duck-1.png" htmlEscape="true" var="duck1Image"/>
            <img class="img-responsive" alt="Duck-1" src="${duck1Image}"/>
        </div>
        <div class="col-md-4">
            <spring:url value="/resources/images/duck-2.png" htmlEscape="true" var="duck2Image"/>
            <img class="img-responsive" alt="Duck-2" src="${duck2Image}"/> 
        </div>
        <div class="col-md-4">
            <spring:url value="/resources/images/duck-3.png" htmlEscape="true" var="duck3Image"/>
            <img class="img-responsive" alt="Duck-3" src="${duck3Image}"/>          
        </div>
    </div>

    <div class="row-mt-3">
        <div class="col-md-4">
            <spring:url value="/resources/images/duck-4.png" htmlEscape="true" var="duck4Image"/>
            <img class="img-responsive" alt="Duck-4" src="${duck4Image}" />
        </div>
        <div class="col-md-4">
            <spring:url value="/resources/images/duck-5.png" htmlEscape="true" var="duck5Image"/>
            <img class="img-responsive" alt="Duck-5" src="${duck5Image}" />
        </div>
            <spring:url value="/resources/images/duck-6.png" htmlEscape="true" var="duck6Image"/>
            <img class="img-responsive" alt="Duck-6" src="${duck6Image}" />
        </div>
      </div>

    </div>
</petclinic:layout>
