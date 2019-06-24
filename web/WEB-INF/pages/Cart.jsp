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
                                                        <img style="width: 88px ; height: 130px" src="${pageContext.request.contextPath}/resources${map.value.product.img}" alt="">
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
                                                        <input type="number" name="textfield" id="textfield" data-id="${map.value.product.id}" value="${map.value.quantity}" min="1" max="5" class="quantity" >
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
                                                                <img src="${pageContext.request.contextPath}/resources/images/remove.png" alt="">
                                                        </a>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                    <tfoot>
                                            <tr>
                                                    <td colspan="6">
                                                            <a href="${pageContext.request.contextPath}/home.html" class="btn btn-danger pull-left">Tiếp tục mua hàng</a>
                                                            <button id="btnDeleteAll" class=" pull-right" style="margin-left:25px">
                                                                    <a href="${pageContext.request.contextPath}/cart/deleteallcart.html" class=" pull-left">Xóa giỏ hàng</a>
                                                            </button>
                                                    </td>
                                            </tr>
                                    </tfoot>
                                </table>

                                <div class="clearfix">
                                </div>
                        <c:set var = "j" scope = "session" value = "${sessionScope.id}"/>
                        <c:if test = "${j == 0}">
    <!--						using (Html.BeginForm("Payment", "Test", FormMethod.Post))
                                        {-->
                            <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                            <div class="shippingbox">
                                        <h5>
                                                Đặt hàng không cần tài khoản
                                        </h5>
                                        <h5>
                                                <span style="font-size: 16px ; color: red">Vui lòng điền đầy đủ thông tin dưới đây !</span>
                                        </h5>

                                        <form>
                                                <label>
                                                        Họ và tên
                                                </label>
                                                <input name="shipName" type="text" required>
                                                <label>
                                                        Địa chỉ
                                                </label>
                                                <input type="text" name="shipAddress" required>
                                                <label>
                                                        Email
                                                </label>
                                                <input name="shipEmail" type="email" required>
                                                <label>
                                                        Số điện thoại
                                                </label>
                                                <input name="shipPhone" type="text" required>
                                                <div class="clearfix">
                                                </div>
                                                <input type="hidden" value="@total" name="total" />
                                        </form>

                                </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                                <div class="shippingbox">
                                        <h5>
                                                Đặt hàng với tài khoản của bạn
                                        </h5>
                                        <form>
                                                <label>
                                                        <span style="font-size: 14px ">Bạn chưa đăng nhập, vui lòng <a href="${pageContext.request.contextPath}/Account/Login.html" style="color:blue" class="log">đăng nhập</a> tại đây!</span>
                                                </label>
                                                <label>
                                                        <span style="font-size: 14px ">Nếu chưa có tài khoản, hãy <a href="${pageContext.request.contextPath}/Account/Register.html" style="color:blue" class="log">đăng ký</a> tại đây!</span>
                                                </label>
                                                <div class="clearfix">
                                                </div>

                                        </form>
                                </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                                <div class="shippingbox">

                                        <div class="grandtotal">
                                                <h5>
                                                        Tổng số tiền
                                                </h5>
                                                <span style="font-size: 18px">
                                                    ${sessionScope.myCartTotal} VNĐ
                                                </span>
                                        </div>
                                        <button class="btn btn-success" type="submit">Tiến hành đặt hàng</button>
                                </div>
                        </div>
                        </div>
                                                
                        </c:if>
                        <c:if test = "${j != 0}">

                        <div class="row">
                            <div class="col-md-4 col-sm-6" style="margin-left:700px">
                                <div class="shippingbox" >

                                    <div class="grandtotal">
                                            <h5>
                                                    Tổng số tiền
                                            </h5>
                                            <span style="font-size: 18px">
                                                ${sessionScope.myCartTotal} VNĐ
                                            </span>
                                    </div>
<!--									@using (Html.BeginForm("PaymentUserLogin", "Test", FormMethod.Post,null ))
                                    {-->
                                            <input type="hidden" value="@total" name="total" />
                                            <button class="btn btn-success" type="submit">Tiến hành đặt hàng</button>


                                </div>
                            </div>
                        </div>
                        </c:if>
                        </div>
                        </c:if>
                        <c:if test="${i ==0 }"> 
                            <div class="alert alert-error alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <h3>Rỗng</h3>
                                    Chưa có sản phẩm nào trong giỏ hàng!
                            </div>

                        </c:if>
			</div>
            </div>
                    
        </div>
	
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
