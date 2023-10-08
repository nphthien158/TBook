<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <!--                            <div class="tg-featurebook alert" role="alert">
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <div class="tg-featureditm">
                                                                <div class="row">
                                                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                                                                        <figure><img src="images/img-04.png" alt="image description"></figure>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                                        <div class="tg-featureditmcontent">
                                                                            <div class="tg-themetagbox"><span class="tg-themetag">featured</span></div>
                                                                            <div class="tg-booktitle">
                                                                                <h3><a href="javascript:void(0);">Things To Know About Green Flat Design</a></h3>
                                                                            </div>
                                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Farrah Whisenhunt</a></span>
                                                                            <span class="tg-stars"><span></span></span>
                                                                            <div class="tg-priceandbtn">
                                                                                <span class="tg-bookprice">
                                                                                    <ins>$23.18</ins>
                                                                                    <del>$30.20</del>
                                                                                </span>
                                                                                <a class="tg-btn tg-btnstyletwo tg-active" href="javascript:void(0);">
                                                                                    <i class="fa fa-shopping-basket"></i>
                                                                                    <em>Add To Basket</em>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>-->                                    
                            <c:set var="x" value="${sa}" />
                            <div class="tg-productdetail">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg"><img src="Uploads/${sa.hinh}" alt="image description"></figure>
                                            <div class="tg-postbookcontent">
                                                <span class="tg-bookprice">
                                                    <ins><fmt:formatNumber value="${sa.discount}" pattern="#,###"/>Ð</ins>
                                                    <del><fmt:formatNumber value="${sa.giaban}" pattern="#,###"/>Ð</del>
                                                </span>
                                                <span class="tg-bookwriter">You save <fmt:formatNumber value="${sa.giaban-sa.discount}" pattern="#,###"/>Ð </span>
                                                <ul class="tg-delevrystock">
                                                    <li><i class="icon-rocket"></i><span>Free delivery worldwide</span></li>
                                                    <li><i class="icon-checkmark-circle"></i><span>Dispatch from the USA in 2 working days </span></li>
                                                    <li><i class="icon-store"></i><span>Status: <em>In Stock</em></span></li>
                                                </ul>
                                                <div class="tg-quantityholder">
                                                    <em class="minus">-</em>
                                                    <input type="text" class="result" value="1" id="quantity" name="quantity">
                                                    <em class="plus">+</em>
                                                </div>
                                                <a class="tg-btn tg-active tg-btn-lg" href="cart?ids=${sa.masach}&action=addcart">Add To Basket</a>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <span>add to wishlist</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                        <div class="tg-productcontent">
                                            <ul class="tg-bookscategories">
                                                <c:forEach var="xx" items="${listc}">
                                                    <c:if test="${x.machude==xx.machude}">
                                                        <li><a href="chude?idcd=${x.machude}">${xx.tenchude}</a></li>
                                                        </c:if>
                                                    </c:forEach>
                                            </ul>
                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                            <div class="tg-booktitle">
                                                <h3>${x.tensach}</h3>
                                            </div>
                                            <c:forEach var="tg" items="${listtg}">
                                                <c:if test="${tg.matacgia==x.matacgia}">
                                                    <span class="tg-bookwriter">By: <a href="tacgia?idtg=${x.matacgia}">${tg.tentacgia}</a></span>
                                                    </c:if>
                                                </c:forEach>
                                            <span class="tg-stars"><span></span></span>
                                            <span class="tg-addreviews"><a href="javascript:void(0);">Add Your Review</a></span>
                                            <div class="tg-share">
                                                <span>Share:</span>
                                                <ul class="tg-socialicons">
                                                    <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                    <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                    <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                    <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                    <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="tg-description">
                                                <p>${x.mota}</p>
                                            </div>
                                            <div class="tg-sectionhead">
                                                <h2>Product Details</h2>
                                            </div>
                                            <ul class="tg-productinfo">
                                                <li><span>Format:</span><span>${x.anhbia}</span></li>
                                                <li><span>Pages:</span><span>528 pages</span></li>
                                                <li><span>Dimensions:</span><span>153 x 234 x 43mm | 758g</span></li>
                                                <li><span>Publication Date:</span><span>${x.ngaycapnhat}</span></li>
                                                    <c:forEach var="nsb" items="${listnsb}">
                                                        <c:if test="${nsb.mansb==x.mansb}">
                                                        <li><span>Publisher:</span><span>${nsb.tennsb}</span></li>
                                                        </c:if>
                                                    </c:forEach>
                                                <li><span>Language:</span><span>Viet Nam</span></li>
                                            </ul>
                                            <!--                                            <div class="tg-alsoavailable">
                                                                                            <figure>
                                                                                                <img src="images/img-02.jpg" alt="image description">
                                                                                                <figcaption>
                                                                                                    <h3>Also Available in:</h3>
                                                                                                    <ul>
                                                                                                        <li><span>CD-Audio $18.30</span></li>
                                                                                                        <li><span>Paperback $20.10</span></li>
                                                                                                        <li><span>E-Book $11.30</span></li>
                                                                                                    </ul>
                                                                                                </figcaption>
                                                                                            </figure>
                                                                                        </div>-->
                                        </div>
                                    </div>
                                    <!--                                    <div class="tg-productdescription">
                                                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                <div class="tg-sectionhead">
                                                                                    <h2>Product Description</h2>
                                                                                </div>
                                                                                <ul class="tg-themetabs" role="tablist">
                                                                                    <li role="presentation" class="active"><a href="#description" data-toggle="tab">Description</a></li>
                                                                                    <li role="presentation"><a href="#review" data-toggle="tab">Reviews</a></li>
                                                                                </ul>
                                                                                <div class="tg-tab-content tab-content">
                                                                                    <div role="tabpanel" class="tg-tab-pane tab-pane active" id="description">
                                                                                        <div class="tg-description">
                                                                                            <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenden
                                                                                                voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                                                                            <figure class="tg-alignleft">
                                                                                                <img src="images/placeholdervtwo.jpg" alt="image description">
                                                                                                <iframe src="https://www.youtube.com/embed/aLwpuDpZm1k?rel=0&amp;controls=0&amp;showinfo=0"></iframe>
                                                                                            </figure>
                                                                                            <ul class="tg-liststyle">
                                                                                                <li><span>Sed do eiusmod tempor incididunt ut labore et dolore</span></li>
                                                                                                <li><span>Magna aliqua enim ad minim veniam</span></li>
                                                                                                <li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
                                                                                                <li><span>Aliquip ex ea commodo consequat aute dolor reprehenderit</span></li>
                                                                                                <li><span>Voluptate velit esse cillum dolore eu fugiat nulla pariatur</span></li>
                                                                                                <li><span>Magna aliqua enim ad minim veniam</span></li>
                                                                                                <li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
                                                                                            </ul>
                                                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam remmata aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enimsam
                                                                                                voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos quistatoa.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div role="tabpanel" class="tg-tab-pane tab-pane" id="review">
                                                                                        <div class="tg-description">
                                                                                            <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenden
                                                                                                voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                                                                            <figure class="tg-alignleft">
                                                                                                <img src="images/placeholdervtwo.jpg" alt="image description">
                                                                                                <iframe src="https://www.youtube.com/embed/aLwpuDpZm1k?rel=0&amp;controls=0&amp;showinfo=0"></iframe>
                                                                                            </figure>
                                                                                            <ul class="tg-liststyle">
                                                                                                <li><span>Sed do eiusmod tempor incididunt ut labore et dolore</span></li>
                                                                                                <li><span>Magna aliqua enim ad minim veniam</span></li>
                                                                                                <li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
                                                                                                <li><span>Aliquip ex ea commodo consequat aute dolor reprehenderit</span></li>
                                                                                                <li><span>Voluptate velit esse cillum dolore eu fugiat nulla pariatur</span></li>
                                                                                                <li><span>Magna aliqua enim ad minim veniam</span></li>
                                                                                                <li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
                                                                                            </ul>
                                                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam remmata aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enimsam
                                                                                                voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos quistatoa.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="tg-aboutauthor">
                                                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                <div class="tg-sectionhead">
                                                                                    <h2>About Author</h2>
                                                                                </div>
                                                                                <div class="tg-authorbox">
                                                                                    <figure class="tg-authorimg">
                                                                                        <img src="images/author/imag-24.jpg" alt="image description">
                                                                                    </figure>
                                                                                    <div class="tg-authorinfo">
                                                                                        <div class="tg-authorhead">
                                                                                            <div class="tg-leftarea">
                                                                                                <div class="tg-authorname">
                                                                                                    <h2>Kathrine Culbertson</h2>
                                                                                                    <span>Author Since: June 27, 2017</span>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="tg-rightarea">
                                                                                                <ul class="tg-socialicons">
                                                                                                    <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                                                    <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                                                    <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                                                    <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                                                    <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tg-description">
                                                                                            <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                                                        </div>
                                                                                        <a class="tg-btn tg-active" href="javascript:void(0);">View All Books</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>-->
                                    <div class="tg-relatedproducts">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2><span>Related Products</span>You May Also Like</h2>
                                                <a class="tg-btn" href="products">View All</a>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div id="tg-relatedproductslider" class="tg-relatedproductslider tg-relatedbooks owl-carousel">
                                                <c:forEach var="xa" items="${listS}">
                                                    <div class="item">
                                                        <div class="tg-postbook">
                                                            <figure class="tg-featureimg">
                                                                <div class="tg-bookimg">
                                                                    <a href="detail?ids=${xa.masach}">
                                                                        <div class="tg-frontcover"><img src="Uploads/${xa.hinh}" alt="image description"></div>
                                                                    </a>
                                                                    <div class="tg-backcover"><img src="Uploads/${xa.hinh}" alt="image description"></div>
                                                                </div>
                                                                <a class="tg-btnaddtowishlist" href="detail?ids=${xa.masach}">
                                                                    <i class="fa fa-search"></i>                                                
                                                                    <span>Detail Book</span>
                                                                </a>
                                                            </figure>
                                                            <div class="tg-postbookcontent">
                                                                <c:forEach var="cd" items="${listc}">
                                                                    <c:if test="${xa.machude==cd.machude}">
                                                                        <ul class="tg-bookscategories">
                                                                            <li>
                                                                                <a href="chude?idcd=${xa.machude}">
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
                                                                    <c:if test="${xa.matacgia==tg.matacgia}">
                                                                        <span class="tg-bookwriter">By: 
                                                                            <a href="tacgia?idtg=${xa.matacgia}">${tg.tentacgia}
                                                                            </a>
                                                                        </span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <span class="tg-stars"><span></span></span>
                                                                <span class="tg-bookprice">
                                                                    <ins>${x.discount}Ð</ins>
                                                                    <del>${x.giaban}</del>
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
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <!--                            <div class="tg-widget tg-widgetsearch">
                                                            <form class="tg-formtheme tg-formsearch">
                                                                <div class="form-group">
                                                                    <button type="submit"><i class="icon-magnifier"></i></button>
                                                                    <input type="search" name="search" class="form-group" placeholder="Search by title, author, key...">
                                                                </div>
                                                            </form>
                                                        </div>-->
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>Topics</h3>
                                </div>
                                <c:forEach var="cd" items="${listc}">
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li><a href="chude?idcd=${cd.machude}"><span>${cd.tenchude}</span><em></em></a></li>
                                        </ul>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="tg-widget tg-widgettrending">
                                <div class="tg-widgettitle">
                                    <h3>Trending Products</h3>
                                </div>
                                <c:forEach var="hot" items="${top4}">
                                    <div class="tg-widgetcontent">
                                        <ul>

                                            <li>
                                                <article class="tg-post">
                                                    <figure><a href="detail?ids=${hot.masach}"><img src="Uploads/${hot.hinh}" alt="image description"></a></figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a href="detail?ids=${hot.masach}">${hot.tensach}</a></h3>
                                                        </div>
                                                        <c:forEach var="tg" items="${listtg}">
                                                            <c:if test="${hot.matacgia==tg.matacgia}">
                                                                <span class="tg-bookwriter">By: <a href="tagia?idtg=${hot.matacgia}">${tg.tentacgia}</a></span>
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
