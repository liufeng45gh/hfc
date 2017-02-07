<html>
<head>
    <link rel='stylesheet' href='/web/css/website.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <script  src="/web/icon/iconfont.js"></script>
    <link rel="stylesheet" type="text/css" href="/web/icon/iconfont.css">
    <style type="text/css">
        .icon {
          /* 通过设置 font-size 来改变图标大小 */
          width: 1em; height: 1em;
          /* 图标和文字相邻时，垂直对齐 */
          vertical-align: -0.15em;
          /* 通过设置 color 来改变 SVG 的颜色/fill */
          fill: currentColor;
          /* path 和 stroke 溢出 viewBox 部分在 IE 下会显示
             normalize.css 中也包含这行 */
          overflow: hidden;
        }

    </style>
    <script  src="/web/js/jquery-3.1.1.js"></script>
    <script  src="/web/js/Tony_Tab.js"></script>
    <script  src="/web/js/menu-bar.js"></script>
    <script  src="/web/js/common.js"></script>
</head>

<body>
<div class="web-main page-min-width">
    <div class="head-box">
        <div class="banner-background" style="background-image: url(http://ojvbqldpg.bkt.clouddn.com/444dad17-33ec-4774-976c-a0629f3bdfd8.jpg); opacity: 1; "></div>
        <div class="mask"></div>
        <div class="new-banner h400">


        </div>
        <#include "../menu-bar.ftl"/>
    </div>



    <div class="third-block">
        <div class="info-fr wrapper-996">
            <div class="finance-block news-left">
                <div class="news-menu">
                    <#list newsCategoryList as category>
                    <a href="/news/index?categoryId=${category.id?default("")}"><div class="menu-item" id="menu-item-${category.id?default("")}">${category.name}</div></a>
                    </#list>

                </div>
                <div class="hr-border"><hr line-info-hr></div>
                <#if carousel??>
                <div class="recommend-news">
                    <img src="${carousel.logo?default("")}" />
                    <div id="focusTitle">
                        <div class="tit" id="focus-tit">
                            ${carousel.title?default("")}
                        </div>
                        <div class="des" id="focus-des">${carousel.summary?default("")}</div>
                    </div>
                </div>
                </#if>

                <div class="finance-list news-list" id="news-list">
                    <#list newsList as news>
                    <div class="news-item">
                        <#if news.isLogoHave()>
                        <div class="logo">
                            <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                                <img src="${news.logo?default("")}">
                            </a>
                        </div>
                        </#if>
                        <div class="text <#if !news.isLogoHave()>w878</#if>">
                            <div class="title">${news.title?default("")}</div>
                            <div class="desc">

                                ${news.summaryText()}

                            </div>
                            <div class="date-info">[${(news.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                        </div>

                    </div>
                    </#list>


                </div>
                <div class="load-more" id="load-more">点击加载更多</div>
                <input type="hidden" id="load-more-url" value="/news/list">
                <div class="fill-bottom">&nbsp;</div>

            </div>
            <div class="separate-block">
                &nbsp;
            </div>
            <div class="report-block news-right">
                <div class="search-box">
                    <form method="get" action="/search/" class="new-searching-unit" data-regestered="regestered">
                        <input id="query" type="text" size="27" name="q" autocomplete="off" placeholder="搜索你喜欢的" />
                        <a href="#" onclick="return false;" class="go"></a>
                    </form>

                </div>

                <div class="hr-border" style="width:560px;">
                        <hr  class="line-info-hr"/>
                </div>
                <div class="title" >
                    <div class="t-zh">最热新闻</div>
                    <div class="t-en">HOT NEWS</div>
                </div>
                <div class="hot-list">

                    <#list hotList as news>
                    <div class="recommend-item">
                        <#if news.isLogoHave()>
                        <div class="logo">
                            <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                                <img src="${news.logo?default("")}" >
                            </a>
                        </div>
                        </#if>
                        <div class="text <#if !news.isLogoHave()>long-text</#if>">
                            <div class="recommend-title">${news.title?default("")}</div>

                            <div class="date-info">[${(news.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                        </div>

                    </div>
                    </#list>


                </div>

                <div class="title" >
                    <div class="t-zh">精彩推荐</div>
                    <div class="t-en">WONDERFUL RECOMMEND</div>
                </div>

                <div class="wonderful-recommend-list">
                    <#list recommendList as recommend>
                    <div class="wonderful-recommend-item">
                        <#if recommend.news.isLogoHave()>
                        <div class="logo">
                            <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                                <img src="${recommend.news.logo?default("")}" >
                            </a>
                        </div>
                        </#if>
                        <div class="text">
                            <div class="recommend-title">${recommend.news.title?default("")}</div>
                        </div>
                    </div>
                    </#list>




                </div>

            </div>


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