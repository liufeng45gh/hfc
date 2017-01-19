function checkFiled(){
    var title=$("#title_input").val();
    if(title.trim()==""){
        $("#title_input_info").css("color","red");
        $("#title_input_info").html("* 标题必须填写");
        return false;
    } else {
        $("#title_input_info").css("color","auto");
         $("#title_input_info").html("* 标题");
    }

    var categoryId=$("#category_input").val();
    if(categoryId.trim()==""){
        $("#category_input_info").css("color","red");
        $("#category_input_info").html("* 分类必须选择");
        return false;
    } else {
        $("#category_input_info").css("color","auto");
        $("#category_input_info").html("* 分类");
    }


    return true;
}
$(document).ready(function () {
    $("#submit-btn").click(function() {
        var allCheck = checkFiled();
        if (allCheck) {
            $("#hfc-form").ajaxSubmit(function(data){
                layer.alert('修改成功!', {
                  closeBtn: 0,
                  offset: 'auto'
                }, function(){
                  window.parent.location.reload();
                  //layer.prompt("dsfssadsd");
                });

            });
        }
    });
});