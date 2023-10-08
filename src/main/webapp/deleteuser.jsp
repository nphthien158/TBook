<%-- 
    Document   : delete
    Created on : Sep 26, 2023, 3:02:21 PM
    Author     : Acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/checkAcc.jsp"></jsp:include>
<jsp:useBean id="dao" class="dao.UserDAO" />
<c:if test="${param.taikhoan!=null}">
    <c:set var="kq" value="${dao.Delete(param.taikhoan)}"/>
    <c:if test="${kq>0}"><c:set var="success" value="Contact deleted successed" scope="request"/> </c:if>
        <jsp:forward page="QLUser.jsp"/>
</c:if>

