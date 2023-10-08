   <%-- 
    Document   : QLUser
    Created on : Sep 24, 2023, 11:31:24 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>

    <link rel="stylesheet" href="css/stylebtn.css">    
<jsp:useBean id="dao" class="dao.UserDAO"></jsp:useBean>
<c:if test="${param.btnsearch!=null}">
    <c:set var="kq" value="${dao.search(param.txtname)}"/>
</c:if>
<c:if test="${param.btnsearch==null}">
    <c:set var="kq" value="${dao.readAll()}"/>
</c:if>
<div class="container" id="main-content">
    <div class="row">
        <div class="col-md-6">
            <form method="post">  
                <div class="row">
                    <br/>
                    <div class="col-md-8"> 
                        <input class="form-control" type="search" name="txtname" value="${param.txtname}" placeholder="Search by username ..." />
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-primary" type="submit" name="btnadd"> <!-- Đổi tên nút thành "btnsearch" -->
                            <i class="fa fa-search"></i> Search
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6 text-end">
            <br/>
            <a href="adminNewUser.jsp" class="btn btn-success float-right">
                <i class="fa fa-plus-square"></i> New User
            </a>
        </div>
    </div>                  
    <div class="row mt-4">
        <div class="table-responsive">
            <h5>List of Users</h5>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Full Name</th>
                        <th>User Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Role</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${kq}">
                        <tr>
                            <td>${user.makh}</td>
                            <td>${user.hoten}</td>
                            <td>${user.taikhoan}</td>
                            <td>${user.gioitinh == true ? "Nam" : "Nữ"}</td>
                            <td>${user.diachi}</td>
                            <td>${user.email}</td>
                            <td>${user.dienthoai}</td>
                            <td>${user.vaitro == true ? "Admin" : "Khách"}</td>
                            <td>
                                <a href="adminedituser.jsp?taikhoan=${user.taikhoan}" class="mr-sm-2 text-primary"><i name="btedit" class="fa fa-pencil"></i></a>
                                <a href="deleteuser.jsp?taikhoan=${user.taikhoan}" onclick="return confirm('Are you sure you want to delete this contact?')" class="text-danger"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
