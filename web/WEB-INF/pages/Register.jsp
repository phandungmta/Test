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
        <script type="text/javascript">
    function validateForm()
    {
        var username=document.forms["formRegister"]["username"].value;
        var password=document.forms["formRegister"]["password"].value;
        var fullname=document.forms["formRegister"]["fullname"].value;
        var birthday=document.forms["formRegister"]["birthday"].value;
        var phoneNumber=document.forms["formRegister"]["phoneNumber"].value;
        var email=document.forms["formRegister"]["email"].value;
        var address=document.forms["formRegister"]["address"].value;
   
        if (username==null || username=="",fullname==null || fullname=="",birthday==null || birthday=="",phoneNumber==null || phoneNumber=="",email==null || email=="",password==null || password=="",address==null || address=="")
        {
            alert("Please Fill All Required Field");
            return false;
        }
    }
    function isValidDate()
{
    var dateString = document.forms["formRegister"]["birthday"].value;
    var check = true;
    // First check for the pattern
    if(!/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(dateString))
        check= false;

    // Parse the date parts to integers
    var parts = dateString.split("/");
    var day = parseInt(parts[1], 10);
    var month = parseInt(parts[0], 10);
    var year = parseInt(parts[2], 10);

    // Check the ranges of month and year
    if(year < 1000 || year > 3000 || month == 0 || month > 12)
        check= false;

    var monthLength = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

    // Adjust for leap years
    if(year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
        monthLength[1] = 29;

    // Check the range of the day
    check=( day > 0 && day <= monthLength[month - 1]);
    if(!check)  alert("Nhập ngày sinh theo định dạng MM/dd/yyy");
};
</script>
        
        
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
							<a href="${pageContext.request.contextPath}/Account/Register.html" class="step-title">
								02. Đăng ký tài khoản
							</a>
							
								
                                                        <form:form method="POST" modelAttribute="userForm"  action="${pageContext.request.contextPath}/Account/Register.html" name="formRegister" onsubmit="return validateForm()">
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
                                                                                                 
                                                                                                        <label path="birthday" class="lebel-abs">
														Ngày sinh
														<strong class="red">
															*
														</strong>
													</label>
                                                                                                  
                                                                                                    
                                                                                    
                                                                                                
                                                                                                    <td><form:input path="birthday" name="timestamp" class="input namefild" value="" onblur="isValidDate()"/>
                                                                                                         
    </td>
                                                                                                      
                                                                                                 
                                                                                                
                                                                                                    
													
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
                                                                                                        <div class="alert alert-error alert-dismissable">
														<button type="button" class="close" data-dismiss="alert">×</button>	
														<span style="font-size:16px;color:red">
                                                                                                                    ${messagerRegister}
														</span>
													</div>
												
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
