<%-- 
    Document   : footer
    Created on : Jun 20, 2019, 10:28:04 PM
    Author     : MINAT0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container_fullwidth">
			<div class="container">
				<div class="our-brand">
					<h3 class="title"><strong>Thương </strong> hiệu</h3>
					<div class="control"><a id="prev_brand" class="prev" href="#">&lt;</a><a id="next_brand" class="next" href="#">&gt;</a></div>
					<ul id="braldLogo">
						<li>
							<ul class="brand_item">
								<c:forEach var="item" items="${listProducer}" >
                                                                    <li>
                                                                        <a href="${pageContext.request.contextPath}/producer/${item.id}.html">
                                                                            <div class="brand-logo"><img src="${pageContext.request.contextPath}/resources${item.images}" alt=""></div>
                                                                        </a>
	
                                                                    </li>
                                                                </c:forEach> 
							</ul>
						</li>
					</ul>
				</div>
			</div>
                    </div>
        <div class="clearfix"></div>
        <div class="footer">
	<div class="footer-info">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
                                    <div class="footer-logo"><a href="${pageContext.request.contextPath}/home.html"><img src="<c:url value="/resources/images/logo1.png" />"alt=""></a></div>
				</div>
				<div class="col-md-3 col-sm-6">
					<h4 class="title">Thông tin <strong>liên hệ</strong></h4>
					<p>Số 236, Hoàng Quốc Việt, Hà Nội , Việt Nam</p>
					<p>Liên hệ : (084) 1900 1008</p>
					<p>Email : cnttc151@gmail.com</p>
				</div>
				
				<div class="col-md-3">
					<h4 class="title">Về <strong>chúng tôi </strong></h4>				
					<p>Prokennex-Shop cầu lông. </p>
					<p>Chuyên cung cấp các phụ kiện cầu lông chính hãng, giá cạnh tranh, ship hàng tận nơi</p>
				</div>
			</div>
		</div>
	</div>
</div>
    </body>
</html>
