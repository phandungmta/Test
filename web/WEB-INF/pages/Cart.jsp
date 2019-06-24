<%-- 
    Document   : Cart
    Created on : Jun 24, 2019, 9:11:30 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
		<div class="container shopping-cart">
			<div class="row">
                            <c:set var = "i" scope = "session" value = "${sessionScope.myCartNum}"/>
                            <c:if test="${i >0 }">
                                <div class="col-md-12">
					<h3 class="title">
						Giỏ hàng
					</h3>
					<div class="clearfix">
					</div>
					<table class="shop-table">
						<thead>
							<tr>
								<th>
									Hình ảnh
								</th>
								<th>
									Tên sản phẩm
								</th>
								<th>
									Giá bán
								</th>
								<th>
									Số lượng
								</th>
								<th>
									Thành tiền
								</th>
								<th>
									Hủy
								</th>
							</tr>
						</thead>
					
                                              
						<tbody>
                                                    <c:forEach var="map" items="${sessionScope.myCartItems}">
							
								
								<tr>
									<td>
										<img style="width: 88px ; height: 130px" src="${pageContext.request.contextPath}/resources${map.value.product.img}s" alt="">
									</td>
									<td>
										<div class="shop-details">
											<div class="productname">
												${map.value.product.name}
											</div>

										
										</div>
									</td>
									<td>
										<h5>
											<strong class="red">
												${map.value.product.price} VNĐ
											</strong>
										</h5>
									</td>
									<td>
										<input type="number" name="textfield" id="textfield" data-id="${map.value.product.id}" value="${map.value.quantity}" min="1" max="5" class="quantity">
									</td>
									<td>
										<h5>
											<strong class="red">
												${map.value.totalPrice} VNĐ
											</strong>
										</h5>
									</td>
									<td>
										<a href="${pageContext.request.contextPath}/cart/remove/${map.value.product.id}.html" class="btnDelete" data-id="${map.value.product.id}">
											<img src="~/Template/images/remove.png" alt="">
										</a>
									</td>
								</tr>
							
                                                        </c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
									<a href="/Test/index" class="btn btn-danger pull-left">Tiếp tục mua hàng</a>
									<button id="btnDeleteAll" class=" pull-right" style="margin-left:25px">
										Xóa giỏ hàng
									</button>
								</td>
							</tr>
						</tfoot>
					</table>
					<div class="clearfix">
					</div>
                                  
			</div>
                            </c:if>
			
				
			<div class="clearfix">
			</div>

		</div>
	</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
