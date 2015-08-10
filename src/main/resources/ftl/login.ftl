<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lid Demo Login</title>
    <#include "inc/head.ftl">
</head>
<body>
<h1>Login</h1>

<div id="loggedIn">
    <p>You are logged in!</p>
    <p><a href="/index.html">Home</a></p>
</div>

<div id="loggedOut" style="display:none">
    <form  id="loginByEmail" class="login-form" method="POST" action="/login/email">
        <div>
            <button type="submit">Login by Email</button>
            <label for="email">Email</label>
            <input type="text" name="email" id="email">
            <span id="emailResponse"></span>
        </div>
    </form>
    <form class="login-form" method="POST" action="/login/google">
        <div>
            <button type="submit" id="googleLogin">Google Login</button>
        </div>
    </form>
    <form class="login-form" method="POST" action="/login/facebook">
        <div>
            <button type="submit">Facebook Login</button>
        </div>
    </form>
</div>
<#include "inc/foot.ftl">
</body>
</html>