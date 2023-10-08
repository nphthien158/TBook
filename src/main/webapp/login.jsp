    <%-- 
    Document   : login
    Created on : Sep 13, 2023, 1:48:29 AM
    Author     : Acer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="common/lg_header.jsp"></jsp:include>
<!-- Body -->
<body>
        <h1>WELCOME TO BOOKSTORE</h1>
        <div class="w3layoutscontaineragileits">
            <h2>Login</h2>
            <form action="login" method="post">
                <p class="text-danger">${mess}</p>
                <br/>
                <input type="text" Name="taikhoan" placeholder="USERNAME" required="">
                <input type="password" Name="matkhau" placeholder="PASSWORD" required="">
                <ul class="agileinfotickwthree">
                    <li>
                        <input type="checkbox" id="brand1" value="">
                        <label for="brand1"><span></span>Remember me</label>
                        <a class="w3_play_icon1" href="#small-dialog2">Forgot password?</a>
                    </li>
                </ul>
                <div class="aitssendbuttonw3ls">
                    <input type="submit" name="btnlogin" value="LOGIN">
                    <p> To register new account <span>-></span> <a class="" href="signup.jsp"> Click Here</a></p>
                    <div class="clear"></div>
                </div>
            </form>
        </div>

        <!-- for register popup -->
     
           <div id="small-dialog2" class="mfp-hide">
            <div class="contact-form1">
                <div class="container contact-w3-agileits">
                    <h3>FORGOT PASSWORD</h3>
                    <form action="#" method="post">
                        <div class="form-sub-w3ls">
                            <input placeholder="User Name"  type="text" required="">
                            <div class="icon-agile">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="form-sub-w3ls">
                            <input placeholder="Email" class="mail" type="email" required="">
                            <div class="icon-agile">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="submit-w3l">
                            <input type="submit" value="Send">
                        </div>
                    </form>
                </div>
            </div>	
        </div>
        <jsp:include page="common/lg_footer.jsp"></jsp:include>
