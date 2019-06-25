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
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <title>Cart</title>
    </head>
    <body>
           <script type="text/javascript">
    function validateForm()
    {
        
        var fullname=document.forms["formRegister"]["fullname"].value;
    
        var phoneNumber=document.forms["formRegister"]["phoneNumber"].value;
        var email=document.forms["formRegister"]["email"].value;
        var address=document.forms["formRegister"]["address"].value;
   
        if ( fullname==null || fullname=="",phoneNumber==null || phoneNumber=="",email==null || email=="",address==null || address=="")
        {
            alert("Please Fill All Required Field");
            return false;
        }
        
    }
    </script>
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

                                         <form:form method="POST" modelAttribute="userForm"  action="${pageContext.request.contextPath}/cart/checkout.html" name="formRegister" onsubmit="return validateForm()">
                                             <label path="fullname">
                                                        Họ và tên
                                                </label>
                                             <form:input  type="text"  path="fullname" />
                                                <label>
                                                        Địa chỉ
                                                </label>
                                                <form:input type="text" path="address"/>
                                                <label>
                                                        Email
                                                </label>
                                                <form:input type="email"  path="email"/>
                                                <label>
                                                        Số điện thoại
                                                </label>
                                                    <form:input  type="text"  path="phonenumber"/>
                                                <div class="clearfix">
                                                </div>
                                                <form:input type="hidden" value="${sessionScope.myCartTotal}" name="total" path="totalPrice" />
                                           

                                </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                                <div class="shippingbox">
                                        <h5>
                                                Đặt hàng với tài khoản của bạn
                                        </h5>
                                        
                                                <label>
                                                        <span style="font-size: 14px ">Bạn chưa đăng nhập, vui lòng <a href="${pageContext.request.contextPath}/Account/Login.html" style="color:blue" class="log">đăng nhập</a> tại đây!</span>
                                                </label>
                                                <label>
                                                        <span style="font-size: 14px ">Nếu chưa có tài khoản, hãy <a href="${pageContext.request.contextPath}/Account/Register.html" style="color:blue" class="log">đăng ký</a> tại đây!</span>
                                                </label>
                                                <div class="clearfix">
                                                </div>
                                        


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
                                                <button class="btn btn-success" type="submit" onsubmit="return validateForm()" onclick="return validateForm()">Tiến hành đặt hàng</button>
                                </div>
                        </div>
                        </div>
           </form:form>
      
                            
                                                
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

                                            <input type="hidden" value="@total" name="total" />
                                            <a href="${pageContext.request.contextPath}/cart/checkout1.html"> <button class="btn btn-success" type="submit"  "  >Tiến hành đặt hàng</button></a>
                                            


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
