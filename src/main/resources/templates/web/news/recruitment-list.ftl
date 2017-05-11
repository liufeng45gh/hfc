<!DOCTYPE html>
<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />

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
                    <#list postList as post>
                    <div class="news-item">
                        <#if post.isLogoHave()>
                        <div class="logo">
                            <a href="/post/${post.id}/detail" target="_blank">
                                <img src="${post.logo?default("")}">
                            </a>
                        </div>
                        </#if>
                        <div class="text <#if !post.isLogoHave()>w800</#if>">
                            <a href="/post/${post.id}/detail" target="_blank">
                                <div class="title">${post.title?default("")}</div>
                            </a>
                            <a href="/post/${post.id}/detail" target="_blank">
                                <div class="desc">
                                    ${post.summaryText()}
                                </div>
                            </a>
                            <div class="date-info">[${(post.createdAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                        </div>

                    </div>
                    </#list>


                </div>
                <div class="load-more" id="load-more">点击加载更多</div>
                <input type="hidden" id="load-more-url" value="/news/list">
                <input type="hidden" id="search-more-url" value="/news/search-list">
                <div class="fill-bottom">&nbsp;</div>

            </div>
            <#-- 
            <#include "right_part.ftl"/>
            -->


        </div>
    </div>




</div>

<script type="text/javascript">
$(function() {
	$('#menu-item-${RequestParameters["categoryId"]?default("")}').addClass("active");
});
var categoryId = "${RequestParameters["categoryId"]?default("")}";
</script>

<script  src="/web/js/news/index.js"></script>
</body>
</html>