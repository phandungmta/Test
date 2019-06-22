<%-- 
    Document   : producer
    Created on : Jun 22, 2019, 12:19:19 AM
    Author     : PC
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
 <div class="dropdown-menu">
        <ul class="mega-menu-links">
         <c:forEach var="jtem" items=" ${listProducer}">   
             <a href="/Test/index">  ${jtem.name} </a>
         </c:forEach>
             </ul>
</div>
