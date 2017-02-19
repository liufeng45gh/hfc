<html>
<head>
    <link rel='stylesheet' href='/web/css/website.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/research-report.css' type='text/css' media='screen' />
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
</head>

<body>
<div class="web-main page-min-width">
    <#include "index-top.ftl"/>
    <div class="news-block bgf7">
        <div style="width:100%;height:1px;"></div>
        <div class="title-line wrapper-996 ">
            <div class="line line-left">
                <hr  class="line-info-hr"/>
            </div>
            <div class="line line-middle">
                <div class="title-en">INFOMATION</div>
                <div class="title-zh">推荐资讯</div>
            </div>
            <div class="line line-right">
                <hr  class="line-info-hr"/>
            </div>
        </div>

        <div class="news-recommend wrapper-996 ">
            <div class="carousel-border">

                <div id="focus" class="focus">
                    <ul>
                        <#list carouselList as carousel>
                        <li><a href="${carousel.link?default("")}" target="_blank"><img src="${carousel.logo?default("")}" class="carousel-img" alt="${carousel.title?default("")}" des="${carousel.summary?default("")}"/></a></li>
                        </#list>


                    </ul>
                    <div id="focusTitle">
                        <div class="tit" id="focus-tit">

                        </div>
                        <div class="des" id="focus-des"></div>
                    </div>
                </div>
            </div>
            <div class="news-border">
                <div class="Clear rnTopic imgScale mt14">
                    <#list newsRecommendList as recommend>
                    <div class="news-item">
                        <a href="/news/${recommend.target.id?default("")}/detail" target="_blank">
                            <p><img src="${recommend.target.logo?default("")}" ></p>
                            <em>${recommend.target.title?default("")}</em>
                        </a>
                    </div>
                    </#list>

                </div>
            </div>

        </div>
    </div>

    <div class="artist-block">
        <div class="title-line wrapper-996">
            <div class="line line-left">
                <hr  class="line-info-hr"/>
            </div>
            <div class="line line-middle">
                <div class="title-en">ARTIST</div>
                <div class="title-zh">海富艺术家</div>
            </div>
            <div class="line line-right">
                <hr  class="line-info-hr"/>
            </div>
        </div>
        <div class="artist-recommend">
            <#list artistRecommendList as recommend>
            <div  class="artist-item" <#if recommend_index%8==0>style="margin-right: 0px;"</#if>>
                <a href="/artist/${recommend.target.id?default("")}/detail" target="_blank">
                    <div class="artist-img-border"><img src="${recommend.target.avatar?default("")}" ></div>
                    <div class="artist-name">${recommend.target.name?default("")}</div>
                </a>
            </div>
            </#list>


        </div>
    </div>
    <div class="third-block bgf7">
        <div class="info-fr wrapper-996">
            <div class="finance-block">
                <div class="title-line">
                    <div class="line line-left"  style="width:100px;">
                        <hr  class="line-info-hr"/>
                    </div>
                    <div class="line line-middle" style="width:390px;">
                        <div class="title-en">CULTURAL FINANCE </div>
                        <div class="title-zh">文化金融</div>
                    </div>
                    <div class="line line-right"  style="width:100px;">
                        <hr  class="line-info-hr"/>
                    </div>
                </div>
                <div class="finance-list">
                    <#list financeRecommendList as recommend>
                    <div class="finance-item">
                        <div class="logo">
                            <a href="/cultural-finance/${recommend.target.id?default("")}/detail" target="_blank">
                                <img src="${recommend.target.logo?default("")}" >
                            </a>
                        </div>
                        <div class="text">
                            <a href="/cultural-finance/${recommend.target.id?default("")}/detail" target="_blank">
                            <div class="title">${recommend.target.title?default("")}</div>
                             </a>
                            <div class="desc">${recommend.target.summaryText()}</div>
                            <div class="date-info">[2017/2/2]</div>
                        </div>

                    </div>
                    </#list>




                </div>

            </div>
            <div class="separate-block">
                &nbsp;
            </div>
            <div class="report-block">
                <div class="title-line">
                    <div class="line line-left" style="width:100px;">
                        <hr  class="line-info-hr"/>
                    </div>
                    <div class="line line-middle" style="width:390px;">
                        <div class="title-en">RESEARCH REPORT </div>
                        <div class="title-zh">研究报告</div>
                    </div>
                    <div class="line line-right"  style="width:100px;">
                        <hr  class="line-info-hr"/>
                    </div>
                </div>
                <div class="finance-list">
                    <#list researchRecommendList as recommend>
                    <div class="finance-item">
                        <#if recommend.target.isLogoHave()>
                        <div class="logo">
                            <a href="/research-report/${recommend.target.id}/detail" target="_blank">
                                <img src="${recommend.target.logo?default("")}" >
                            </a>
                        </div>
                         </#if>
                        <div class="text <#if !recommend.target.isLogoHave()>w588</#if>"">
                            <a href="/research-report/${recommend.target.id}/detail" target="_blank">
                                <div class="title">${recommend.target.title?default("")}</div>
                            </a>
                            <a href="/research-report/${recommend.target.id}/detail" target="_blank">
                                <div class="desc"> ${recommend.target.indexSummaryText()}</div>
                            </a>
                            <div>
                                ${recommend.target.downloadHtml()}
                                <div class="date-info">[${(recommend.target.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                            </div>
                        </div>

                    </div>
                    </#list>



                </div>
            </div>


        </div>
    </div>

    <div class="member-block">
        <div class="title-line wrapper-996">
            <div class="line line-left" style="width:400px;">
                <hr  class="line-info-hr"/>
            </div>
            <div class="line line-middle" style="width:400px;">
                <div class="title-en">MEMBER ACTIVITY</div>
                <div class="title-zh">会员活动</div>
            </div>
            <div class="line line-right" style="width:400px;">
                <hr  class="line-info-hr"/>
            </div>

        </div>
        <div class="member-list wrapper-996">


            <div class="finance-list">
                    <div class="finance-item active-item">
                        <div class="logo">
                            <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                                <img src="http://img1.replays.net/www.replays.net/uploads/picname/2017/02/1486003055R3w.png" alt="冷门英雄有春天：辅助卡蜜尔的秘密">
                            </a>
                        </div>
                        <div class="text">
                            <div class="title">北美LCS联赛冒出的一朵奇葩，上单一姐跑去打辅助</div>
                            <div class="desc">最近一周守望先锋的热门话题是什么？没错，就是守望先锋后劲不足，被抢风头，玩家已经退烧等等新闻。但是事实却是如此吗？还是有人别有用心呢。</div>
                            <div class="date-info">[2017/2/2]</div>
                        </div>

                    </div>


                    <div class="finance-item  active-item">
                        <div class="logo">
                            <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                                <img src="http://img1.replays.net/www.replays.net/uploads/picname/2017/02/1486003055R3w.png" alt="冷门英雄有春天：辅助卡蜜尔的秘密">
                            </a>
                        </div>
                        <div class="text">
                            <div class="title">北美LCS联赛冒出的一朵奇葩，上单一姐跑去打辅助</div>
                            <div class="desc">最近一周守望先锋的热门话题是什么？没错，就是守望先锋后劲不足，被抢风头，玩家已经退烧等等新闻。但是事实却是如此吗？还是有人别有用心呢。</div>
                            <div class="date-info">[2017/2/2]</div>
                        </div>

                    </div>
                </div>





        </div>

    </div>


</div>

<script type="text/javascript">
$(function() {
	$('#focus').slideFocus();
});
</script>
<script type="text/javascript">
$(function() {
    $("#search-btn").click(function (){
    $("#search-form").submit();
    });
    $("#head-href-index").addClass("active");
});
</script>


</body>
</html>