<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/lg_header.jsp"></jsp:include>
    <!-- Body -->
    <body>
        <h1>Welcome To My Bookstore</h1>
        <div class="w3layoutscontaineragileits">
            <h2>Sign UP</h2>
            <form action="signup" method="post">
                <p class="text-danger">${tb} ${noti}</p>
            <br/>
            <div class="form-sub-w3ls">
                <input placeholder="Your Name"  name="hoten" type="text" required="">
                <div class="icon-agile">
                    <i class="fa fa-user" aria-hidden="true"></i>
                </div>
            </div>
            <div class="form-sub-w3ls">
                <input placeholder="User Name"  name="taikhoan" type="text" required="">
                <div class="icon-agile">
                    <i class="fa fa-user" aria-hidden="true"></i>
                </div>
            </div> 
            <div class="form-sub-w3ls">
                <input placeholder="Password" name="matkhau"  type="password" required="">
                <div class="icon-agile">
                    <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                </div>
            </div>
            <div class="form-sub-w3ls">
                <input placeholder="Confirm Password" name="nhaplaimatkhau" type="password" required="">
                <div class="icon-agile">
                    <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                </div>
            </div>
            <div class="form-sub-w3ls">
                <input placeholder="Email" name="email"  type="email" required="">
                <div class="icon-agile">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                </div>
            </div>
            <div class="form-sub-w3ls">
                <input placeholder="Address" name="diachi" type="string" required="">
                <div class="icon-agile">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                </div>
            </div>
            <div class="form-sub-w3ls">
                <label class="radiobutton"><input id="radnam" value="1" name ="gender" type="radio">Nam</label>
                <label class="radiobutton"><input id="radnu" value="0" type="radio">Nữ</label>
            </div>
            <div class="form-sub-w3ls">
                <input placeholder="Phone Number" name="dienthoai"type="number" required="">
                <div class="icon-agile">
                    <i class="fa fa-align-left"></i>
                </div>
            </div>                       
            <div class="login-check">
                <label class="checkbox"><input type="checkbox" name="checkbox" checked="">I Accept Terms & Conditions</label>
            </div>
            <div class="submit-w3l">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
    <jsp:include page="common/lg_footer.jsp"></jsp:include>