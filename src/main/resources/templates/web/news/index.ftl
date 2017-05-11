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
                    <#list newsList as news>
                    <div class="news-item">
                        <#if news.isLogoHave()>
                        <div class="logo">
                            <a href="/news/${news.id}/detail" target="_blank">
                                <img src="${news.logo?default("")}">
                            </a>
                        </div>
                        </#if>
                        <div class="text <#if !news.isLogoHave()>w800</#if>">
                            <a href="/news/${news.id}/detail" target="_blank">
                                <div class="title">${news.title?default("")}</div>
                            </a>
                            <a href="/news/${news.id}/detail" target="_blank">
                                <div class="desc">
                                    ${news.summaryText()}
                                </div>
                            </a>
                            <div class="date-info">[${(news.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                        </div>

                    </div>
                    </#list>


                </div>
                <div class="load-more" id="load-more">点击加载更多</div>
                <input type="hidden" id="load-more-url" value="/news/list">
                <input type="hidden" id="search-more-url" value="/news/search-list">
                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


        </div>
    </div>




</div>



<script type="text/javascript">
$(function() {
	$('#menu-item-important-news').addClass("active");
});

</script>

<script  src="/web/js/news/index.js"></script>
</body>
</html>