<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lid Authenticated Users</title>
    <#include "inc/head.ftl">
</head>

<body class="cilogi-info">
<#include "inc/navbar.ftl">
<div class="container" style="margin-top:10px; font-size:15px;">
    <div style="padding: 0.25em" class="cilogi-title">
        <h1 class="cilogi-title">Authenticate Users only Page</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <p id="loginStatus">Acquiring Login Status...</p>

            <div id="loggedIn">
                <p>You have to be logged in to see this page.  If not you'll be redirected to the login page</p>
                <p><a class="btn btn-primary" href="/logout">Logout</a></p>
            </div>

            <div id="loggedOut" style="display:none">
                <p>This should not be possible!</p>
            </div>
        </div>
    </section>
</div>

<#include "inc/foot.ftl">
</body>
</html>