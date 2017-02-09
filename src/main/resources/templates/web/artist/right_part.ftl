<div class="separate-block">
    &nbsp;
</div>

<div class="report-block news-right">
    <div class="search-box">
        <form method="get" action="/news/search" class="new-searching-unit" data-regestered="regestered" id="search-form">
            <input id="query" type="text" size="27" name="title" autocomplete="off" placeholder="搜索你喜欢的" value="${title!}" />
            <a href="#" onclick="return false;" class="go" id="search-btn"></a>
        </form>
    </div>

    <div class="hr-border" style="width:360px;">
        <hr  class="line-info-hr"/>
    </div>
    <div class="title" >
        <div class="t-zh">推荐艺术家</div>
        <div class="t-en">RECOMMEND ARTIST</div>
    </div>
    <div class="recommend-list">
        <#list artistRecommendList as recommend>
        <div class="recommend-item">
            <div class="logo">
                <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                    <img src="${(recommend.artist.avatar)!}" alt="冷门英雄有春天：辅助卡蜜尔的秘密">
                </a>
            </div>
            <div class="text">
                <div class="line1">
                    <div class="name">${(recommend.artist.name)!}</div>
                    <div class="tag">${(recommend.artist.tag)!}</div>
                </div>
                <div class="intro">
                    ${(recommend.artist.shortIntro())!}
                </div>
            </div>


        </div>
        </#list>

    </div>

</div>

<script>

$(function() {
	$("#search-btn").click(function (){
        $("#search-form").submit();
	});
});
</script>