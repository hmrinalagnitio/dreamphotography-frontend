$('.toggle-menu').click(function() {
    $('.page-header .nav-primary').slideToggle();
    $(this).toggleClass('close-menu');
});


$(document).ready(function() {
    $(".apply4job").on("click", function() {
        var $this = $(this);
        $this.next().slideToggle();
        if ($this.text() === "Upload Image") {
            $this.text("Close");
        } else {
            $this.text("Upload Image");
        }
    })
});


!(function($) {
    "use strict";
    var a = {
        accordionOn: ["xs"]
    };
    $.fn.responsiveTabs = function(e) {
        var t = $.extend({}, a, e),
            s = "";
        return (
            $.each(t.accordionOn, function(a, e) {
                s += " accordion-" + e;
            }),
            this.each(function() {
                var a = $(this),
                    e = a.find("> li > a"),
                    t = $(e.first().attr("href")).parent(".tab-content"),
                    i = t.children(".tab-pane");
                a.add(t).wrapAll('<div class="responsive-tabs-container" />');
                var n = a.parent(".responsive-tabs-container");
                n.addClass(s),
                    e.each(function(a) {
                        var t = $(this),
                            s = t.attr("href"),
                            i = "",
                            n = "",
                            r = "";
                        t.parent("li").hasClass("active") && (i = " active"),
                            0 === a && (n = " first"),
                            a === e.length - 1 && (r = " last"),
                            t
                            .clone(!1)
                            .addClass("accordion-link" + i + n + r)
                            .insertBefore(s);
                    });
                var r = t.children(".accordion-link");
                e.on("click", function(a) {
                        a.preventDefault();
                        var e = $(this),
                            s = e.parent("li"),
                            n = s.siblings("li"),
                            c = e.attr("href"),
                            l = t.children('a[href="' + c + '"]');
                        s.hasClass("active") ||
                            (s.addClass("active"),
                                n.removeClass("active"),
                                i.removeClass("active"),
                                $(c).addClass("active"),
                                r.removeClass("active"),
                                l.addClass("active"));
                    }),
                    r.on("click", function(t) {
                        t.preventDefault();
                        var s = $(this),
                            n = s.attr("href"),
                            c = a.find('li > a[href="' + n + '"]').parent("li");
                        s.hasClass("active") ||
                            (r.removeClass("active"),
                                s.addClass("active"),
                                i.removeClass("active"),
                                $(n).addClass("active"),
                                e.parent("li").removeClass("active"),
                                c.addClass("active"));
                    });
            })
        );
    };
})(jQuery);

$(".responsive-tabs").responsiveTabs({
    accordionOn: ["xs", "sm"]
});


// Date Countdown 

// Character Text Limit

$(".text-box p").text(function(index, currentText) {
    var maxLength = $(this).parent().attr('data-maxlength');
    if (currentText.length >= maxLength) {
        return currentText.substr(0, maxLength) + "...";
    } else {
        return currentText
    }
});

// Load More
$(document).ready(function() {
    $(".load-more").slice(0, 3).show();
    $("#seeMore").click(function(e) {
        e.preventDefault();
        $(".load-more:hidden").slice(0, 1).fadeIn("slow");
        if ($(".load-more:hidden").length == 0) {
            $("#seeMore").fadeOut("slow");
        }
    });
})

// Load More
$(document).ready(function() {
    $("#qr-code").hide();
    $("#4").click(function() {
        $("#qr-code").fadeToggle("slow");
    });
})

$(document).ready(function() {
    $("#3,#2,#1").click(function() {
        $("#qr-code").fadeOut("slow");
    });
})

// for email validation

//============================
// for login page
//============================

$(document).ready(function() {
    $("#login_btn").attr("disabled", true);
    //  for email
    $('#email').keyup(function(e) {
        var inputVal = $(this).val();
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        if (!emailReg.test(inputVal)) {
            $('.error_email').html('Invalid Email');
        } else {
            $('.error_email').html('');
        }
        var email = $('#email').val();
        var password = $('#password').val();
        if (email == '' || password == '') {
            $("#login_btn").attr("disabled", true);
        } else {
            $("#login_btn").attr("disabled", false);
        }
    });
    // for password
    $('#password').keyup(function(e) {
        var email = $('#email').val();
        var password = $('#password').val();
        if (email == '' || password == '') {
            $("#login_btn").attr("disabled", true);
        } else {
            $("#login_btn").attr("disabled", false);
        }
    });

});


// login submit btn click 
$(document).ready(function() {
    var current_url = $('.hidden_url').val();
    var next_hidden_url = $('.next_hidden_url').val();
    var privous_url = $('.hidden_url').val();
    var btn_url = $(this).data("id");
    // alert(btn_url);
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $("#login_btn").on('click', function(e) {
        e.preventDefault();
        var email = $('#email').val();
        var password = $('#password').val();
        $.ajax({
            url: '/create',
            type: "post",
            data: {
                'email': email,
                'password': password
            },
            success: function(respons) {
                if (respons.error) {
                    $('#loginerror').text(respons.error);
                }
                if (respons.success) {
                    location.href = current_url;
                }
            }
        });

    });

});






// ========================
// for resigter page
// ==========================
$(document).ready(function() {
    $("#register_btn").attr("disabled", true);
    // name validation
    $('#name').keyup(function() {
        var name = $('#name').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var c_password = $('#c_password').val();
        if (name == '' || email == '' || password == '' || c_password == '') {
            $("#register_btn").attr("disabled", true);
        } else {
            $("#register_btn").attr("disabled", false);
        }

    });

    //   email validation 
    $('#email').keyup(function() {
        var name = $('#name').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var c_password = $('#c_password').val();

        if (email == '' || name == '' || password == '' || c_password == '') {
            $("#register_btn").attr("disabled", true);
        } else {
            $("#register_btn").attr("disabled", false);
        }

    });

    // password validation 

    $('#password').keyup(function() {
        var name = $('#name').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var c_password = $('#c_password').val();

        if (password == '' || name == '' || email == '' || c_password == '') {
            $("#register_btn").attr("disabled", true);
        } else {
            $("#register_btn").attr("disabled", false);
        }

        if (password != c_password) {
            $("#register_btn").attr("disabled", true);
        } else {
            $("#register_btn").attr("disabled", false);
        }



    });

    //    confrimed password validation 
    $('#c_password').keyup(function() {
        var name = $('#name').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var c_password = $('#c_password').val();

        if (c_password == '' || name == '' || email == '' || password == '') {
            $("#register_btn").attr("disabled", true);
        } else {

            $("#register_btn").attr("disabled", false);
        }

    });

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $("#register_btn").on('click', function(e) {
        e.preventDefault();
        var name = $('#name').val();
        var email = $('#email').val();
        var password = $('#password').val();

        $.ajax({
            url: '/createuser',
            type: "post",
            data: {
                'name': name,
                'email': email,
                'password': password
            },
            success: function(respons) {
                if (respons.error) {
                    $('#registererror').text(respons.error);
                }
                if (respons.success) {
                    location.href = "/login";
                }
            }
        });

    });


    // for name validation 
    $('.AlphabetsOnly').keypress(function(e) {
        var regex = new RegExp(/^[a-zA-Z\s]+$/);
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        } else {
            e.preventDefault();
            return false;
        }
    });

    // for email validation
    $('#email').blur(function() {
        var error_email = '';
        var email = $('#email').val();
        var _token = $('input[name="_token"]').val();
        var email_filter = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!email_filter.test(email)) {
            $('#error').addClass('has-error');
            $('#error_email').html('<label class="text-danger">Invalid Email');
            $("#addAdmin").attr("disabled", true);
        } else {
            $.ajax({
                url: 'checkEmail',
                method: "POST",
                data: {
                    email: email,
                    _token: _token
                },
                success: function(result) {
                    if (result == 'unique') {
                        $('#error_email').html('<label class="text-success">Email Available </label>');
                        $('#email').removeClass('has-error');

                    } else {
                        $('#error_email').html('<label class="text-danger">Email already exit </label>');
                        $('#email').addClass('has-error');
                        $("#addAdmin").attr("disabled", true);
                    }

                }
            });
        }
    });

    // for add admin  password and confrime password validation using jquery

    //for profile password show icon click 


    $("#toggle").click(function() {

        if ($("#password").attr("type") == "password") {
            //Change type attribute
            $("#password").attr("type", "text");
        } else {
            //Change type attribute
            $("#password").attr("type", "password");
        }
    });

    $("#toggle_c_pass").click(function() {
        if ($("#c_password").attr("type") == "password") {
            //Change type attribute
            $("#c_password").attr("type", "text");
        } else {
            //Change type attribute
            $("#c_password").attr("type", "password");
        }

    });

    // for login password 
    $("#login_pass").click(function() {
        if ($("#password").attr("type") == "password") {
            //Change type attribute
            $("#password").attr("type", "text");
        } else {
            //Change type attribute
            $("#password").attr("type", "password");
        }

    });

    $('#password').keyup(function() {
        $('#strengthMessage').html(checkStrength($('#password').val()));
        // $("#addAdmin").attr("disabled", true);

    });

    function checkStrength(password) {
        var strength = 0
        if (password.length < 6) {
            $('#strengthMessage').removeClass()
            $('#strengthMessage').addClass('Short')
            return 'Too short'
        }
        if (password.length > 7) strength += 1
            // If password contains both lower and uppercase characters, increase strength value.  
        if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) strength += 1
            // If it has numbers and characters, increase strength value.  
        if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) strength += 1
            // If it has one special character, increase strength value.  
        if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
            // If it has two special characters, increase strength value.  
        if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
            // Calculated strength value, we can return messages  
            // If value is less than 2  
        if (strength < 2) {
            $('#strengthMessage').removeClass()
            $('#strengthMessage').addClass('Weak')
            return 'Weak'
        } else if (strength == 2) {
            $('#strengthMessage').removeClass()
            $('#strengthMessage').addClass('Good')
            return 'Good'
        } else {
            $('#strengthMessage').removeClass()
            $('#strengthMessage').addClass('Strong')
            return 'Strong'
        }
    }



    $('#c_password').on('keyup', function() {

        if ($('#password').val() == $('#c_password').val()) {
            $('.show_error').html('').css('color', 'green');
            var name = $('#name').val();
            var email = $('#email').val();
            var password = $('#password').val();
            if (password == '' || email == '' || name == '') {
                $("#register_btn").attr("disabled", true);
            } else {
                $("#register_btn").attr("disabled", false);
            }

        } else {
            $('.show_error').html('Password is not matching').css('color', 'red');

        }
    });

});



// ====================================
//   Home page view details content
// =====================================

// Hide the extra content initially, using JS so that if JS is disabled, no problemo:
$(document).ready(function() {
    $('.read-more-content').addClass('hide_content');
    $('.read-more-show, .read-more-hide').removeClass('hide_content');

    // Set up the toggle effect:
    $(document).on('click', '.read-more-show', function(e) {
        $(this).next('.read-more-content').removeClass('hide_content');
        $(this).addClass('hide_content');
        e.preventDefault();
    });

    // Changes contributed by @diego-rzg
    $(document).on('click', '.read-more-hide', function(e) {
        var p = $(this).parent('.read-more-content');
        p.addClass('hide_content');
        p.prev('.read-more-show').removeClass('hide_content'); // Hide only the preceding "Read More"
        e.preventDefault();
    });
});

//======================================
//          home page watching contest
// =====================================


$(document).ready(function() {

    $(document).on('click', '.add_watch', function() {

        var contest_id = $(this).data("id");
        var user_id = $('#watch_user_id').data('value');
        if (user_id == "") {
            window.location.href = 'login';

        } else {

            $.ajax({
                method: "post",
                url: "/watch/" + user_id,
                data: {
                    'user_id': user_id,
                    'contest_id': contest_id
                },
                success: function(res) {

                    if (res.action == 'add') {
                        $('button[data-id=' + contest_id + ']').html('Watching');
                        location.reload();
                        // $('[data-id~="Watch"] button').addClass('watching');

                    } else if (res.action == 'remove') {
                        $('button[data-id=' + contest_id + ']').html('Watch');
                        // $('[data-id~="Watch"] button').addClass('watch');
                        location.reload();
                    }
                }
            });
        }
    })


});


// for gallery page loadmore

$(document).ready(function() {
    var token = $('input[name = "_token"]').val();
    load_more('', token);

    function load_more(id = "", token) {
        $.ajax({
            url: "/load_more_data",
            method: "post",
            data: { id: id, _token: token },
            success: function(data) {
                // console.log(data);
                $('#seeMore').remove();
                $('.galleryData').append(data);
            }
        })
    }

    $(document).on('click', '#seeMore', function(e) {
        e.preventDefault();
        var id = $(this).data('id');
        load_more(id, token);

        //  alert(id);
    })



});


// for myaccount edit user profile picture
// =======================================


$('#user_profile_pic').change(function(e) {

    var _token = $('input[name="_token"]').val();
    const file = e.target.files[0];
    let url = window.URL.createObjectURL(file);
    var numb = this.files[0].size;
    var extension = $(this).val().split('.').pop().toLowerCase();
    var file_data = $("#user_profile_pic").prop("files")[0];
    fd = new FormData();
    fd.append('_token', _token);
    fd.append('file', file_data);

    if (numb > 200000) {
        $("#imageChecked").html("Please select image less then 200 kb");
    } else {
        if (extension == "jpg" || extension == "jpeg" || extension == "png" || extension == "PNG") {
            document.getElementById('image-preview').src = url;
            var filename = $('input[type=file]').val().replace(/C:\\fakepath\\/i, '')
            $.ajax({
                url: "/upload_profile_img",
                method: "post",
                data: fd,
                contentType: false,
                processData: false,
                success: function(res) {

                    $("#imageChecked").hide();
                    // location.reload();
                }
            });
        } else {
            $("#imageChecked").html("File not supported. Kindly Upload the Image of below given extension ")
        }
    }

});

$(document).on('click', '.btn-edi-Profile', function() {
    var edit_prpfile_id = $(this).data('id');
    $.ajax({
        type: 'get',
        url: 'edit_user_profile/' + edit_prpfile_id,
        success: function(response) {


            $('#name').val(response.user_data.name);
            $('#address').val(response.user_data.address);
            $('#country_name').val(response.user_data.country);
            $('#zip_code').val(response.user_data.zipcode);
            $('#mobile_no').val(response.user_data.phone_number);

        }
    })
});


// for update user profile
$(document).on('click', '#update', function() {

    $.ajax({
        type: "put",
        url: "update/",
        success: function(res) {
            console.log(res);
        }
    })


})