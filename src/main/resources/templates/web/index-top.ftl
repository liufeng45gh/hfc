<div class="head-box">
    <div class="banner-background" style="background-image: url(/web/images/banner.jpg); opacity: 1; "></div>
    <div class="mask"></div>
    <div class="new-banner h400">

    </div>

    <#include "menu-bar.ftl"/>





</div>
<div class="w1200">
    <div class="search-box">
        <form method="get" action="/search" class="new-searching-unit" id="search-form">
            <input id="query" type="text" size="27" name="title" autocomplete="off" placeholder="搜索你喜欢的" value="${(RequestParameters["title"])!}"/>
            <a href="#" onclick="return false;" class="go"  id="search-btn"></a>
        </form>
        <div class="search-hint">

        </div>

    </div>
</div>


<script>

$(function() {
	$("#search-btn").click(function (){
        $("#search-form").submit();
	});
	$("#head-href-index").addClass("active");
});
</script>