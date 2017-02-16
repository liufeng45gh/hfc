<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='/web/css/common.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/website.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/appreciate.css' type='text/css' media='screen' />
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
    <#include "../c-top.ftl"/>
    <div class="next-block">
        <div class="info-fr wrapper-996 b-line" style="height: 80px;">
            <div class="finance-block news-left">
                <div class="news-nav">

                    <a href="/"><div class="nav-item" >首页</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/appreciate/index"><div class="nav-item" >鉴赏</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/appreciate/index?categoryId=${(appreciateCategory.id)!}"><div class="nav-item" >${(appreciateCategory.name)?default("全部")}</div></a>


                </div>

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

            </div>



        </div>
        <div class="info-fr wrapper-996 b-line" style="height: 80px;">
            <#list appreciateCategoryList as category>
            <a href="/appreciate/index?categoryId=${(category.id)!}">
                <div class="a-category">${category.name}</div>
            </a>
            </#list>
            <!--
            <a href="#">
                <div class="a-category">书画</div>
            </a>
            <div class="a-category">红木</div>
            <div class="a-category">陶瓷</div>
            <div class="a-category">紫砂</div>
            <div class="a-category">玉器</div>
            <div class="a-category">家具艺术</div>
            <div class="a-category">其他</div>
            -->
        </div>
        <div class="info-fr wrapper-996 appreciate-list" id="entity-list">


        </div>
        <div style="clear: both"></div>
    <div class="load-more" id="load-more">点击加载更多</div>
    <input type="hidden" id="load-more-url" value="/appreciate/list.json"/>

    </div>




</div>

<script type="text/javascript">
$(function() {
	$('#menu-item-yhj').addClass("active");
});
</script>

<script  src="/web/js/appreciate/index.js"></script>
</body>
</html>