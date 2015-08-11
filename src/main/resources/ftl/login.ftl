<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lid Demo Login</title>
<#include "inc/head.ftl">
</head>
<body class="cilogi-info">
<#include "inc/navbar.ftl">
<div class="container" style="margin-top:10px; font-size:15px;">
    <div style="padding: 0.25em" class="cilogi-title">
        <h1 class="cilogi-title">Login</h1>
    </div>
    <hr class="soften">
    <section>
        <div class="row">
            <div id="loggedIn" style="display:none">
                <p>You are logged in!</p>

                <p><a class="btn btn-default" href="/index.html">Home</a></p>
            </div>

            <div id="loggedOut" style="display:none">
                <form class="login-form" method="POST" action="/login/google">
                    <div>
                        <button type="submit" class="btn btn-block btn-social btn-google">
                            <i class="fa fa-google"></i> Sign in with Google
                        </button>
                    </div>
                </form>
                <form class="login-form" method="POST" action="/login/facebook">
                    <div>
                        <button type="submit" class="btn btn-block btn-social btn-facebook">
                            <i class="fa fa-facebook"></i> Sign in with Facebook
                          </button>
                    </div>
                </form>
                <form id="loginByEmail" class="login-form" method="POST" action="/login/email">
                     <div>
                         <button type=submit class="btn btn-social btn-openid">
                             <i class="fa fa-sign-in"></i> Sign in with Email
                         </button>
                         <label for="email">Email</label>
                         <input type="text" name="email" id="email" style="padding-bottom:5px; padding-top:1px; width:200px;">
                         <span id="emailResponse"></span>
                     </div>
                 </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="margin-top: 20px; padding-left: 0;">
                <p>Although you don't need to remember a password there is no guarantee that if you
                   choose a different login method next time you'll go the right account since Facebook
                   does not always give us an Email address to use as your id; or you may have more
                   than one Email address and then forget which one you used..</p>
                <p>If you do forget what identity you used to login we can't help.  Our emphasis on
                   your privacy, and the fact that we don't store any information other than your id, means
                   that you'll just have to try and remember the ID you used!</p>
            </div>
        </div>
    </section>
</div>

<#include "inc/foot.ftl">
</body>
</html>