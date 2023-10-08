

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <jsp:include page="common/header.jsp"></jsp:include>
        <jsp:include page="common/nav.jsp"></jsp:include>
            <div class="container" id="main-content">
                <div class="row">
                    <div class="col-md-6 text-end">
                        <h3> MY CART </h3>
                    </div>
                </div>     
                <hr/>
                <div class="row mt-4">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                        <c:forEach var="cart" items="${sessionScope.cart}">
                            <tbody>
                                <tr>
                                    <td><img  style="width: 30%" src="Uploads/${cart.s.hinh}"></td>
                                    <td>${cart.s.tensach}</td>
                                    <td>
                                        ${cart.soluong}                                
                                    </td>
                                    <td>           
                                        <fmt:formatNumber value="${cart.s.discount}" pattern="#,###" /> Ð
                                    </td>
                                    <td>   
                                        <fmt:formatNumber value="${cart.soluong*cart.s.discount}" pattern="#,###" /> Ð                                      
                                    </td>
                                    <td>
                                        <a href="cart?ids=${cart.s.masach}&action=delete">Delete</a>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                    <hr/>  
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 text-end">
                    <a href="products" class="btn btn-success float-right">
                        <i class="fa fa-plus-square"></i> Continue Buy
                    </a>
                </div>
                <div class="col-md-6 text-right">
                    <h3>Total Money</h3>
                    <input style="width: 80%" type="text" name="name" readonly value="
                           <fmt:formatNumber value="${sessionScope.total}" pattern="#,###" /> Ð"/>
                    <br/>
                    <a href="cart?action=checkout" class="btn btn-primary">Check Out</a>
                </div>
            </div>   
            <hr/>
        </div>
        <jsp:include page="common/footer.jsp"></jsp:include>
