<div class="head-box">
    <div class="banner-background" style="background-image: url(/web/images/banner.jpg); opacity: 1; "></div>
    <div class="mask"></div>
    <div class="new-banner">
        <div class="title">
            <div class="h1">
                海富文化艺术
            </div>
            <div >
                <div class="left-line">

                </div>
                <div class="h2">
                    传统、传承、传世&nbsp;&nbsp;创作、创新、创富
                </div>
                <div class="right-line">

                </div>

            </div>
        </div>
        <div class="search-box">
            <form method="get" action="/search" class="new-searching-unit" id="search-form">
                <input id="query" type="text" size="27" name="title" autocomplete="off" placeholder="搜索你喜欢的" value="${(RequestParameters["title"])!}"/>
                <a href="#" onclick="return false;" class="go"  id="search-btn"></a>
            </form>
            <div class="search-hint">

            </div>
            <div class="hot-words"><span>热门搜索：</span><a href="/search?title=艺术">艺术</a></div>
        </div>
        <div class="author">
            <div class="wrapper wrapper-996"><span>制作：</span><a href="/uzmwrnffhi/" rel="nofollow">海富文化网</a></div>
        </div>
    </div>

    <#include "menu-bar.ftl"/>

<script>

$(function() {
	$("#search-btn").click(function (){
        $("#search-form").submit();
	});
	$("#head-href-index").addClass("active");
});
</script>

</div>