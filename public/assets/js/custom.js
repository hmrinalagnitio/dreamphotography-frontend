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
//===============================

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
                    location.href = "/";
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


// ========================
//  contest list filter
// =========================

$(document).ready(function() {

    $('#sort').on('change', function() {
        var getname = $("#sort option:selected").val();
        $.ajax({
            type: 'get',
            url: "/contestListSorting",
            data: {
                'getname': getname
            },
            success: function(data) {
                $('.contest_ajax_list').html('');

                var contest_sorting_data = data.contest_sorting_data;

                console.log(data);
                var html = '';
                $.each(contest_sorting_data, function(key, value) {


                    html += `
                    <div class="load-more ">
                         <div class="listing-wrap">
                        <div class="listing__title">
                            <h2> <span id="contest_list_data">` + value.contest_type_name + `</span></h2>
                            <div class="listing-design__price">
                            <div class="ribbon__fold"></div>
                            <div class="ribbon__text">`

                    +
                    value.prize_amount +
                        `</div>

                        </div>
                            </div>
                            <div class="listing__description text-box" data-maxlength="210">
                                <h3><a href="` + '/viewdetails/' + value.id + `">` + value.contest_name + `</a></h3>
                                <p>` + value.description_one + `</p>
                                <a href="` + '/viewdetails/' + value.id + `" class="btn-view-details">View Details</a>
                                <a href="` + '/viewdetails/' + value.id + `" class="btn-participate-now">Participate Now</a>
                            </div>
                            <div class="listing__last">
                                <ul>
                                    <li><i class="fa fa-user"></i>
                                        <p>100 <span>Paticipant</span></p>
                                    </li>
                                    <li>
                                        <div class="clockdiv" data-date="May 13, 2022 21:14:01">
                                            <i class="fa fa-clock-o"></i>
                                            <div class="clockdiv__date">
                                                <p><span class="days"></span> Days,</p>
                                            </div>
                                            <div class="clockdiv__date">
                                                <p><span class="hours"></span> Hours</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="" class="btn-Watch">Watch</a></li>
    
                                </ul>
                          </div>
                        </div>
                    </div>
                     `;

                });

                $(".contest_ajax_list").append(html);

            }
        });
        $('.load-more ').remove();

    });

});


// ====================================
//   Home page view details content
// =====================================

// Hide the extra content initially, using JS so that if JS is disabled, no problemo:
$('.read-more-content').addClass('hide_content')
$('.read-more-show, .read-more-hide').removeClass('hide_content')

// Set up the toggle effect:
$('.read-more-show').on('click', function(e) {
    $(this).next('.read-more-content').removeClass('hide_content');
    $(this).addClass('hide_content');
    e.preventDefault();
});

// Changes contributed by @diego-rzg
$('.read-more-hide').on('click', function(e) {
    var p = $(this).parent('.read-more-content');
    p.addClass('hide_content');
    p.prev('.read-more-show').removeClass('hide_content'); // Hide only the preceding "Read More"
    e.preventDefault();
});

//======================================
//          home page watching contest
// =====================================


$(document).ready(function() {

    $('.add_watch').on('click', function() {

        var contest_id = $(this).data("id");
        alert(contest_id);
        var user_id = $('#watch_user_id').data('value');
        alert(user_id);
        if (user_id == "") {
            window.location.href = 'login';
            // alert(' not login');
        } else {
            alert('u are login');
            $.ajax({
                method: "post",
                url: "/watch/" + user_id,
                data: {
                    'user_id': user_id,
                    'contest_id': contest_id
                },
                success: function(res) {
                    console.log(res);
                    if (res.action == 'add') {
                        $('button[data-id=' + contest_id + ']').html('Watching');
                    }
                }
            });

        }







    })





});




// ===========================================
//      IMAGE UPLOAD VALIDATION WITH TITLE
// ===========================================

// $(document).ready(function() {


//     $('#image').on('change', function(evt) {
//         var numb = $(this)[0].files[0].size / 1024 / 1024;
//         numb = numb.toFixed(2);

//         var hiddenImageid = $('#image_val').val();

//         var image_url = URL.createObjectURL(evt.target.files[0]);
//         var imageDiv = document.getElementById('preview');
//         var newimg = document.createElement('img');
//         var previewImage = newimg.append('hiddenImageid');
//         alert(previewImage);
//         var imgsize = this.files[0].size;
//         var fuData = document.getElementById('image');
//         var FileUploadPathData = fuData.value;

//         var Extension = FileUploadPathData.substring(FileUploadPathData.lastIndexOf('.') + 1)
//             .toLowerCase();

//         // size  validation start
//         if (numb >= 2) {
//             alert(imgsize); 
//             $('#imageChecked').show();
//             $("#imageChecked").addClass("border-error");
//             $("#imageChecked").html("Please select image less then 2MB");
//             $("button[type=submit]").prop('disabled', true);
//         } else {
//             $("button[type=submit]").prop('disabled', false);
//             // extension validation start
//             if (Extension == "gif" || Extension == "png" || Extension == "jpeg" || Extension ==
//                 "jpg") {
//                 if (fuData.files && fuData.files[0]) {
//                     imageDiv.innerHTML = '';
//                     newimg.src = image_url;

//                     imageDiv.appendChild(newimg);
//                     // $('#preview_image{{$uid}}').show();
//                     $("#imageChecked").hide();
//                     $('#default_img').hide();
//                     $("#btn_close").show();
//                     $("#btn_close").click(function() {
//                         $("#preview").hide();
//                         $("#btn_close").hide();
//                         location.reload();
//                     });
//                 }

//             } else {
//                 $("#imageChecked").show();
//                 $("#imageChecked").addClass("border-error");
//                 $("#imageChecked").html("File types must be GIF, PNG, JPG or JPEG");
//             } //  extension validation end

//         } //size  validation end

//     });
// });cons=