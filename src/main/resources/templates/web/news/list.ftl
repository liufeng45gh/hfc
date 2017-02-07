<#list newsList as news>
    <div class="news-item">
        <#if news.isLogoHave()>
            <div class="logo">
                <a href="http://lol.replays.net/news/page/20170201/184862.html" target="_blank">
                    <img src="${news.logo?default("")}">
                </a>
            </div>
        </#if>
        <div class="text <#if !news.isLogoHave()>w878</#if>">
            <div class="title">${news.title?default("")}</div>
            <div class="desc">

                ${news.summaryText()}

            </div>
            <div class="date-info">[${(news.publishAt?string("yyyy-MM-dd HH:mm:ss"))!}]</div>
        </div>

    </div>
</#list>