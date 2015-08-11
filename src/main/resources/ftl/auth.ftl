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
        <h1 class="cilogi-title">Authenticated Users only</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <p id="loginStatus">Acquiring Sign-in Status...</p>

            <div class="loggedIn">
                <p>You have to be signed in to see this page.  If not you should be redirected to the sign-in page</p>
                <p><a class="btn btn-primary" href="/logout">Sign out</a></p>
            </div>

            <div class="loggedOut" style="display:none">
                <p color="red">This should not be possible!</p>
            </div>
        </div>
    </section>
</div>

<#include "inc/foot.ftl">
</body>
</html>