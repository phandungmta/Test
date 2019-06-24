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
        <title>My Bills</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
		<div class="container shopping-cart">
			<div class="row">
                            <c:set var = "i" scope = "session" value = "${0}"/>
                           
                            <c:if test="${i >= 0 }">
                                <div class="col-md-12">
					<h3 class="title">
						Chi tiết Đơn hàng
					</h3>
					<div class="clearfix">
					</div>
					<table class="shop-table">
						<thead>
							<tr>
								<th>
									Số TT
								</th>
                                                                <th>
									Trình trạng đơn hàng
								</th>
								<th>
									Mã Đơn hàng
								</th>
								<th>
									Tổng giá 
								</th>
								<th>
									Ngày đặt
								</th>
								
							</tr>
						</thead>
					
                                              
						
                                                    <c:forEach var="item" items="${listBill}" varStatus="status" >
						
								
								<tr>
									<td>
                                                                            <div>${status.index+1}</div>
										
									</td>
                                                                        <td>
                                                                             <div class="shop-details">
											<div class="productname">
                                                                                            ${item.status}
											
											</div>

										
										</div>
										
									</td>
									<td>
                                                                           <div class="productname">
                                                                                            ${item.id}
											
											</div>
										
									</td>
									<td>
										<h5>
											<strong class="red">
												${item.totalPrice} VNĐ
											</strong>
										</h5>
									</td>
									<td>
										<div class="shop-details">
											<div class="productname">
                                                                                            ${item.date}
											
											</div>

										
										</div>
									</td>
									
								</tr>
							
                                                        </c:forEach>
						
					
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
