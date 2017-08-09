<!DOCTYPE html>
<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/news.css?version=1.0' type='text/css' media='screen' />

</head>

<body>
<div class="web-main page-min-width">
    <#include "../c-top.ftl"/>



    <div class="third-block">
        <div class="info-fr wrapper-996">
            <div class="finance-block news-left">
                <div class="news-menu">
                    <#include "menu.ftl"/>

                </div>



                <div class="finance-list news-list" id="news-list">
                    <div class="news-title">${entity.title?default("")}</div>
                    <div class="news-info">

                        <div>
                            ${(entity.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}
                        </div>

                        <div>
                              来源: ${entity.source?default("")}
                        </div>

                        
                    </div>
                    <div style="clear: both"></div>
                    <div class="news-info ">
                        <div class="share-button">
                            <img  src="/web/images/share/wechat-share.jpg"/>
                        </div>
                        <div class="share-button">
                            <img  src="/web/images/share/qq-share.jpg"/>
                        </div>
                        <div class="share-button">
                            <img  src="/web/images/share/weibo-share.jpg"/>
                        </div>
                    </div>
                    <div style="clear: both"></div>
                    <div class="news-content">${entity.content?default("")}</div>

                </div>

                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


        </div>
    </div>




</div>

<div class="popup-share">
      <img src="/web/images/share/popup-share.jpg" style="width:400px;height:429px;">
</div>

<script type="text/javascript">
$(function() {
	$('#menu-item-important-news').addClass("active");
});
$("#head-href-about").addClass("active");
</script>

<script  src="/web/js/news/index.js?version=1.0"></script>
</body>
</html>