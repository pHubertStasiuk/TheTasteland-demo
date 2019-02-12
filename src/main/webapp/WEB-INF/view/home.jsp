<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>The TasteLand</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/static/css/other/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/static/css/other/styles.css">
    <link rel="stylesheet" type="text/css"
          href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>

<body>
<section class="hero">
    <section class="navigation">
        <header>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-7 navbar-brand"><a href="#"><img
                        src="${pageContext.request.contextPath}/resources/static/img/other/sedna-logo.png"
                        alt="Sedna logo"></a></div>
                <div class="col-sm-5 col-sm-offset"></div>
                <div class="header-nav">
                    <nav>
                        <ul class="primary-nav">
                            <li><a href="#features">FEATURES</a></li>
                            <li><a href="${pageContext.request.contextPath}/recipe/showFavouriteRecipes">HOW-TO</a></li>
                            <li><a href="${pageContext.request.contextPath}/recipe/showCard">FOOD NEWS</a></li>
                            <form:form action="${pageContext.request.contextPath}/logout"
                                       method="POST">

                                <input type="submit" value="Logout" />

                            </form:form>
                        </ul>
                        <div class="hero-content">
                            <ul class="member-actions">
                                <li><a href="${pageContext.request.contextPath}/showMyLoginPage" class="login">Log
                                    in</a></li>
                                <li><a href="${pageContext.request.contextPath}/register/showRegistrationForm"
                                       class="btn-white btn-small">Sign up</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            </div>
            <div class="container">
                <div class="col-sm-offset-5">
                    <div class="hero-content text-center">
                        <h1>Welcome to the TasteLand!</h1>

                        <p>
                            User: <security:authentication property="principal.username" />
                            <br><br>
                            Role(s): <security:authentication property="principal.authorities" />
                            <br><br>
                            First name: ${user.firstName}, Last name: ${user.lastName}, Email: ${user.email}
                        </p>


                        <security:authorize access="hasRole('EMPLOYEE')">

                            <!-- Add a link to point to /systems ... this is for the admins -->

                            <p>
                                <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
                                (Only for Admin peeps)
                            </p>

                        </security:authorize>

                        <security:authorize access="hasRole('MANAGER')">

                            <!-- Add a link to point to /leaders ... this is for the managers -->

                            <p>
                                <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
                                (Only for Manager peeps)
                            </p>

                        </security:authorize>



                        <hr>
                        <a href="${pageContext.request.contextPath}/recipe/favourite"
                           class="btn btn-fill btn-large btn-margin-right">Get started</a>
                        <a href="#" class="btn btn-accent btn-large">Learn more</a>
                    </div>
                    <a href="${pageContext.request.contextPath}/showMyLoginPage">
                        <div class="down-arrow floating-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                </div>
            </div>
        </header>
    </section>

</section>
</body>
</html>










