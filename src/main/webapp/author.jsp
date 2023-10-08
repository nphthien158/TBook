

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>


    <main id="tg-main" class="tg-main tg-haslayout">
        <!--************************************
                        Author Detail Start
        *************************************-->
        <div class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <c:forEach var="tg" items="${listtg}">
                        <div class="tg-authordetail">
                            <figure class="tg-authorimg">
                                <img src="Uploads/${tg.hinh}">
                            </figure>
                            <div class="tg-authorcontentdetail">
                                <div class="tg-sectionhead">
                                    <h1>${tg.tentacgia}</h1>
                                    <ul class="tg-socialicons">
                                        <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                        <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                        <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                        <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                        <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                    </ul>
                                </div>
                                <div class="tg-description">
                                    <p>${tg.tieusu}</p>
                                </div>
                                <div class="tg-booksfromauthor">
                                    <div class="tg-sectionhead">
                                        <h2>Books of ${tg.tentacgia}</h2>
                                    </div>
                                    <div class="row">
                                        <c:forEach var="x" items="${listS}">
                                            <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                                <div class="tg-postbook">
                                                    <figure class="tg-featureimg">
                                                        <div class="tg-bookimg">
                                                            <div class="tg-frontcover"><img src="Uploads/${x.hinh}" alt="image description"></div>
                                                            <div class="tg-backcover"><img src="Uploads/${x.hinh}" alt="image description"></div>
                                                        </div>
                                                        <a class="tg-btnaddtowishlist" href="detail?ids=${x.masach}">
                                                            <i class="fa fa-search"></i>                                                
                                                            <span>View Detail</span>
                                                        </a>
                                                    </figure>
                                                    <div class="tg-postbookcontent">
                                                        <ul class="tg-bookscategories">
                                                            <c:forEach var="cd" items="${listc}">
                                                                <c:if test="${x.machude==cd.machude}">
                                                                    <li><a href="chude?idcd=${x.machude}">${cd.tenchude}</a></li>
                                                                    </c:if>
                                                                </c:forEach>
                                                        </ul>
                                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                        <div class="tg-booktitle">
                                                            <h3><a href="detail?ids=${x.masach}">${x.tensach}</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter">By: <a href="tacgia?idtg=${tg.matacgia}">${tg.tentacgia}</a></span>
                                                        <span class="tg-stars"><span></span></span>
                                                        <span class="tg-bookprice">
                                                            <ins>${x.discount}Ð</ins>
                                                            <del>${x.giaban}Ð</del>
                                                        </span>
                                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
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
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
                    Author Detail End
    *************************************-->
</main>
<jsp:include page="common/footer.jsp"></jsp:include>