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
                            <li><a href="${pageContext.request.contextPath}/home">FEATURES</a></li>
                            <li><a href="#assets">HOW-TO</a></li>
                            <li><a href="#blog">FOOD NEWS</a></li>
                            <li><a href="${pageContext.request.contextPath}/recipe/showRecipeForm">Recipe</a></li>
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
                        <p class="intro">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut
                            aliquip ex ea commodo consequat..</p>
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
