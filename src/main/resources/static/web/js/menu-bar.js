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