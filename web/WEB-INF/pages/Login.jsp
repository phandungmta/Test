<%-- 
    Document   : Login
    Created on : Jun 23, 2019, 11:18:43 PM
    Author     : PC
--%>
		
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VN Shop</title>
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
									<a href="${pageContext.request.contextPath}/Acoount/Login.html" class="step-title">
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
                                                                                                    
                                                                                                
													<form method="post" action="Login.html" >
														<div class="form-row">
															<label class="lebel-abs">
																Tài khoản
																<strong class="red">
																	*
																</strong>
															</label>
															<input type="text" class="input namefild" name="username" required="true">
														</div>

														<div class="form-row">
															<label class="lebel-abs">
																Mật khẩu
																<strong class="red">
																	*
																</strong>
															</label>
															<input type="password" class="input namefild" name="password" required="true">
														</div>
														<p class="forgoten" style="color:red ; font-size: 16px">
															${ERRORLogin}
														</p>
														<button type="submit">
															Đăng nhập
														</button>
													</form>
													
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="steps">
									<a href="/Test/checkout2" class="step-title">
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


		