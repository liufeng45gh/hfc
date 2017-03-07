$(function() {
	$(window).scroll(function(){
        if ($(document).scrollTop() <= 80){
            $("#header").css("background","none");
            //alert("滚动条已经到达顶部为 80");
        } else{
            $("#header").css("background-color","#333");
        }
	});
});

function toLogin(){
     layer.open({
      type: 2,
      area: ['455px', '470px'],
      fixed: false, //不固定
      maxmin: true,
      content: "/login",
      title: "会员登录"
    });
}

function toRegister(){
 layer.open({
      type: 2,
      area: ['455px', '470px'],
      fixed: false, //不固定
      maxmin: true,
      content: "/register",
      title: "会员注册"
    });
}

$(function() {
	var token = getCookie("token");
	if (isEmpty(token)) {
	    $(".login-nav").show();
	}
	 var data_send = {};
	 data_send.token = token;

	  var user_request =$.ajax({
        type: 'get',
        url: '/token-user',
        data: data_send,
        dataType: 'json'
     });

     user_request.fail(function( jqXHR, textStatus ) {
       if(jqXHR.status==401){
          //openWeiboLogin();

       }
     });

     user_request.done(function(data) {
         if (data.ok) {
            $(".user-nav").show();
            $("#avatar").attr("src",data.data.avatar);
            $("#nick-div").text(data.data.nickName);
             return;
         }else {
             $(".login-nav").show();
         }
     });

});

var user_mouse_in = false;
var opt_mouse_in = false;

$(function() {

	$(".user-nav").mouseover(function () {
        user_mouse_in = true;
        $(".user-option").show();
	});
	$(".user-option").mouseover(function () {
        opt_mouse_in = true;
        $(".user-option").show();
    });

    $(".user-nav").mouseout(function () {
            user_mouse_in = false;
            setTimeout(hideUserOption,1000);
    });
    $(".user-option").mouseout(function () {
        opt_mouse_in = false;
        setTimeout(hideUserOption,1000);
    });
});

function hideUserOption(){
    if (user_mouse_in) {
        return;
    }
    if (opt_mouse_in) {
        return;
    }
     $(".user-option").hide();
}

function logout() {
    delCookie("token");
    window.location.reload();
}