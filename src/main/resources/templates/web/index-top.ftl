<div class="head-box">
    <!--
    <div class="banner-background" style="background-image: url(/web/images/banner.jpg); opacity: 1; "></div>
    -->



    <div class="slides-container banner-background">
        <div id="slides">
            <img src="/web/images/platform-1.jpg" alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/">
            <img src="/web/images/platform-2.jpg" alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068/">
            <img src="/web/images/platform-3.jpg" alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991/">
            <img src="/web/images/platform-4.jpg" alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796/">
        </div>
    </div>

    <div class="new-banner h500" id="wave-effect" style="z-index: 100">

    </div>
    <div class="slogan" style="z-index: 100;">以艺术品流通为使命</div>
    <div class="hfc-address" style="z-index: 100;">北京市东城区史家胡同68号[海富文化艺术金融中心大厦]</div>
    <div class="mask" style="z-index: 100;"></div>

    <#include "menu-bar.ftl"/>





</div>
<!--
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
-->

<script>

$(function() {
	$("#search-btn").click(function (){
        $("#search-form").submit();
	});
	$("#head-href-index").addClass("active");
});
</script>
<script type="text/javascript" src="/web/js/effect/three.min.js"></script>

<script type="text/javascript"  src="/web/js/effect/wave-effect.js"></script>
<script type="text/javascript"  src="/web/js/effect/jquery.slides.min.js"></script>

<script type="text/javascript"  src="/web/js/effect/banner.js"></script>
