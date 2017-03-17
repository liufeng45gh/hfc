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
                <div class="title-en">INFOMATION</div>
                <div class="title-zh">推荐资讯</div>
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
                <div class="title-en">ARTIST</div>
                <div class="title-zh">海富艺术家</div>
            </div>
            <div class="line line-right b-line">
                &nbsp;
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
                    <div class="line line-left b-line"  style="width:100px;">
                       &nbsp;
                    </div>
                    <div class="line line-middle" style="width:390px;">
                        <div class="title-en">CULTURAL FINANCE </div>
                        <div class="title-zh">文化金融</div>
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
                            <div class="title">${recommend.target.title?default("")}</div>
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
                        <div class="title-en">RESEARCH REPORT </div>
                        <div class="title-zh">研究报告</div>
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