<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>The TasteLand - Login form</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/other/style.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/font-awesome.css" rel="stylesheet">
</head>
<body>

<form class="form">
    <div class=" w3l-login-form">
        <h2>TasteLand</h2>
        <form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" class="form">
            <div class=" w3l-form-group">
                <label>Username:</label>
                <div class="group">
                    <i class="fa fa-user"></i>
                    <input type="text" class="form-control" placeholder="Username" required="required"/>
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fa fa-unlock"></i>
                    <input type="password" class="form-control" placeholder="Password" required="required"/>
                </div>
            </div>
            <div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox">Remember Me</p>
            </div>
            <div>
                <button type="submit">Login</button>
            </div>
        </form>
        <p class=" w3l-register-p">Don't have an account?<a
                href="${pageContext.request.contextPath}/register/showRegistrationForm" aria-pressed="true"
                class="register"> Register</a></p>
    </div>
</form>
    <footer>
        <p class="copyright-agileinfo"> &copy; 2018 Material Login Form. All Rights Reserved | Design by <a
                href="http://w3layouts.com">W3layouts</a></p>
    </footer>

</body>

</html>