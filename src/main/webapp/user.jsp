<%-- 
    Document   : user
    Created on : Sep 20, 2023, 10:33:36 AM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">
    <br/>
<jsp:useBean id="dao" class="dao.UserDAO"></jsp:useBean>
<c:if test="${sessionScope.user!=null}">
    <c:set var="x" value="${dao.findUser(sessionScope.user.taikhoan)}"/>
</c:if>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="w3layoutscontaineragileits">
    <div class="container">
        <form style="min-width: 300px;" method="post">
            <h5 class="text-center"><label>Personal Information</label></h5>
            <c:if test="${sessionScope.user.vaitro}">
                <div class="form-sub-w3ls user">
                    <label class="text-center" style="font-size: 16px;font-weight: bold;">BẠN LÀ ADMIN CỦA TRANG!</label>
                </div>
            </c:if>
            <div class="user">
                <label class="left" >Name: </label>
                <label class="right" >${x.hoten}</label>
            </div>
            <div class="user">
                <label class="left" >UserName:</label> 
                <label class="right" >${x.taikhoan}</label>
            </div>
            <div class="user">
                <label class="left" >Gender:</label>
                <label class="right">${x.gioitinh==true?"Nam":"Nữ"} </label>
            </div>
            <div class="user">
                <label class="left" >Phone: </label> 
                <label class="right" >${x.dienthoai}</label>
            </div>
            <div class="user">
                <label class="left" >Email: </label>
                <label class="right" >${x.email}</label>
            </div>
            <div class="user">
                <label class="left" >Address: </label> 
                <label class="right">${x.diachi}</label>
            </div> 

            <div class=" text-center tg-formtheme">
                <a href="edituser.jsp?taikhoan=${x.taikhoan}" type="submit" name="btnupdate">Update Personal Information</a>
            </div>
        </form>
    </div>
</div>
<br/>
<jsp:include page="common/footer.jsp"></jsp:include>