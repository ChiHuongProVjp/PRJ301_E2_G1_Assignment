<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i>Hãng xe phổ biến</div>
        <!-- Hien thi hang xe -->
        <ul class="list-group category_block">
            <c:forEach items="${listCC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid ? "active":""}">
                    <a href="category?cid=${o.cid}">${o.cname}</a></li>
            </c:forEach>

            </ul>
    </div>
    
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Last product</div>
        <div class="card-body">
            <img class="img-fluid" src="${lastP.image}" />
            <h5 class="card-title">${lastP.name}</h5>
            <p class="card-text">${lastP.title}</p>
            <p class="bloc_left_price">${lastP.price} $</p>
        </div>
    </div>
</div>