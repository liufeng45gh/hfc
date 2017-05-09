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
                    <!--
                    <div class="news-title">公司简介</div>
                    -->
                    <div class="news-content">
                        公司简介
                        北京海富国际文化艺术集团有限责任公司，是一家从源头上进行艺术家培育、从根本上改变艺术品流通方式和提高艺术品流通效率的多功能综合性投资管理服务集团。集团下辖北京中海国金农业咨询有限公司、北京锦泓轩文化艺术传媒有限责任公司、北京观檀家具有限责任公司。业务范围囊括书画、红木、紫砂、陶瓷、玉器、木雕、民间藏品、珠宝首饰、刺绣九大艺术门类的艺术家培养，艺术品创作、展览、拍卖、销售、金融服务。
                        位于北京王府井、建筑面积为5万多平米的海富国际文化艺术金融中心大厦，是海富文化艺术金融产业的重要物质载体。它包括展览大厅、拍卖中心、艺术设计中心、新闻中心、七星级情景式文化酒店、婚庆文化典礼中心、世界级T台秀、古典戏楼、艺术长廊等。预计在2017年底投入使用。海富集团的企业核心价值是：做传统、传承、传世的中国好艺术；做创作、创新、创富的世界好企业。为推进习近平同志提出的“一带一路”战略、增强中华民族文化自信和实现中华民族伟大复兴做出应有贡献!
                        企业愿景
                        1、培养优秀艺术家的摇篮
                        2、展示世界各国优秀传统文化的窗口
                        3、引领艺术品投资收藏消费走势的风向标
                        4、艺术品金融创新发展的实践范本
                        5、建立全球艺术品市场行业新标准和交易规则
                        6、打造中国乃至世界最高端、影响力最大的艺术品流通制高点

                        商业模式
                        以艺术品流通为使命，首创 “一二四八” 文化金融全产业链艺术品流通商业模式：
                        一个中心：以艺术品流通为中心；
                        两个确保：确保艺术品质量、确保艺术品信用；
                        八大平台：资源整合平台、艺术家孵化平台、大数据认证平台、估值鉴定平台、媒体推广平台、展览展示平台、拍卖交易平台、金融服务平台；
                        四大优势：国内外文化资源整合优势、海富南方媒体集团宣传推广优势、金融联盟艺术品资源资产化优势、海富国际文化艺术金融中心大厦实体平台优势。


                    </div>

                </div>

                <input type="hidden" id="search-more-url" value="/news/search-list">
                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


        </div>
    </div>




</div>

<script type="text/javascript">
$(function() {
	$('#menu-item-company-intro').addClass("active");
});

</script>


</body>
</html>