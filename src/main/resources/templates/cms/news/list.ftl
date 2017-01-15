<!DOCTYPE html>
<html>
<head>
	<title>后台管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/cms/css/admin.css">
    <link rel='stylesheet' href='/cms/css/theme-default.css' type='text/css' media='screen' />
	<script type="text/javascript" charset="UTF-8" src="/cms/script/jquery-1.9.1.min.js"></script>
	
</head>
<body style="zoom: 1;">
	<div class="b-container">
		<#include "../top_menu.ftl"/>
        <#include "../quick_menu.ftl"/>
		<div id="wrap">
            <div class="outer with-side with-transition" style="min-height: 600px;">
                <#include "left_menu.ftl"/>

                <div id="admin_right">
                			<div class="content_box" style="border:none">
                			<div class="position"><span>内容管理</span><span>&gt;</span><span>资讯管理</span><span>&gt;</span><span>资讯列表</span></div>
                			<div class="operating">
                				<div class="search f_l">
                					<form  action="" method="get">
                						标题
                						<input class="easy" name="title" type="text" size="50" value="${title?default("")}">

                						<button class="btn" type="submit"><span class="sch">搜 索</span></button>
                					</form>
                				</div>
                			</div>
                        <div class="content" style="min-height: 200px;">
                            <table class="list_table" style="font-size:13px;">
                                <thead>
                                    <tr style="height:30px;">
                                        <th width="140px">id</th>
                                        <th width="340px">标题</th>
                                        <th width="150px">logo</th>
                                        <th width="180px">分类</th>
                                        <th width="180px">点击量</th>

                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <#list newsList as news>
                                    <tr>
                                        <td>${news.id?default("")}</td>

                                        <td>${news.title}</td>

                                        <td>${news.logo}</td>
                                        <td>${news.categoryId?default("1")}</td>
                                        <td>${news.clickCount?default("")} </td>

                                        <td>
                                            <a href="#" onclick="">修改</a>
                                            <span>|</span>
                                            <a href="#" onclick="">删除</a>
                                            <span>|</span>
                                            <a href="#" onclick="">查看</a>
                                            <span>|</span>
                                            <a href="#" onclick="">推荐到右侧</a>
                                            <span>|</span>
                                            <a href="#" onclick="">推荐到首页</a>


                                        </td>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>

                        </div>


                	${pageDiv}
                </div>
            </div>
        </div>

		


		</div>

	</div>

	<script type="text/javascript">
		//DOM加载完毕执行
		$(document).ready(function(){
			$("#left_menu_news_list").addClass("selected");


		});
	</script>
<script type="text/javascript" charset="UTF-8" src="/cms/script/user.js"></script>


<div style="display: none; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; cursor: move; opacity: 0; background: rgb(255, 255, 255);"></div></body></html>