<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/header.jsp"/>

<jsp:include page="common/nav.jsp"/>
<main id="tg-main" class="tg-main tg-haslayout">
    <!--************************************
                    News Grid Start
    *************************************-->
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div id="tg-twocolumns" class="tg-twocolumns">
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <div id="tg-content" class="tg-content">
                            <div class="tg-products">
                                <div class="tg-sectionhead">
                                    <h2><span></span>All Books</h2>
                                </div>
                                <div class="tg-productgrid">
                                    <div class="tg-refinesearch">
                                        <span>showing 1 to 8 of 20 total</span>
                                        <form class="tg-formtheme tg-formsortshoitems">
                                            <fieldset>
                                                <div class="form-group">
                                                    <label>sort by:</label>
                                                    <span class="tg-select">
                                                        <select>
                                                            <option>name</option>
                                                            <option>name</option>
                                                            <option>name</option>
                                                        </select>
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <label>show:</label>
                                                    <span class="tg-select">
                                                        <select>
                                                            <option>8</option>
                                                            <option>16</option>
                                                            <option>20</option>
                                                        </select>
                                                    </span>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>                                        
                                    <c:forEach var="s" items="${listS}">
                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                            <div class="tg-postbook">
                                                <figure class="tg-featureimg">
                                                    <div class="tg-bookimg">
                                                        <div class="tg-frontcover"><img src="Uploads/${s.hinh}" alt="image description"></div>
                                                        <div class="tg-backcover"><img src="Uploads/${s.hinh}" alt="image description"></div>
                                                    </div>
                                                    <a class="tg-btnaddtowishlist" href="detail?ids=${s.masach}">
                                                        <i class="fa fa-search"></i>                                                        
                                                        <span>Book Detail</span>
                                                    </a>
                                                </figure>
                                                <div class="tg-postbookcontent">
                                                    <c:forEach var="cd" items="${listc}">
                                                        <c:if test="${s.machude==cd.machude}">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="chude?idcd=${s.machude}">${cd.tenchude}</a></li>
                                                            </ul>
                                                        </c:if>
                                                    </c:forEach>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                    <div class="tg-booktitle">
                                                        <h3><a href="detail?ids=${s.masach}">${s.tensach}</a></h3>
                                                    </div>
                                                    <c:forEach var="tg" items="${listtg}">
                                                        <c:if test="${s.matacgia==tg.matacgia}">
                                                            <span class="tg-bookwriter">By: <a href="tacgia?idtg=${s.matacgia}">${tg.tentacgia}</a></span>
                                                            </c:if>
                                                        </c:forEach>
                                                    <span class="tg-stars"><span></span></span>
                                                    <span class="tg-bookprice">
                                                        <ins><fmt:formatNumber value="${s.discount}" pattern="#,###"/>Ð</ins>
                                                        <del><fmt:formatNumber value="${s.giaban}" pattern="#,###"/>Ð</del>
                                                    </span>
                                                    <a class="tg-btn tg-btnstyletwo" href="cart?ids=${s.masach}&action=addcart">
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
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <div class="tg-widget tg-widgetsearch">
                                <form class="tg-formtheme tg-formsearch">
                                    <div class="form-group">
                                        <button type="submit" name="btnseach" ><i class="icon-magnifier"></i></button>
                                        <input type="search" name="txtsach" value="${param.tensach}" class="form-group" placeholder="Search by title, author, key...">
                                    </div>
                                </form>
                            </div>
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>All Topic</h3>
                                </div>
                                <c:forEach var="x" items="${listc}">
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li>
                                                <a href="chude?idcd=${x.machude}"><span>${x.tenchude}</span><em></em></a>
                                            </li>
                                        </ul>
                                    </div>
                                </c:forEach>

                            </div>
                            <div class="tg-widget tg-widgettrending">
                                <div class="tg-widgettitle">
                                    <h3>Trending Products</h3>
                                </div>
                                <c:forEach var="to" items="${top4}">
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li>
                                                <article class="tg-post">
                                                    <figure><a href="detail?ids=${to.masach}"><img src="Uploads/${to.hinh}" alt="image description"></a></figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a href="detail?ids=${to.masach}">${to.tensach}</a></h3>
                                                        </div>
                                                        <c:forEach var="tg" items="${listtg}">
                                                            <c:if test="${to.matacgia==tg.matacgia}">
                                                                <span class="tg-bookwriter">By: <a href="tacgia?${to.matacgia}">${tg.tentacgia}</a></span>
                                                                </c:if>
                                                            </c:forEach>
                                                    </div>
                                                </article>
                                            </li>
                                        </ul>
                                    </div>
                                </c:forEach>

                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
                    News Grid End
    *************************************-->
</main>
<jsp:include page="common/footer.jsp"/>
