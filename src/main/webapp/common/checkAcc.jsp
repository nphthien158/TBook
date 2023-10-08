<%-- 
    Document   : checkAcc
    Created on : Sep 26, 2023, 4:27:01 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${sessionScope.user == null}">
    <c:set var="error" value="Contact updated successed" scope="request"/>
    <%
        // Lấy đường dẫn của servlet đích (ví dụ: "/product")
        String targetServlet = "/default";
        // Chuyển hướng đến servlet đích
        request.getRequestDispatcher(targetServlet).forward(request, response);
    %>
</c:if>
<c:if test="${sessionScope.user != null && !sessionScope.user.vaitro}">
    <%
          String targetServlet1 = "/products";
        // Chuyển hướng đến servlet đích
        request.getRequestDispatcher(targetServlet1).forward(request, response);
    %>
</c:if>
