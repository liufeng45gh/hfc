<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/cms/css/admin.css">
    <link rel='stylesheet' href='/cms/css/theme-default.css' type='text/css' media='screen' />
    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" charset="UTF-8" src="/layer/layer.js"></script>
</head>
<body style="zoom: 1;">
<div class="b-container">
    <#include "../top_menu.ftl"/>
    <#include "../quick_menu.ftl"/>
    <div id="wrap">
        <div class="outer with-side with-transition" style="min-height: 600px;">
            <#include "../news/left_menu.ftl"/>

            <div id="admin_right">
                <div class="content_box" style="border:none">
                    <div class="position"><span>内容管理</span><span>&gt;</span><span>艺术家</span><span>&gt;</span><span>艺术家推荐列表</span></div>

                    <div class="content" style="min-height: 200px;">
                        <table class="list_table" style="font-size:13px;">
                            <thead>
                            <tr style="height:30px;">
                                <th width="140px" class="t_c">id</th>

                                <th width="340px">名字</th>
                                <th width="150px">头像</th>
                                <th width="80px" class="t_c">置顶</th>

                                <th>
                                    操作

                                </th>

                            </tr>
                            </thead>
                            <tbody>
                            <#list artistRecommendList as recommend>
                            <tr >
                                <td class="t_c">${recommend.artist.id?default("")}</td>
                                <td>${recommend.artist.name?default("")}</td>
                                <td>
                                    <img src="${recommend.artist.avatar?default("")}" style="width:37px;height:37px;"/>
                                </td>
                                <td class="t_c">${recommend.top?default("")}</td>
                                <td recommendId="${recommend.id?default("")}">
                                    <a href="#" onclick="return false;" class="to_update">修改置顶</a>
                                    <span>|</span>
                                    <a href="#" onclick="return false;" class="to_delete">删除</a>
                                </td>
                            </tr>
                        </#list>
                    </tbody>
                </table>

            </div>
            <input type="hidden" id="update-url" value="/cms/artist/recommend/update"/>
            <input type="hidden" id="delete-url" value="/cms/artist/recommend/{id}/delete"/>

        </div>
    </div>
</div>




</div>

</div>

<script type="text/javascript">
		//DOM加载完毕执行
		$(document).ready(function(){
			$("#left_menu_artist_recommend").addClass("selected");


		});
	</script>
<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/artist/recommend_list.js"></script>


<div style="display: none; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; cursor: move; opacity: 0; background: rgb(255, 255, 255);"></div></body></html>