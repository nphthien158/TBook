<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.SachDAO"%>
    <jsp:include page="common/header.jsp"></jsp:include>

        <jsp:include page="common/nav.jsp"></jsp:include>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <main id="tg-main" class="tg-main tg-haslayout">
            <!--        ************************************
                                    Best Selling Start
                    *************************************-->
            <section class="tg-sectionspace tg-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="tg-sectionhead">
                                <h2><span></span>Bestselling Books</h2>
                                <a class="tg-btn" href="products">View All</a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="tg-bestsellingbooksslider" class="tg-bestsellingbooksslider tg-bestsellingbooks owl-carousel">
                                <c:forEach var="x" items="${listS}">
                                    <div class="item">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <a href="detail?ids=${x.masach}">
                                                        <div class="tg-frontcover">
                                                            <img src="Uploads/${x.hinh}" alt="image description"/>
                                                        </div>
                                                    </a>
                                                    <div class="tg-backcover">
                                                        <a href="detail?ids=${x.masach}"><img src="Uploads/${x.hinh}" alt="image description"/></a>
                                                    </div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="detail?ids=${x.masach}">
                                                    <i class="fa fa-search"></i>                                                
                                                    <span>View Detail</span>
                                                </a>                            
                                                <div class="tg-postbookcontent">
                                                    <c:forEach var="cd" items="${listc}">
                                                        <c:if test="${x.machude==cd.machude}">
                                                            <ul class="tg-bookscategories">
                                                                <li>
                                                                    <a href="chude?idcd=${x.machude}">
                                                                        ${cd.tenchude}
                                                                    </a>
                                                                </li>                 
                                                            </ul>
                                                        </c:if>
                                                    </c:forEach>                                           
                                                    <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                    <div class="tg-booktitle">
                                                        <h3><a href="detail?ids=${x.masach}">${x.tensach}</a></h3>
                                                    </div>
                                                    <c:forEach var="tg" items="${listtg}">
                                                        <c:if test="${x.matacgia==tg.matacgia}">
                                                            <span class="tg-bookwriter">By: 
                                                                <a href="tacgia?idtg=${x.matacgia}">${tg.tentacgia}
                                                                </a>
                                                            </span>
                                                        </c:if>
                                                    </c:forEach>
                                                    <span class="tg-stars"><span></span></span>
                                                    <span class="tg-bookprice">
                                                        <ins><fmt:formatNumber value="${x.discount}" pattern="#,###" /> Ð
                                                        </ins>
                                                        <del>      
                                                            <fmt:formatNumber value="${x.giaban}" pattern="#,###" />
                                                        </del>
                                                    </span>
                                                    <a class="tg-btn tg-btnstyletwo" href="cart?ids=${x.masach}&action=addcart">
                                                        <i class="fa fa-shopping-basket"></i>
                                                        <em>Add To Basket</em>
                                                    </a>
                                                </div>
                                        </div>
                                    </div>
                                </c:forEach>                                                    
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--    ************************************
                Best Selling End
                *************************************
                ************************************
                Featured Item Start
                *************************************-->
            <c:set var="fp" value="${p}"></c:set>
                <section class="tg-bglight tg-haslayout">
                    <div class="container">
                        <div class="row">
                            <div class="tg-featureditm">
                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                                    <figure><img src="Uploads/${fp.hinh}" alt="image description"></figure>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="tg-featureditmcontent">
                                    <div class="tg-themetagbox"><span class="tg-themetag">featured</span></div>
                                    <div class="tg-booktitle">
                                        <h3><a href="detail?ids=${fp.masach}">${fp.tensach}</a></h3>
                                    </div>
                                    <c:forEach var="tg" items="${listtg}">
                                        <c:if test="${tg.matacgia==fp.matacgia}">
                                            <span class="tg-bookwriter">By: <a href="tacgia?idtg=${fp.matacgia}">${tg.tentacgia}</a></span>
                                            </c:if>
                                        </c:forEach>
                                    <span class="tg-stars"><span></span></span>
                                    <div class="tg-priceandbtn">
                                        <span class="tg-bookprice">
                                            <ins>        
                                                <fmt:formatNumber value="${fp.discount}" pattern="#,###" /> Ð
                                            </ins>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo tg-active" href="cart?ids=${fp.masach}&action=addcart">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--    ************************************
                New Release End
                *************************************
                ************************************
                Collection Count Start
                *************************************-->
            <section class="tg-parallax tg-bgcollectioncount tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-04.jpg">
                <div class="tg-sectionspace tg-collectioncount tg-haslayout">
                    <div class="container">
                        <div class="row">
                            <div id="tg-collectioncounters" class="tg-collectioncounters">
                                <div class="tg-collectioncounter tg-drama">
                                    <div class="tg-collectioncountericon">
                                        <i class="icon-bubble"></i>
                                    </div>
                                    <div class="tg-titlepluscounter">
                                        <h2>Drama</h2>
                                        <h3 data-from="0" data-to="6179213" data-speed="8000" data-refresh-interval="50">6,179,213</h3>
                                    </div>
                                </div>
                                <div class="tg-collectioncounter tg-horror">
                                    <div class="tg-collectioncountericon">
                                        <i class="icon-heart-pulse"></i>
                                    </div>
                                    <div class="tg-titlepluscounter">
                                        <h2>Horror</h2>
                                        <h3 data-from="0" data-to="3121242" data-speed="8000" data-refresh-interval="50">3,121,242</h3>
                                    </div>
                                </div>
                                <div class="tg-collectioncounter tg-romance">
                                    <div class="tg-collectioncountericon">
                                        <i class="icon-heart"></i>
                                    </div>
                                    <div class="tg-titlepluscounter">
                                        <h2>Romance</h2>
                                        <h3 data-from="0" data-to="2101012" data-speed="8000" data-refresh-interval="50">2,101,012</h3>
                                    </div>
                                </div>
                                <div class="tg-collectioncounter tg-fashion">
                                    <div class="tg-collectioncountericon">
                                        <i class="icon-star"></i>
                                    </div>
                                    <div class="tg-titlepluscounter">
                                        <h2>Fashion</h2>
                                        <h3 data-from="0" data-to="1158245" data-speed="8000" data-refresh-interval="50">1,158,245</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--    ************************************
                Collection Count End
                *************************************
                ************************************
                Picked By Author Start
                *************************************-->
            <section class="tg-sectionspace tg-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="tg-sectionhead">
                                <h2><span>Some Great Books</span>Picked By Authors</h2>
                                <a class="tg-btn" href="products">View All</a>
                            </div>
                        </div>
                        <div id="tg-pickedbyauthorslider" class="tg-pickedbyauthor tg-pickedbyauthorslider owl-carousel">
                            <c:forEach var="xx" items="${pp}">
                                <div class="item">
                                    <div class="tg-postbook">
                                        <figure class="tg-featureimg">
                                            <div class="tg-bookimg">
                                                <div class="tg-frontcover"><img src="Uploads/${xx.hinh}" alt="image description"></div>
                                            </div>
                                            <div class="tg-hovercontent">
                                                <div class="tg-description">
                                                    <p>${xx.mota}</p>
                                                </div>
                                                <c:forEach var="cd" items="${listc}">
                                                    <c:if test="${cd.machude==xx.machude}">
                                                        <a href="chude?idcd=${xx.machude}"> <strong class="tg-bookcategory">${cd.tenchude}</strong> <a/>
                                                        </c:if>
                                                    </c:forEach>
                                                    <strong class="tg-bookprice">     
                                                        <fmt:formatNumber value="${xx.discount}" pattern="#,###" /> Ð
                                                    </strong>
                                                    <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                            </div>
                                        </figure>
                                        <div class="tg-postbookcontent">
                                            <div class="tg-booktitle">
                                                <h3><a href="detail?ids=${xx.masach}">${xx.tensach}</a></h3>
                                            </div>
                                            <c:forEach var="tg" items="${listtg}">
                                                <c:if test="${tg.matacgia==xx.matacgia}">
                                                    <span class="tg-bookwriter">By: <a href="tacgia?idtg=${xx.matacgia}">${tg.tentacgia}</a></span>
                                                    </c:if>
                                                </c:forEach>
                                            <a class="tg-btn tg-btnstyletwo" href="cart?ids=${xx.masach}&action=addcart">
                                                <i class="fa fa-shopping-basket"></i>
                                                <em>Add To Basket</em>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>
            <section class="tg-parallax tg-bgcalltoaction tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-06.jpg">
                <div class="tg-sectionspace tg-haslayout">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="tg-calltoaction">
                                    <h2>Open Discount For All</h2>
                                    <h3>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore.</h3>
                                    <a class="tg-btn tg-active" href="javascript:void(0);">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <jsp:include page="common/footer.jsp"></jsp:include>
