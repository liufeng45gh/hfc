$(document).ready(function() {
    $(".to_update").click(function() {
        var newsId = $(this).parent().attr("newsId");
        var url = $("#update-url").val();
        url = url.replace("{id}",newsId);
        layer.open({
          type: 2,
          area: ['80%', '80%'],
          fixed: false, //不固定
          maxmin: true,
          content: url
        });
    });

    $(".to_delete").click(function() {
        var newsId = $(this).parent().attr("newsId");
        var url = $("#delete-url").val();
        url = url.replace("{id}",newsId);
        layer.confirm('确定要删除吗？', {
          btn: ['取消','确定'] //按钮
        }, function(){
          layer.closeAll();
        }, function(){
          layer.alert('也可以这样', {

          });
        });
    });
});