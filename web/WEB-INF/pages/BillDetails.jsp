<%-- 
    Document   : BillDetails
    Created on : Jun 25, 2019, 11:10:32 AM
    Author     : MINAT0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <title>Bill Details</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
            <div class="container shopping-cart">
		<div class="row">                  
                        <div class="col-md-12">
                        <h3 class="title">
                                Chi tiết đơn hàng
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
                                    
                                </tr>
                            </thead>


                                <tbody>
                                    <c:forEach var="item" items="${listDetails}">


                                        <tr>
                                                <td>
                                                        <img style="width: 88px ; height: 130px" src="${pageContext.request.contextPath}/resources${item.product.img}" alt="">
                                                </td>
                                                <td>
                                                        <div class="shop-details">
                                                                <div class="productname">
                                                                        ${item.product.name}
                                                                </div>


                                                        </div>
                                                </td>
                                                <td>
                                                        <h5>
                                                                <strong class="red">
                                                                        ${item.product.price} VNĐ
                                                                </strong>
                                                        </h5>
                                                </td>
                                                <td>
                                                        <h5>
                                                                <strong class="blue">
                                                                        ${item.amount} 
                                                                </strong>
                                                        </h5>
                                                   
                                                </td>
                                                <td>
                                                        <h5>
                                                                <strong class="red">
                                                                        ${item.price} VNĐ
                                                                </strong>
                                                        </h5>
                                                </td>
                                                
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                   
                                </table>

                                <div class="clearfix">
                                </div>
                        
			</div>
                </div>
            </div>
                    
        </div>
	
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
