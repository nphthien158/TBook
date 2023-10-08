<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ChuDeDAO"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="tg-header" class="tg-header tg-headervtwo tg-haslayout">
    <div class="tg-middlecontainer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <strong class="tg-logo"><a href="default"><img src="images/logo.png" alt="company name here"></a></strong>
                    <div class="tg-searchbox">
                        <form class="tg-formtheme tg-formsearch">
                            <fieldset>
                                <input type="text" name="txtsach" class="typeahead form-control" placeholder="Search by title, author, keyword, ISBN...">
                                <button type="submit" name="btnseach" class="tg-btn">Search</button>
                            </fieldset>
                            <a href="javascript:void(0);">+ Advanced Search</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tg-navigationarea">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-navigationholder">
                        <nav id="tg-nav" class="tg-nav">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
                                <ul>

                                    <li  class="menu-item-has-children current-menu-item">
                                        <a href="default">Home</a>                                       
                                    </li>                                    
                                    <li class="menu-item-has-children menu-item-has-mega-menu">
                                        <a href="products">All Book</a>
                                    </li>
                                    <c:if test="${sessionScope.user!=null&&sessionScope.user.vaitro}"> 
                                        <li class="menu-item-has-children"><a href="QLUser.jsp">USERS</a></li>
                                        <li class="menu-item-has-children"><a href="qlbooks.jsp">BOOKS</a></li>
                                        <li class="menu-item-has-children"><a href="qlauthors.jsp">AUTHORS</a></li>
                                        <li class="menu-item-has-children"><a href="qltopic.jsp">TOPICS</a></li>
                                        <li class="menu-item-has-children"><a href="qlpc.jsp">Publishing company</a></li>
                                        <style>.menu-item-has-children > a:after {
                                                display: none;
                                            }</style>
                                        </c:if>
                                </ul>
                            </div>
                        </nav>
                        <div class="tg-wishlistandcart">
                            <div class="dropdown tg-themedropdown tg-wishlistdropdown">
                                <a href="javascript:void(0);" id="tg-wishlisst" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-heart"></i>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-wishlisst">
                                    <div class="tg-description"><p>No products were added to the wishlist!</p></div>
                                </div>
                            </div>
                            <!--NE-->
                            <!--CART NE-->
                            <c:set var="size" value="${sessionScope.size}"/>
                            <div class="dropdown tg-themedropdown tg-minicartdropdown">
                                <a href="cart.jsp" id="tg-minicart" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">${size}</span>
                                    <i class="icon-cart"></i>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-minicart">
                                    <c:forEach var="cart" items="${sessionScope.cart}">
                                        <div class="tg-minicartbody">
                                            <div class="tg-minicarproduct">
                                                <figure>
                                                    <img style="width: 50px" src="Uploads/${cart.s.hinh}" alt="image description">
                                                </figure>
                                                <div class="tg-minicarproductdata">
                                                    <h5><a href="javascript:void(0);">${cart.s.tensach}</a></h5>
                                                    <h6><a href="#"><fmt:formatNumber value="${cart.s.discount}" pattern="#,###" /> Ð</a></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <div class="tg-minicartfoot">
                                        <a class="tg-btnemptycart" href="javascript:void(0);">
                                            <i class="fa fa-trash-o"></i>
                                            <span>Clear Your Cart</span>
                                        </a>
                                        <span class="tg-subtotal">Total: <strong><fmt:formatNumber value="${sessionScope.total}" pattern="#,###" /> Ð</strong></span>
                                        <div class="tg-btns">
                                            <a class="tg-btn tg-active" href="cart">View Cart</a>
                                            <a class="tg-btn" href="checkout.jsp">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${sessionScope.user!=null}"> 
                                <div class="dropdown tg-themedropdown tg-btnthemedropdown">
                                    <a href="javascript:void(0);" id="tg-currenty" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Welcome: ${sessionScope.user.getHoten()}</a>
                                    <ul class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-currenty">
                                        <li style="list-style-type:none;padding:0px 0px 10px 0px;"><a name="btnusinf" href="user.jsp?taikhoan=${sessionScope.user.taikhoan}">Thông Tin Cá Nhân</a></li>
                                        <li style="list-style-type:none;padding:0px 0px 10px 0px;"><a href="#">Đổi Mật Khẩu</a></li>
                                        <li style="list-style-type:none;padding:0px 0px 10px 0px;"><a href="logout.jsp">Đăng Xuất</a></li>
                                    </ul>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.user==null}">
                                <div class="dropdown tg-themedropdown tg-login ">
                                    <a href="login.jsp" id="login" class="">
                                        Login
                                    </a>
                                </div> 
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
