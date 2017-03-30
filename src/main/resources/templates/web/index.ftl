<!DOCTYPE html>
<html>
<head>
    <#include "c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/research-report.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/appreciate.css' type='text/css' media='screen' />
</head>

<body>
<div class="web-main page-min-width">
    <#include "index-top.ftl"/>

    <div class="news-block bgf7">
        <div style="width:100%;height:1px;"></div>
        <div class="title-line wrapper-996 ">
            <div class="line line-left b-line">
               &nbsp;
            </div>
            <div class="line line-middle">
                <div class="title-en">RECOMMEND</div>
                <div class="title-zh">重点推荐</div>
            </div>
            <div class="line line-right b-line">
               &nbsp;
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
                            <div class="n-title">${recommend.target.title?default("")}</div>
                        </a>
                    </div>
                    </#list>

                </div>
            </div>

        </div>
    </div>

    <div class="artist-block">
        <div class="title-line wrapper-996">
            <div class="line line-left b-line">
               &nbsp;
            </div>
            <div class="line line-middle">
                <div class="title-en">HFC IMAGE</div>
                <div class="title-zh">海富映像</div>
            </div>
            <div class="line line-right b-line">
                &nbsp;
            </div>
        </div>
        <div class="news-search b-line w1200">
            <div class="Clear rnTopic imgScale mt14" style="width: 1200px;">
                <div class="news-item img-item" style="margin-left:0px;">
                    <a href="http://www.replays.net/pic/201610/19141.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2017/01/1484816579Ag9.jpg" alt="英雄联盟2017LPL春季赛"></p>
                        <em>英雄联盟2017LPL春季赛</em>
                    </a>
                </div>
                <div class="news-item img-item">
                    <a href="http://www.replays.net/pic/201610/18976.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/1482914312FJP.jpg" alt="2017LPL新赛季转会一览"></p>
                        <em>2017LPL新赛季转会一览</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/201610/18821.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/1482553776sN9.jpg" alt="瓦洛兰故事会：卡蜜尔 人形兵器水晶心"></p>
                        <em>瓦洛兰故事会：卡蜜尔 人形兵器水晶心</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/201607/17225.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/1481271207rDR.jpg" alt="S7季前赛 七重新体验"></p>
                        <em>S7季前赛 七重新体验</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/201511/13522.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/14805859980hb.jpg" alt="2016巴塞罗那全明星赛"></p>
                        <em>2016巴塞罗那全明星赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/201511/13524.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/11/1478763837o9i.jpg" alt="2016国际高校冠军赛"></p>
                        <em>2016国际高校冠军赛</em>
                    </a>
                </div>

                <div  class="news-item img-item" style="margin-left:0px;">
                    <a href="http://www.replays.net/pic/201510/13517.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/14805859980hb.jpg" alt="2016巴塞罗那全明星赛"></p>
                        <em>2016巴塞罗那全明星赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/201610/19084.html#p=1" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/11/1478763837o9i.jpg" alt="2016国际高校冠军赛"></p>
                        <em>2016国际高校冠军赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/list_12.html" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/14805859980hb.jpg" alt="2016巴塞罗那全明星赛"></p>
                        <em>2016巴塞罗那全明星赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://www.replays.net/pic/list_12.html" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/11/1478763837o9i.jpg" alt="2016国际高校冠军赛"></p>
                        <em>2016国际高校冠军赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://lol.replays.net/zt/2016qmx/" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/12/14805859980hb.jpg" alt="2016巴塞罗那全明星赛"></p>
                        <em>2016巴塞罗那全明星赛</em>
                    </a>
                </div>
                <div  class="news-item img-item">
                    <a href="http://lol.replays.net/zt/2016gjgxls/" target="_blank">
                        <p><img src="http://img1.replays.net/lol.replays.net/uploads/picname/2016/11/1478763837o9i.jpg" alt="2016国际高校冠军赛"></p>
                        <em>2016国际高校冠军赛</em>
                    </a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>



    </div>
    <div class="third-block bgf7">
        <div class="info-fr wrapper-996">
            <div class="finance-block">
                <div class="title-line">
                    <div class="line line-left b-line"  style="width:100px;">
                       &nbsp;
                    </div>
                    <div class="line line-middle" style="width:390px;">
                        <div class="title-en">HFC STUDY </div>
                        <div class="title-zh">海富学习</div>
                    </div>
                    <div class="line line-right b-line"  style="width:100px;">
                        &nbsp;
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
                            <div class="title">【${(recommend.target.categoryName)!}】${recommend.target.title?default("")}</div>
                             </a>
                            <div class="desc">${recommend.target.indexSummaryText()}</div>
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
                    <div class="line line-left b-line" style="width:100px;">
                        &nbsp;
                    </div>
                    <div class="line line-middle" style="width:390px;">
                        <div class="title-en">GLOBAL CULTURE </div>
                        <div class="title-zh">环球文化</div>
                    </div>
                    <div class="line line-right b-line"  style="width:100px;">
                        &nbsp;
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
            <div class="line line-left b-line" style="width:400px;">
                &nbsp;
            </div>
            <div class="line line-middle" style="width:400px;">
                <div class="title-en">MEMBER ACTIVITY</div>
                <div class="title-zh">会员活动</div>
            </div>
            <div class="line line-right b-line" style="width:400px;">
                &nbsp;
            </div>

        </div>
        <div class="member-list wrapper-996">
            <div class="finance-list">
                <#list memberActivityRecommendList as recommend>
                <div class="finance-item active-item" <#if recommend_index%2!=0>style="margin-left: 20px;"</#if>>
                    <#if recommend.target.isLogoHave()>
                    <div class="logo">
                        <a href="/member-activity/${recommend.target.id}/detail" target="_blank">
                            <img src="${recommend.target.logo?default("")}">
                        </a>
                    </div>
                    </#if>
                    <div class="text <#if !recommend.target.isLogoHave()>w588</#if>">
                        <a href="/member-activity/${recommend.target.id}/detail" target="_blank">
                            <div class="title">${recommend.target.title?default("")}</div>
                        </a>
                        <a href="/member-activity/${recommend.target.id}/detail" target="_blank">
                        <div class="desc">${recommend.target.indexSummaryText()}</div>
                        </a>
                        <div class="date-info">[${(recommend.target.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
                    </div>

                </div>
                </#list>
            </div>
        </div>


    </div>
    <div style="clear: both"></div>
    <div class="third-block bgf7" id="appreciate-block">
            <div>&nbsp;</div>
            <div class="title-line wrapper-996">
                <div class="line line-left b-line" style="width:400px;">
                    &nbsp;
                </div>
                <div class="line line-middle" style="width:400px;">
                    <div class="title-en">ART APPRECIATION</div>
                    <div class="title-zh">艺术鉴赏</div>
                </div>
                <div class="line line-right b-line" style="width:400px;">
                    &nbsp;
                </div>

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
	$('#focus').slideFocus();
});
</script>

<script  src="/web/js/index.js"></script>

</body>
</html>