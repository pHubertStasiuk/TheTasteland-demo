<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

    <title>Add new recipe</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Reference Bootstrap files -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .error {color:red}
    </style>

</head>

<body>

<div>

    <div id="loginbox" style="margin-top: 50px;"
         class="mainbox col-md-3 col-md-offset-4 col-sm-6 col-sm-offset-2">

        <div class="panel panel-primary">

            <div class="panel-heading">
                <div class="panel-title">Add new recipe</div>
            </div>

            <div style="padding-top: 30px" class="panel-body">

                <!-- Registration Form -->
                <form:form action="${pageContext.request.contextPath}/recipe/processRecipeForm"
                           modelAttribute="recipe"
                           class="form-horizontal">

                    <!-- Place for messages: error, alert etc ... -->
                    <div class="form-group">
                        <div class="col-xs-15">
                            <div>

                                <!-- Check for registration error -->
                                <c:if test="${registrationError != null}">

                                    <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                            ${registrationError}
                                    </div>

                                </c:if>

                            </div>
                        </div>
                    </div>

                    <!-- User name -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:errors path="recipeName" cssClass="error" />
                        <form:input path="recipeName" placeholder="Recipe Name (*)" class="form-control" />
                    </div>

                    <!-- Password -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <form:errors path="recipeDescription" cssClass="error" />
                        <form:textarea path="recipeDescription" placeholder="Description (*)" class="form-control" />
                    </div>

                    <!-- Confirm Password -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <form:errors path="cookingTime" cssClass="error" />
                        <form:input path="cookingTime" placeholder="Cooking Time (*)" class="form-control" />
                    </div>



                    <!-- Last name -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:errors path="preparationTime" cssClass="error" />
                        <form:input path="preparationTime" placeholder="Preparation Time (*)" class="form-control" />
                    </div>
                    <!-- First name -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:errors path="foodCategory" cssClass="error" />
                        <form:input path="foodCategory" placeholder="Category (*)" class="form-control" />
                    </div>

                    <!-- Email -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:errors path="recipeAuthor" cssClass="error" />
                        <form:label path="recipeAuthor" placeholder="${userName}" class="form-control" />
                    </div>

                    <!-- Register Button -->
                    <div style="margin-top: 10px" class="form-group">
                        <div class="col-sm-6 controls">
                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>
                    </div>

                </form:form>

            </div>

        </div>

    </div>

</div>

</body>
</html>