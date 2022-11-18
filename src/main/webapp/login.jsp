<%--
  Created by IntelliJ IDEA.
  User: Hasika
  Date: 11/14/2022
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="styles/login.css">

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>
<body>
<%--header--%>
<jsp:include page="MainHader.jsp"/>
<%--header--%>
<div class="outer-login">
    <div class="login-inner">
        <div class="box left-box">
            <div class="details-outer">
                <h3 class="title-data">Welcome Back</h3>

                <form action="#" style="width: 100%">
                    <div class="row" style="margin: 0">
                        <div class="col-12">
                            <input type="text" id="email" class="form-control" placeholder="email">
                        </div>
                        <div class="col-12">
                            <input type="password" id="password" class="form-control" placeholder="password">
                        </div>
                        <div class="col-12">
                            <input type="button" onclick="login()" value="Login" class="btn btn-primary"
                                   style="width: 100%">
                        </div>
                        <div class="col-12">
                            <hr>
                        </div>
                        <div class="col-12">
                            <input type="button" onclick="navigateToSignup()" value="Create an Account"
                                   class="btn btn-dark" style="width: 100%">
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <div class="box right-box">

        </div>
    </div>
</div>

<%--footer--%>
<jsp:include page="MainFooter.jsp"/>
<%--footer--%>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="js/login.js"></script>
<script type="application/javascript">
    function isLoggedIn() {
        if (localStorage.getItem('token')) {
            window.location.replace('/dashboard.jsp');
        }
    }

    isLoggedIn();

    function login() {
        let user = {
            email: $('#email').val(),
            password: $('#password').val()
        }
        $.ajax({
            url: 'http://localhost:8000/user?type=login',
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            data: JSON.stringify(user),
            success: function (response) {
                console.log(response);
                if (response.code === 200) {
                    alert(response.message);
                    localStorage.setItem('token', response.data.token);
                    window.location.replace('/dashboard.jsp');
                } else {
                    alert(response.message);
                }
            },
            error: (error) => {
                console.log(error);
            }
        })

    }
</script>
</html>
