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
        <div class="info-fr wrapper-996 appreciate-list" id="appreciate-list">




            <div data-id="560501876"  class="pin wfc wft" style="position: absolute; left: 0px; top: 0px; opacity: 1;">


                <a href="/pins/560501876/" target="_self" rel="nofollow" class="img x layer-view loaded">
                    <img src="//img.hb.aicdn.com/8b62c46e11798607ac172fdaedf488a72d18daee1cfc4-j9dfIJ_fw236" width="220" height="131" alt="伪君子ベ采集到古风_海报" data-baiduimageplus-ignore="1">
                    <span style="display: none" class="stop"></span>
                    <div class="cover"></div>
                </a>

                <div  class="name">陶瓷玉壶</div>

                <p class="stats less">
                    <span title="喜欢" class="like"><i></i>153</span>
                    <span title="评论" class="comment"><i></i>1</span>
                </p>

                <div style="" class="comments muted">
                    <div class="comment convo clearfix">
                        <a href="/rt1314888/" title="pRSEpI01" class="img x">
                            <img src="//img.hb.aicdn.com/f231281317484f51cd4de0714daa4ff5c6c7947e878-By0uJm_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/rt1314888/" class="author">pRSEpI01</a>:&nbsp;可以把水印去了吗？
                        </div>

                    </div>
                </div>

            </div>



            <div data-id="560501876"  class="pin wfc wft" style="position: absolute; left: 245px; top: 0px; opacity: 1;">


                <a href="/pins/560501876/" target="_self" rel="nofollow" class="img x layer-view loaded">
                    <img src="//img.hb.aicdn.com/8b62c46e11798607ac172fdaedf488a72d18daee1cfc4-j9dfIJ_fw236" width="220" height="131" alt="伪君子ベ采集到古风_海报" data-baiduimageplus-ignore="1">
                    <span style="display: none" class="stop"></span>
                    <div class="cover"></div>
                </a>

                <div  class="name">陶瓷玉壶</div>

                <p class="stats less">
                    <span title="喜欢" class="like"><i></i>153</span>
                    <span title="评论" class="comment"><i></i>1</span>
                </p>

                <div style="" class="comments muted">
                    <div class="comment convo clearfix">
                        <a href="/rt1314888/" title="pRSEpI01" class="img x">
                            <img src="//img.hb.aicdn.com/f231281317484f51cd4de0714daa4ff5c6c7947e878-By0uJm_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/rt1314888/" class="author">pRSEpI01</a>:&nbsp;可以把水印去了吗？
                        </div>

                    </div>
                </div>

            </div>





            <div data-id="560501701"  class="pin wfc wft" style="position: absolute; left: 490px; top: 0px; opacity: 1;">


                <a href="/pins/560501701/" target="_self" rel="nofollow" class="img x layer-view loaded">

                    <img src="//img.hb.aicdn.com/29b8c01814fc27e9f449a5878b27a52a1b7cd67829373-dqD2gp_fw236" width="220" height="131" alt="伪君子ベ采集到古风_海报" data-baiduimageplus-ignore="1">
                    <span style="display: none" class="stop"></span>
                    <div class="cover"></div>
                </a>

                <div  class="name">陶瓷玉壶陶瓷玉壶陶瓷玉壶陶瓷玉壶陶瓷玉壶陶瓷玉壶</div>

                <p class="stats less">
                    <span title="喜欢" class="like"><i></i>117</span>
                    <span title="评论" class="comment"><i></i>4</span>
                </p>

                <div style="" class="comments muted">
                    <div class="comment convo clearfix">
                        <a href="/vbo3e5sfav/" title="-影-迷" class="img x">
                            <img src="//img.hb.aicdn.com/f2588cddda1a41403428469f28ebf62e43b361acafaa-2fYGlW_sq75sf" data-baiduimageplus-ignore="1" class="avt"></a>
                        <div class="content">
                            <a href="/vbo3e5sfav/" class="author">-影-迷</a>:&nbsp;这效果怎么做出来的</div>
                        <a title="回复" class="replyButton"></a>
                    </div>
                    <div class="comment convo clearfix">
                        <a href="/jlhob7asbu/" title="安然、悠然" class="img x">
                            <img src="//img.hb.aicdn.com/347d3a87ac2c7d9983814126b23cbcb802b38e6a1829-qimAVV_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/jlhob7asbu/" class="author">安然、悠然</a>:&nbsp;是转手绘么？
                        </div>
                        <a title="回复" class="replyButton"></a>
                    </div>
                    <div class="comment convo clearfix">
                        <a href="/gxg33vafbo/" title="圣女の祝愿" class="img x">
                            <img src="//img.hb.aicdn.com/679b9d417dfdfad49384d9d3c5e77e95c89a2b365bb0-sCcskf_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/gxg33vafbo/" class="author">圣女の祝愿</a>:&nbsp;美漂漂的
                        </div>
                        <a title="回复" class="replyButton"></a>
                    </div>
                    <div class="comment convo clearfix">
                        <a href="/ezuyhtpekm/" title="雪如欣" class="img x">
                            <img src="//img.hb.aicdn.com/b03787c96635d9637049ddf29263a5cf4db8f1b92d56-zqHMJk_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content"><a href="/ezuyhtpekm/" class="author">雪如欣</a>:&nbsp;真漂亮，这个字体配上这个图</div>
                        <a title="回复" class="replyButton"></a>
                    </div>
                </div>

            </div>


            <div data-id="560501876"  class="pin wfc wft" style="position: absolute; left: 735px; top: 0px; opacity: 1;">


                <a href="/pins/560501876/" target="_self" rel="nofollow" class="img x layer-view loaded">
                    <img src="//img.hb.aicdn.com/8b62c46e11798607ac172fdaedf488a72d18daee1cfc4-j9dfIJ_fw236" width="220" height="131" alt="伪君子ベ采集到古风_海报" data-baiduimageplus-ignore="1">
                    <span style="display: none" class="stop"></span>
                    <div class="cover"></div>
                </a>

                <div  class="name">陶瓷玉壶</div>

                <p class="stats less">
                    <span title="喜欢" class="like"><i></i>153</span>
                    <span title="评论" class="comment"><i></i>1</span>
                </p>

                <div style="" class="comments muted">
                    <div class="comment convo clearfix">
                        <a href="/rt1314888/" title="pRSEpI01" class="img x">
                            <img src="//img.hb.aicdn.com/f231281317484f51cd4de0714daa4ff5c6c7947e878-By0uJm_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/rt1314888/" class="author">pRSEpI01</a>:&nbsp;可以把水印去了吗？
                        </div>

                    </div>
                </div>

            </div>

            <div data-id="560501876"  class="pin wfc wft" style="position: absolute; left: 980px; top: 0px; opacity: 1;">


                <a href="/pins/560501876/" target="_self" rel="nofollow" class="img x layer-view loaded">
                    <img src="//img.hb.aicdn.com/8b62c46e11798607ac172fdaedf488a72d18daee1cfc4-j9dfIJ_fw236" width="220" height="131" alt="伪君子ベ采集到古风_海报" data-baiduimageplus-ignore="1">
                    <span style="display: none" class="stop"></span>
                    <div class="cover"></div>
                </a>

                <div  class="name">陶瓷玉壶</div>

                <p class="stats less">
                    <span title="喜欢" class="like"><i></i>153</span>
                    <span title="评论" class="comment"><i></i>1</span>
                </p>

                <div style="" class="comments muted">
                    <div class="comment convo clearfix">
                        <a href="/rt1314888/" title="pRSEpI01" class="img x">
                            <img src="//img.hb.aicdn.com/f231281317484f51cd4de0714daa4ff5c6c7947e878-By0uJm_sq75sf" data-baiduimageplus-ignore="1" class="avt">
                        </a>
                        <div class="content">
                            <a href="/rt1314888/" class="author">pRSEpI01</a>:&nbsp;可以把水印去了吗？
                        </div>

                    </div>
                </div>

            </div>




        </div>
        <div style="clear: both"></div>
        <div class="info-fr wrapper-996" style="text-align:center;">正在加载.....</div>
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