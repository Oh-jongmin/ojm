<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <h2><fmt:message key="welcome"/></h2>

    <c:set var="cdnBase" value="https://cdn.greenbespinglobal.store" />

    <div class="container text-center">
        <div class="row">
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-1" src="${cdnBase}/duck-1.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-2" src="${cdnBase}/duck-2.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-3" src="${cdnBase}/duck-3.png" />
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-4" src="${cdnBase}/duck-4.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-5" src="${cdnBase}/duck-5.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-6" src="${cdnBase}/duck-6.png" />
            </div>
        </div>
    </div>    
</petclinic:layout>
