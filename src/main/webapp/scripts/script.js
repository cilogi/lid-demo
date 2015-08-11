/*global jQuery */
(function($) {
    'use strict';

    var id, name, site;

    $(document).ready(function() {
        $.ajax({
            url: "/user/status",
            method: "post",
            dataType: "json",
            success: function(data) {
                id = data.id;
                name = data.name;
                site = data.site;
                if (id) {
                    $("#loginStatus").show().html("<p>You are signed in as <code>" + name + "</code> by <em>" + site + "</em></p>");
                    $(".loggedIn").show();
                    $(".loggedOut").hide();
                } else {
                    $("#loginStatus").show().html("<p>You are not signed in</p>");
                    $(".loggedIn").hide();
                    $(".loggedOut").show();
                }
            },
            error: function(jqXHR, status, error) {
                console.log("weird error: " + status);
            }
        });

        /* This is an exception, so we handle it differently, no redirect is needed */
        $("#loginByEmail").on("submit", function(e) {
            e.preventDefault();
            var elt = $(this),
                email = $("#email").val().trim();
            $("#emailResponse").html("");
            $.ajax({
                url: elt.attr("action"),
                method: "post",
                data: {email: email},
                dataType: "json",
                success: function(data) {
                    var msg = data.message;
                    $("#emailResponse").css("color", "black").html(msg);
                },
                error: function(jqXHR, status, error) {
                    var json = jqXHR.responseJSON;
                    if (json) {
                        $("#emailResponse").css("color", "red").html(json.message);
                    } else {
                        $("#emailResponse").css("color", "red").html("status: " + status + " error: " + error);
                    }
                }
            })
        });
    });
}(jQuery));