<!DOCTYPE html>
<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/artist.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/page-bar.css' type='text/css' media='screen' />

</head>

<body>
<div class="web-main page-min-width">


    <#include "../c-top.ftl"/>



    <div class="third-block">
        <div class="news-menu">
            <a href="/atlas/index"><div class="menu-item" id="menu-item-yhj">海富映像</div></a>
        </div>

            <div class="Clear rnTopic imgScale mt14" style="width: 1200px;margin-top: 30px;">
                <#list atlasList as atlas>
                    <div class="news-item img-item" <#if atlas_index%6==0>style="margin-left: 0px;"</#if>>
                        <a href="http://www.replays.net/pic/201610/18976.html#p=1" target="_blank">
                            <p><img src="${(atlas.logo)}" /></p>
                            <em>${(atlas.title)}</em>
                        </a>
                    </div>
                </#list>

                    <div style="clear:both;"></div>
                ${pageDiv}
            </div>

    </div>




</div>

<script type="text/javascript">
$(function() {
	$('#menu-item-yhj').addClass("active");
});
</script>

<script  src="/web/js/artist/index.js"></script>
</body>
</html>