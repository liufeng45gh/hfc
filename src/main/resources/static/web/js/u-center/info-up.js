$(document).ready(function () {
    $(".btn-submit").click(function() {
        var check = checkFiled();
        if (!check) {
            return;
        }
         $("#hfc-form").ajaxSubmit(function(data){
            layer.alert('修改成功!', {
              closeBtn: 0
            }, function(){
              window.location.reload();
              //layer.prompt("dsfssadsd");
            });

        });
    });
});


function checkFiled(){
    var nickName=$("#nickName").val();
    if(nickName.trim()==""){
       layer.msg("昵称不能为空");
        return false;
    }

    return true;
}