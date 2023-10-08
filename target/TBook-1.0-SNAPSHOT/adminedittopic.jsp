<%-- 
    Document   : adminedituser
    Created on : Sep 26, 2023, 2:40:44 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/nav.jsp"></jsp:include>
    <link rel="stylesheet" href="css/stylebtn.css">
    <br/>
<jsp:useBean id="dao" class="dao.ChuDeDAO"></jsp:useBean>
<c:if test="${param.machude != null}">
    <c:set var="x" value="${dao.findBymacd(param.machude)}"/>
</c:if>
<div class="w3layoutscontaineragileits">
    <div class="container">
        <form action="adminedituser" style="min-width: 300px;" method="post">
            <h5 class="text-center"><label>Edit Topic Information</label></h5>
            <div class="user">
                <label class="form-label">Name</label>
                <input class="form-control" type="text" name="machude" value="${x.machude}" placeholder="ID Topic....." readonly />
            </div>
            <div class="user ">
                <label class="form-label">UserName</label>
                <input class="form-control " type="text" name="tenchude" value="${x.tenchude}" placeholder="Topic Name....." />
            </div>
            <div class="text-center tg-formtheme">
                <input type="submit" name="btnedituser" value="Save Personal Information">
            </div>
        </form>
    </div>
</div>
<br/>
<jsp:include page="common/footer.jsp"></jsp:include>
