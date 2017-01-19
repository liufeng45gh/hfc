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
});