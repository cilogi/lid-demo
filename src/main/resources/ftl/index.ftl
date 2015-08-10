<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lid Demo Home</title>
    <#include "inc/head.ftl">
</head>
<body>
<h1>Home Page</h1>

<p id="loginStatus">Acquiring Login Status...</p>

<div id="loggedIn" style="display:none">
    <form id="logoutForm" method="POST" action="/logout">
        <button type="submit">Logout</button>
    </form>
</div>

<div>
    <p>The link below, is to a file you can only access when you're logged in.</p>
    <a href="auth.ftl">Only for Authenticated users</a>
</div>

<div id="loggedOut" style="display:none">
    <a href="/login.html">Login</a>
</div>
<#include "inc/foot.ftl">
</body>
</html>