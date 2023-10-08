<%-- 
    Document   : qlbooks
    Created on : Sep 25, 2023, 9:50:18 AM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">    
<jsp:useBean id="dao" class="dao.SachDAO"></jsp:useBean>
<c:if test="${param.btnsearch!=null}">
    <c:set var="kq" value="${dao.search(param.txtname)}"/>
</c:if>
<c:if test="${param.btnsearch==null}">
    <c:set var="kq" value="${dao.getAll()}"/>
</c:if>
<div class="container" id="main-content">
    <div class="row">
        <div class="col-md-6">
            <form method="post">  
                <div class="row">
                    <br/>
                    <div class="col-md-8"> 
                        <input class="form-control" type="search" name="txtname" value="${param.txtname}" placeholder="Search by bookname ..." />
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-primary"  name="btnadd"> <!-- Đổi tên nút thành "btnsearch" -->
                            <i class="fa fa-search"></i> Search
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6 text-end">
            <br/>
            <a href="newbook.jsp" class="btn btn-success float-right">
                <i class="fa fa-plus-square"></i> New Book
            </a>
        </div>
    </div>                  
    <div class="row mt-4">
        <div class="table-responsive">
            <h5>List of Books</h5>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>BOOK NAME</th>
                        <th>PRICE</th>
                        <th>Description</th>
                        <th>BOOK COVER</th>
                        <th>DATE UPDATE</th>
                        <th>Publishing company</th>
                        <th>Topic</th>
                        <th>PICTURE</th>
                        <th>AUTHOR</th>
                        <th>HOT</th>
                        <th>DISCOUNT</th>
                        <th>QUANTITY</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="books" items="${kq}">
                        <tr>
                            <td>${books.masach}</td>
                            <td>${books.tensach}</td>
                            <td>${books.giaban}</td>
                            <td>...</td>
                            <td>${books.anhbia}</td>
                            <td>${books.ngaycapnhat}</td>
                            <td>${dao.tennsbbymansb(books.mansb).tennsb}</td>
                            <td>${books.hinh}</td>
                            <td>${dao.tenchudebyma(books.machude).tenchude}</td>
                            <td>${dao.tentacgiabyma(books.matacgia).tentacgia}</td>
                            <td>${books.hot == true ? "Yes":"No"}</td>
                            <td>${books.discount}</td>
                            <td>${books.quantity}</td>
                            <td>
                                <a href="admineditbooks.jsp?masach=${books.masach}" class="mr-sm-2 text-primary"><i name="btedit" class="fa fa-pencil"></i></a>
                                <a href="deletebook.jsp?masach=${books.masach}" onclick="return confirm('Are you sure you want to delete this contact?')" class="text-danger"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>
