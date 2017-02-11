<html>
<head>
    <link rel='stylesheet' href='/web/css/common.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/website.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/artist.css' type='text/css' media='screen' />
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



    <div class="third-block">
        <div class="info-fr wrapper-996">
            <div class="finance-block news-left">
                <#include "second_menu.ftl"/>



                <div class="artist-list" id="artist-list">
                    <#list artistList as artist>
                        <div class="artist-item" <#if artist_index%4==0>style="margin-left: 0px;"</#if>>
                            <div class="logo">
                                <a href="/artist/${artist.id}/detail" target="_blank">
                                    <img src="${(artist.avatar)!}" >
                                </a>
                            </div>
                            <div class="text">
                                <div class="name">${(artist.name)!}</div>
                                <div class="tag">${(artist.tag)!}</div>
                            </div>

                        </div>

                    </#list>
                </div>
                <div style="clear:both;"></div>
                <div class="load-more" id="load-more">点击加载更多</div>
                <input type="hidden" id="load-more-url" value="/artist/list"/>
                <input type="hidden" id="search-more-url" value="/artist/search-list"/>
                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


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