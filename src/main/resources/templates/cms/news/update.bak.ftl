<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/cms/css/admin.css" />
    <link rel='stylesheet' href='/cms/css/theme-default.css' type='text/css' media='screen' />
    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery/jquery-3.1.1.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href="/timepicker/css/jquery-ui.css" />
    <script type="text/javascript" src="/timepicker/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/timepicker/js/jquery-ui-slide.min.js"></script>
    <script type="text/javascript" src="/timepicker/js/jquery-ui-timepicker-addon.js"></script>




    <script type="text/javascript" charset="utf-8" src="/ueditor-1.4.3.3/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/ueditor-1.4.3.3/_examples/editor_api.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/ueditor-1.4.3.3/lang/zh-cn/zh-cn.js"></script>

    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery.form-3.45.js"></script>

    <script  type="text/javascript" src="/layer/layer.js"></script>



</head>
<body style="zoom: 1;">





<div class="position"><span>系统</span><span>|</span><span>资讯</span><span>|</span><span>修改资讯</span></div>
<div class="content form_content" >


    <form action="/cms/news/update" method="post" id="hfc-form">
        <#include "news_form_filed.ftl"/>
    </form>
</div>




<script type="text/javascript">
		//DOM加载完毕执行
		$(document).ready(function(){
		    layer.alert('测试一下位置', {

          });
			 var ue = UE.getEditor('editor');
			 $("#category_input").val("${news.categoryId}");
		});
	</script>
<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/news_update.js"></script>
<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/news_logo_select.js"></script>

</body></html>