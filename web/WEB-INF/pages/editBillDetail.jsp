
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
    </head>
    <body>
      <jsp:include page="header.jsp"></jsp:include>
      <div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="products-details">
							
			<div class="preview_image">
                        <div class="preview-small">
                            <img id="zoom_03" width="300" height="313" src="${pageContext.request.contextPath}/resources${product.img}" alt="">
                        </div>
                        </div>
                        <div class="products-description">
                            <h5 class="name">${product.name}</h5>
                            <p>
                                    <span class="light-red">
                                            Còn hàng
                                    </span>
                            </p>
                            <p>
                                    ${product.description}
                            </p>
                            <hr class="border">
                            <div class="price">
                                    Price :
                                    <span class="new_price">
                                            ${product.price} VNĐ
                                    </span>

                            </div>
                            <hr class="border">
                            <form:form method="POST" modelAttribute="oder"  action="${pageContext.request.contextPath}/cart/edit.html" >
                                <div class="wided">
                                       <div class="qty">
                                                    <span style="font-size: 20px">Số lượng &nbsp;&nbsp;: </span>
                                                    <form:input type="hidden" name="productId" value="${product.id}" path="id.productId" />
                                                    <form:input id="qty"  type="number" title="Qty" value="${quantity}" min="1" max="5" path="amount"/>
                                            </div>
                                            <div class="button_group">
                                                    <button class="btn btn-success" type="submit" >
                                                            Edit To Cart
                                                    </button>
                                            </div>
                                    

                            </div>
                            </form:form>
                            
                            <div class="clearfix">
                            </div>
                            <hr class="border">
                        </div>

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
		</div>
		<div class="clearfix">
		</div>
       <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
