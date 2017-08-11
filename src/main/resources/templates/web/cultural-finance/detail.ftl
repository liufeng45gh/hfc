<!DOCTYPE html>
<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <title>${entity.title?default("")}-海富学习-海富文化艺术网</title>
    <meta name="keywords" content="艺术品，书画，红木，陶瓷，紫砂，玉器，家具艺术"/>
</head>

<body>
<div class="web-main page-min-width">
    <#include "../c-top.ftl"/>



    <div class="third-block">
        <div class="info-fr wrapper-996">
            <div class="finance-block news-left">
                <div class="news-menu">

                    <a href="/"><div class="nav-item" >首页</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/cultural-finance/index"><div class="nav-item" >海富学习</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/cultural-finance/index?categoryId=${entity.categoryId}"><div class="nav-item" >${entity.categoryName}</div></a>


                </div>



                <div class="finance-list news-list" id="news-list">
                    <div class="news-title">${entity.title?default("")}</div>
                    <div class="news-info">
                        
                        <span>
                            ${(entity.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}
                        </span>
                    </div>
                    <#include "../news/share.ftl"/>
                    <div class="news-content">${entity.content?default("")}</div>

                </div>

                <div class="fill-bottom">&nbsp;</div>

            </div>

            <#include "right_part.ftl"/>


        </div>
    </div>




</div>



<script  src="/web/js/news/index.js"></script>
</body>
</html>