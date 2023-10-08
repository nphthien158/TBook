<%-- 
    Document   : adminedituser
    Created on : Sep 26, 2023, 2:40:44 PM
    Author     : Acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">
    <br/>
<jsp:useBean id="dao" class="dao.TacGiaDAO"></jsp:useBean>
<c:if test="${param.matacgia != null}">
    <c:set var="x" value="${dao.findByma(param.matacgia)}"/>
</c:if>
<div class="w3layoutscontaineragileits">
    <div class="container">
        <form action="admineditauthor" style="min-width: 300px;" method="post">
            <h5 class="text-center"><label>Edit Author Information</label></h5>
            <div class="user">
                <label class="form-label">Author Name</label>
                <input class="form-control" type="text" name="tentacgia" value="${x.tentacgia}" placeholder="Author Name....." />
            </div>
            <div class="user ">
                <div class="form-group">
                    <label for="comment">Story:</label>
                    <input class="form-control" type="text" value="${x.tieusu}" placeholder="Descripton..." name="tieusu"/>
                </div>
            </div>
                            <div class="user ">
                <div class="form-group">
                    <label for="comment">Picture:</label>
                     <input class="form-control" type="text" value="${x.hinh}" placeholder="Descripton..." name="hinh"/>
                </div>
            </div>
            <br>
            <div class="text-center tg-formtheme">
                <input type="submit" name="btnedituser" value="Save Author Information">
            </div>
        </form>
    </div>
</div>
<br/>
<jsp:include page="common/footer.jsp"></jsp:include>
