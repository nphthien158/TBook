<%-- 
    Document   : adminedituser
    Created on : Sep 26, 2023, 2:40:44 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">
    <br/>
<jsp:useBean id="dao" class="dao.SachDAO"></jsp:useBean>
<c:if test="${param.masach != null}">
    <c:set var="x" value="${dao.sachbyid(param.masach)}"/>
</c:if>
<div class="w3layoutscontaineragileits">
    <div class="container">
        <form action="aebook" style="min-width: 300px;" method="post">
            <h5 class="text-center"><label>Edit Book Information</label></h5>
            <div class="user">
                <label class="form-label">Book ID</label>
                <input class="form-control" type="text" name="masach" value="${x.masach}" placeholder="Book Name....."  readonly/>
            </div>
            <div class="user">
                <label class="form-label">Book Name</label>
                <input class="form-control" type="text" name="tensach" value="${x.tensach}" placeholder="Book Name....." />
            </div>
            <div class="user ">
                <label class="form-label">Price</label>
                <input class="form-control " type="text" name="giaban" value="${x.giaban}" placeholder="Price....." />
            </div>
            <div class="user ">
                <div class="form-group">
                    <label for="comment">Descripton</label>
                    <input class="form-control" type="text" value="${x.mota}" placeholder="Descripton..." name="mota"/>
                </div>
            </div>
            <div class="user">
                <label class="form-label">BOOK COVER</label>
                <input class="form-control" type="text"name="anhbia" value="${x.anhbia}" placeholder="Book cover ......" />
            </div>
            <div class="user">
                <label class="form-label">DATE UPDATE</label>
                <input class="form-control" type="text" name="ngaycapnhat" value="${x.ngaycapnhat}" placeholder="Date update..." />
            </div>
            <div class="user">
                <label class="form-label">Publishing company</label>
                <select name="mansb" id="lang-select">
                    <c:forEach var="nxb"  items="${dao.readnxb()}">                 
                        <option style="width: 100%;" name="mansb" value="${nxb.mansb}" <c:if test="${nxb.mansb==x.mansb}">selected</c:if>>${nxb.tennsb}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="user">
                <label class="form-label">TOPIC</label>
                <select name="machude" id="lang-select">
                    <c:forEach var="cd"  items="${dao.readchude()}">                 
                        <option style="width: 100%;" name="machude" value="${cd.machude}" <c:if test="${cd.machude==x.machude}">selected</c:if>>${cd.tenchude}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="user">
                <label class="form-label">AUTHOR</label>
                <select name="matacgia" id="lang-select">
                    <c:forEach var="tg"  items="${dao.readtacgia()}">                 
                        <option style="width: 100%;" value="${tg.matacgia}" name="matacgia" <c:if test="${tg.matacgia==x.matacgia}">selected</c:if>>${tg.tentacgia}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="user">
                <label class="form-label">PICTURE</label>
                <input class="form-control" type="text" name="hinh" value="${x.hinh}" placeholder="Your location..." />
            </div>
            <div class="user">
                <label class="radiobutton"><input value="1" name ="role" type="radio"  ${x.hot==true?"checked":""} >Yes</label>
                <label class="radiobutton"><input value="0" name ="role" type="radio"  ${x.hot==false?"checked":""} >No</label>
            </div>
            <div class="user">
                <label class="form-label">DISCOUNT</label>
                <input class="form-control" type="text" name="discount" value="${x.discount}" placeholder="Your DISCOUNT..." />
            </div>
            <div class="user">
                <label class="form-label">QUANTITY</label>
                <input class="form-control" type="text" name="quantity" value="${x.quantity}" placeholder="Your QUANTITY..." />
            </div>
            <br>
            <div class="text-center tg-formtheme">
                <input type="submit" name="btnedituser" value="Save Book">
            </div>
        </form>
    </div>
</div>
<br/>
<jsp:include page="common/footer.jsp"></jsp:include>
