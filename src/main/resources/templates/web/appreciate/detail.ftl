<!DOCTYPE html>
<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/appreciate.css' type='text/css' media='screen' />

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
                    <a href="/appreciate/index?categoryId=${(entity.categoryId)!}"><div class="nav-item" >${(entity.categoryName)?default("全部")}</div></a>
                </div>
            </div>
            <div class="separate-block">
                &nbsp;
            </div>
            <#include "search_box.ftl"/>
        </div>

        <div class="info-fr wrapper-996 " id="entity-list">
            <div class="news-info">
                        <span>
                              ${(entity.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}
                        </span>
                        <span>

                        </span>
            </div>

            <div class="news-title">${entity.title?default("")}</div>

            <div class="news-content">${entity.content?default("")}</div>
            <div class="comment-box">
                <div class="nick-box">张浩然</div>
                <div>
                    <div class="c-h-box"><img src="/web/images/default-avatar.jpg"/></div>
                    <div class="comment-area" contenteditable="true">写下您的评论</div>
                    <div class="comment-btn">
                        <img src="http://b.hiphotos.baidu.com/baike/w%3D268%3Bg%3D0/sign=ea30c51ba38b87d65042ac193f334f05/bd315c6034a85edfd49d89094b540923dd547582.jpg"/>
                        <div>提交评论</div>

                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>

    <div class="load-more" id="load-more">点击加载更多</div>
    <input type="hidden" id="load-more-url" value="/appreciate/list.json"/>

    </div>




</div>

<script type="text/javascript">

</script>


</body>
</html>