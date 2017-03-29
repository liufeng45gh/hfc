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
                    <div class="news-title">公司简介</div>
                    <div class="news-content">
                        海富文化艺术：传统、传承、传世、创作、创新、创富
                        Beijing Haifu International Culture & Art Co., Ltd.
                        What We Stand ForTradition, Heritage and Pass-down
                        Creation, Innovation and Fortune
                        北京海富国际文化艺术有限责任公司，是一家从源头上进行艺术家培育、从根本上改变艺术品流通方式和提高艺术品流通效率的功能综合性投资管理服务集团。北京海富国际文化艺术中心的商业理念是：坚持传承与创新！坚持合作与发展！公司将自主开发建立具有海富特色的艺术家培育体系、艺术品品质认证和价值认证体系。通过建立政府资源整合平台、金融服务平台、艺术家孵化平台、产品认证平台、媒体宣传平台、估值鉴定平台、多功能展览平台、拍卖交易平台、艺术品理财服务平台、世界民间艺术藏品交易流通平台这十大平台，实现盘活老艺术品自由流通和当代艺术品从创作生产到交易流通的全产业链运行，致力于打造中国乃至世界最具影响力的文化艺术流通交易服务平台，从而实现世界文化艺术产业可持续发展目标。目前，北京海富国际文化艺术有限责任公司投资50亿人民币在北京最繁华的王府井金融商业区建设了一座面积为4.8万平米的艺术品交易大楼。这座建筑，将是包含艺术金融博物馆、展览大厅、交易大厅、多功能文化厅、戏剧舞台、艺术品展销区、国际艺术交流厅、文化艺术讲坛、媒体中心、艺术品金融服务中心、鉴定中心、拍卖中心、质押典当中心和综合办公区在内的综合性服务平台。计划于2017年底前投入使用，并将实现年交易额300亿人民币。它将成为北京地区乃至全国和世界文化交流及艺术品交易新地标

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
	$('#menu-item-company-structure').addClass("active");
});

</script>


</body>
</html>