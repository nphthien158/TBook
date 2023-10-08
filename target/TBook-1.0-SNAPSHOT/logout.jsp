<%-- 
    Document   : logout
    Created on : Sep 21, 2023, 1:34:18 PM
    Author     : Acer
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${sessionScope.user!=null}">
    <c:remove var="user" scope="session"/>
    <c:redirect url="default"/>
</c:if>
