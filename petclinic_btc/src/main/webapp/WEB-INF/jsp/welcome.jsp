<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <h2><fmt:message key="welcometopnppetclinic"/></h2>

    <div class="container text-center">
        <div class="row">
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-1" src="https://cdn.greenbespinglobal.store/duck-1.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-2" src="https://cdn.greenbespinglobal.store/duck-2.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-3" src="https://cdn.greenbespinglobal.store/duck-3.png" />
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-4" src="https://cdn.greenbespinglobal.store/duck-4.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-5" src="https://cdn.greenbespinglobal.store/duck-5.png" />
            </div>
            <div class="col-md-4">
                <img class="img-responsive" alt="Duck-6" src="https://cdn.greenbespinglobal.store/duck-6.png" />
            </div>
        </div>
    </div>    
</petclinic:layout>
