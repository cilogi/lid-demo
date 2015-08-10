<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Lid Demo</title>
<#include "inc/head.ftl">
</head>
<body class="cilogi-info">
<#include "inc/navbar.ftl">
<div class="container" style="margin-top:10px; font-size:15px;">
    <div style="padding: 0.25em" class="cilogi-title">
        <h1 class="cilogi-title">Home Page</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <p id="loginStatus">Acquiring Login Status...</p>

            <div id="loggedIn" style="display:none">
                <form id="logoutForm" method="POST" action="/logout">
                    <button class="btn btn-primary" type="submit">Logout</button>
                </form>
            </div>

            <div style="margin-top:10px;">
                <p>The link below, is to a file you can only access when you're logged in.</p>
                <a class="btn btn-default" href="auth.ftl">Only for Authenticated users</a>
            </div>

            <div id="loggedOut" style="margin-top: 10px; display:none">
                <a class="btn btn-primary" href="/login.html">Login</a>
            </div>
        </div>
    </section>
</div>
<!-- container -->
<#include "inc/foot.ftl">
</body>
</html>