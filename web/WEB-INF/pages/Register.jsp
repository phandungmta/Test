<%-- 
    Document   : Register
    Created on : Jun 24, 2019, 2:14:43 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container_fullwidth">
	<div class="container">
		<div class="row">
			
			<div class="col-md-9">
				<div class="checkout-page">
					<ol class="checkout-steps">
						<li class="steps">
							<a href="${pageContext.request.contextPath}/Account/Login.html" class="step-title">
								01. Đăng nhập
							</a>
						</li>
						<li class="steps active">
							<a href="${pageContext.request.contextPath}/Account/register.html" class="step-title">
								02. Đăng ký tài khoản
							</a>
							
								
                                                        <form:form method="POST" modelAttribute="userForm"  action="register.html">
                                                            <div class="row">
										
										<div class="col-md-6 col-sm-6">
											<div class="your-details">
												<h5>
													Thông tin chi tiết của bạn
												</h5>
                                                                                            <br>
												<div class="form-row">
                                                                                                    <form:label class="lebel-abs" path="fullname">
														Họ và tên
														<strong class="red">
															*
														</strong>
                                                                                                    </form:label>
                                                                                                        <form:input type="text" path="fullname" class="input namefild" />
                                                                                                            
                                                                                                        
													
												</div>
												<div class="form-row">
                                                                                                    <div class="col-md-2">
                                                                                                        <label path="birthday">
														Ngày sinh
														<strong class="red">
															*
														</strong>
													</label>
                                                                                                    </div>
                                                                                                    
                                                                                                    <div class="col-md-10">
                                                                                                        <form:input type="date" path="birthday" class="col-md-10" />
                                                                                                    </div>
                                                                                                
                                                                                                    
													
												</div>
												<div class="form-row">
                                                                                                    <div class="col-md-2">
                                                                                                        <form:label class="lebel-abs" path="sex" >
                                                                                                            
														Giới tính
														<strong class="red">
															*
														</strong>
													</form:label>
                                                                                                    </div>
                                                                                                    <div class="col-md-10">
                                                                                                        <form:select path="sex" class="col-md-12" >
                                                                                                            <option value="Nam">Nam</option>
                                                                                                            <option value="Nữ">Nữ</option>   
                                                                                                        </form:select>
                                                                                                    </div>
                                                                                                
													
												</div>
												<div class="form-row">
                                                                                                <form:label class="lebel-abs" path="phoneNumber">
														Điện thoại
														<strong class="red">
															*
														</strong>
													</form:label>
													   <form:input type="text" path="phoneNumber" class="input namefild" />
												</div>
												<div class="form-row">
                                                                                                <form:label class="lebel-abs" path="email">
														Email
														<strong class="red">
															*
														</strong>
													</form:label>
													<form:input type="text" path="email" class="input namefild" />
												</div>
												<div class="pass-wrap">
													<div class="form-row">
                                                                                                        <form:label class="lebel-abs" path="address">
															Địa chỉ
															<strong class="red">
																*
															</strong>
														</form:label>
                                                                                                                <form:input type="text" path="address" class="input namefild"/>
													</div>
												</div>										
											</div>
										</div>
										<div class="col-md-6 col-sm-6">
											<div class="your-details">
												<h5>
													Tài khoản
												</h5>
                                                                                            <br>
												<div class="form-row">
													<form:label class="lebel-abs" path="username">
														User name
														<strong class="red">
															*
														</strong>
													</form:label>
													<form:input type="text" path="username" class="input namefild" />
													
												</div>
												<div class="form-row">
                                                                                                <form:label class="lebel-abs" path="password">
														Password
														<strong class="red">
															*
														</strong>
                                                                                                </form:label>
													<form:input type="password" path="password" class="input namefild" /> 
													
												</div>											
												
												<form:button type="submit">
													Đăng ký
												</form:button>
												
											</div>
										</div>
									</div>
                                                        </form:form>
                                                                
                                                            
									
								
							
						</li>
						
					</ol>
				</div>
			</div>
		</div>
		<div class="clearfix">
		</div>
	</div>
    
</div>
<jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
