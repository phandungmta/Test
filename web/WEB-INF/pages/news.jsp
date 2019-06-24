<%-- 
    Document   : news
    Created on : Jun 24, 2019, 7:59:35 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%@page import="java.util.List"%>
      
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="category leftbar">
					<h3 class="title">
						<span style="color:forestgreen">
							Danh mục tin tức
						</span>
					</h3>
					<ul>	
                                            <c:forEach var="item" items="${listNewsType}" varStatus="status">
                                                <li>
                                                                <a href="${pageContext.request.contextPath}/newsType/${item.id}.html">
                                                                        <div><span style="color:red;font-size:16px"> ${item.name}</span></div> 
                                                                </a>
                                                        </li>
                                            </c:forEach>
						
					</ul>
				</div>
			</div>
			<div class="col-md-13">

				<div class="clearfix">
				</div>
				<div class="products-list">
					<ul class="products-listItem">
                                            <c:forEach var="item" items="${listNews}" varStatus="status">
                                                <li class="products">	
                                                        <div class="product-list-description">
                                                                <div class="productname">

                                                                    <span style="color:forestgreen"><a href="${pageContext.request.contextPath}/newsDetail/${item.id}.html">${item.title}</a></span>
                                                                </div>
                                                                <p><span style="font-size:14px">${item.createdDate}</span></p>
                                                        </div>
                                                </li>
                                            </c:forEach>
						

                                                

					</ul>
				</div>
			</div>
		</div>
		<div class="clearfix">
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
