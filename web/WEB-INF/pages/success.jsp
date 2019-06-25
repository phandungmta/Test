<%-- 
    Document   : success
    Created on : Jun 25, 2019, 9:54:54 AM
    Author     : MINAT0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
	<div class="container">
		<div class="row">

			<div class="col-md-9">
				<div class="container_fullwidth" style="margin-top:50px ; margin-left:80px"><span style="font-size: 18px ">Bạn đã đặt hàng thành công, <a href="${pageContext.request.contextPath}/home.html" style="color:blue" class="log">Tiếp tục</a> mua hàng tại đây!</span></div>

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
