<%-- 
    Document   : Login
    Created on : Jun 23, 2019, 11:18:43 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VN Shop</title>
         <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </head>

    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        
      <div class="container_fullwidth">
			<div class="container">
				<div class="row">
				

					<div class="col-md-9">
						<div class="checkout-page">
							<ol class="checkout-steps">
								<li class="steps active">
									<a href="${pageContext.request.contextPath}/Account/Login.html" class="step-title">
										01. Đăng nhập
									</a>
									<div class="step-description">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<div class="new-customer">
													<h5>
														Khách hàng mới
													</h5>
													<label>
														<span class="input-radio">
															<input type="radio" name="user">
														</span>
														<span class="text">
															Tôi muốn đăng ký để nhận thông tin cập nhật và đơn hàng
														</span>
													</label>
													<p class="requir">
														Bằng cách tạo một tài khoản, bạn sẽ được cập nhật về trạng thái của đơn đặt hàng và theo dõi các đơn đặt hàng bạn đã thực hiện trước đây.
													</p>
													<p class="requir">
														Bấm vào phần 02 để đăng ký tài khoản.
													</p>
	
												</div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="run-customer">
													<h5>
														Đăng nhập tài khoản
													</h5>
                                                                                                    
                                                                                                
													<form:form method="post" action="Login.html" modelAttribute="account">
														<div class="form-row">
															<label path ="username" class="lebel-abs">
																Tài khoản
																<strong class="red">
																	*
																</strong>
															</label>
															<input type="text" class="input namefild"  path ="username" name="username">
														</div>

														<div class="form-row">
															<label path ="password" class="lebel-abs">
																Mật khẩu
																<strong class="red">
																	*
																</strong>
															</label>
															<input type="password" class="input namefild"  path ="password" name="password" >
														</div>
														<p class="forgoten" style="color:red ; font-size: 16px">
															${ERRORLogin}
														</p>
														<button type="submit">
															Đăng nhập
														</button>
                                                                                                        </form:form>
													
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="steps">
									<a href="${pageContext.request.contextPath}/Account/Register.html" class="step-title">
										02. Đăng ký tài khoản
									</a>
								</li>
							</ol>
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


		