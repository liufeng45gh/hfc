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
                <div class="news-nav">

                    <a href="/"><div class="nav-item" >首页</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/news/index"><div class="nav-item" >资讯</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/news/index?categoryId=${entity.categoryId}"><div class="nav-item" >${entity.categoryName}</div></a>


                </div>
                <div class="hr-border"><hr line-info-hr></div>


                <div class="finance-list news-list" id="news-list">
                    <div class="news-title">${entity.title?default("")}</div>
                    <div class="news-info">
                        <span>
                              ${entity.source?default("")}
                        </span>
                        <span>
                            ${(entity.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}
                        </span>
                    </div>
                    <div class="news-content">${entity.content?default("")}</div>

                </div>

                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


        </div>
    </div>




</div>



<script  src="/web/js/news/index.js"></script>
</body>
</html>