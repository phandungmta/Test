
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
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
                            <div class="wided">
                                       <div class="qty">
                                                    <span style="font-size: 20px">Số lượng &nbsp;&nbsp;: </span>
                                                    <input type="hidden" name="productId" value="@Model.ID" />
                                                    <input id="qty"  type="number" title="Qty" value="1" min="1" max="5" name="quantity">
                                            </div>
                                            <div class="button_group">
                                                    <button class="btn btn-success" type="submit" onclick="document.getElementById('form-add_to_cart').submit()">
                                                            Add To Cart
                                                    </button>
                                            </div>
                                    

                            </div>
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
