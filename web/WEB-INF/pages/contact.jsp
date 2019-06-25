<%-- 
    Document   : contact
    Created on : Jun 25, 2019, 10:03:13 AM
    Author     : MINAT0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h5 class="title contact-title">
							Liên hệ
						</h5>
						<div class="clearfix">
						</div>
						<div class="map">
							<iframe width="600" height="350" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Vietnam&amp;aq=&amp;sll=14.058324,108.277199&amp;sspn=21.827722,43.286133&amp;ie=UTF8&amp;hq=&amp;hnear=Vietnam&amp;ll=14.058324,108.277199&amp;spn=8.883583,21.643066&amp;t=m&amp;z=6&amp;output=embed"></iframe>
						</div>
						<div class="clearfix">
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="contact-infoormation">
									<h5>
										Thông tin liên hệ
									</h5>
									<p>
										Prokennex shop- Shop cầu lông. Chuyên cung cấp các phụ kiện cầu lông chính hãng, giá cạnh tranh, giao hàng tận nơi. Mọi chi tiết xin vui lòng liên hệ:
									</p>
									<ul>
										<li>
											<span class="icon">
												<img src="${pageContext.request.contextPath}/resources/images/message.png" alt="">
											</span>
											<p>
												cnttc151@gmail.com
												<br>
												bocon555@gmail.com
											</p>
										</li>
										<li>
											<span class="icon">
												<img src="${pageContext.request.contextPath}/resources/images/phone.png" alt="">
											</span>
											<p>
												0983481417
												<br>
												0366445061
											</p>
										</li>
										<li>
											<span class="icon">
												<img src="${pageContext.request.contextPath}/resources/images/address.png" alt="">
											</span>
											<p>
												236, Hoàng Quốc Việt, Cầu Giấy
												<br>
												Hà Nội, Việt Nam
											</p>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md-8">
								<div class="ContactForm">
									<h5>
										Mẫu liên hệ
									</h5>
									<form>
										<div class="row">
											<div class="col-md-6">
												<label>
													Họ và tên
													<strong class="red">
														*
													</strong>
												</label>
												<input class="inputfild" type="text" name="">
											</div>
											<div class="col-md-6">
												<label>
													Email của bạn
													<strong class="red">
														*
													</strong>
												</label>
												<input class="inputfild" type="email" name="">
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<label>
													Tin nhắn của bạn
													<strong class="red">
														*
													</strong>
												</label>
												<textarea class="inputfild" rows="8" name=""></textarea>
											</div>
										</div>
										<button class="pull-right">
											Gửi tin nhắn
										</button>
									</form>
								</div>
							</div>
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
