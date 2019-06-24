<%-- 
    Document   : newsDetail
    Created on : Jun 24, 2019, 8:36:23 PM
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
			<div class="col-md-9">
					<h5 class="name">${newsDetail.title}</h5>
					<p>
						<span class="light-red">
							Tin chi tiết
						</span>
					</p>
					<p>
						${newsDetail.content}
					</p>
					
				</div>

				<div class="clearfix">
				</div>

				<div class="clearfix">
				</div>
			</div>
			<div class="col-md-3">

				<div class="clearfix">
				</div>
			</div>
		</div>
		<div class="clearfix">
		</div>
	</div>
<div class="clearfix">
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
