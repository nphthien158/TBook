<%-- 
    Document   : adminedituser
    Created on : Sep 26, 2023, 2:40:44 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/header.jsp"></jsp:include>
    <jsp:include page="common/checkAcc.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">
    <br/>
<jsp:useBean id="dao" class="dao.UserDAO"></jsp:useBean>
<c:if test="${param.taikhoan != null}">
    <c:set var="x" value="${dao.findUser(param.taikhoan)}"/>
</c:if>
<div class="w3layoutscontaineragileits">
    <div class="container">
        <form action="adminedituser" style="min-width: 300px;" method="post">
            <h5 class="text-center"><label>Edit User Information</label></h5>
            <div class="user">
                <label class="form-label">Name</label>
                <input class="form-control" type="text" name="hoten" value="${x.hoten}" placeholder="Your Full Name....." />
            </div>
            <div class="user ">
                <label class="form-label">UserName</label>
                <input class="form-control " type="text" name="taikhoan" value="${x.taikhoan}" placeholder="User Name....." readonly />
            </div>
            <div class="form-sub-w3ls user">
                <label class="radiobutton"><input id="radnam" value="1" name ="gender" checked="${x.gioitinh==true?"checked":""}" type="radio">Nam</label>
                <label class="radiobutton"><input id="radnu" value="0" name ="gender" ${x.gioitinh==false?"checked":""} type="radio">Nữ</label>
            </div>
            <div class="user ">
                <label class="form-label">Phone</label>
                <input class="form-control" type="phone" name="dienthoai" value="${x.dienthoai}" placeholder="User phone..." />
            </div>
            <div class="user">
                <label class="form-label">Email</label>
                <input class="form-control" type="email" name="email" value="${x.email}" placeholder="Email ......" />
            </div>
            <div class="user">
                <label class="form-label">Address</label>
                <input class="form-control" type="text" name="diachi" value="${x.diachi}" placeholder="Your location..." />
            </div>

            <br>
                <c:if test="${sessionScope.user.vaitro}">
                    <div class="form-sub-w3ls user">
                        <label class="radiobutton"><input value="1" name ="role" checked="${x.vaitro==true?"checked":""}" type="radio">Admin</label>
                        <label class="radiobutton"><input value="0" name ="role" ${x.vaitro==false?"checked":""} type="radio">Khách</label>
                    </div>
                </c:if>
            <div class="text-center tg-formtheme">
                <input type="submit" name="btnedituser" value="Save Personal Information">
            </div>
        </form>
    </div>
</div>
<br/>
<jsp:include page="common/footer.jsp"></jsp:include>
