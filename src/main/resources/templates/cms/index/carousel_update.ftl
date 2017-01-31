<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/cms/css/admin.css" />
    <link rel='stylesheet' href='/cms/css/theme-default.css' type='text/css' media='screen' />
    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery/jquery-3.1.1.js"></script>




    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery.form-3.45.js"></script>

    <script  type="text/javascript" src="/layer/layer.js"></script>



</head>
<body style="zoom: 1;">





<div class="position"><span>首页管理</span><span>|</span><span>轮播图</span><span>|</span><span>修改</span></div>
<div class="content form_content" >
    <form action="/cms/index/carousel/update" method="post" id="hfc-form">
        <table class="table_new" >
            <tbody>
            <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>

            <tr>
                <th width="20%" style="text-align:right;">logo:</th>
                <td>
                    <div class="logo_outer">
                        <input type="file" class="addLogoInput" id="up_file" style="width:158px;"/>
                        <img width="100%" height="100%" src="${entity.logo?default("")}" id="logo_cover"/>
                        <input type="hidden" id="logo_hidden" name="logo" value="${entity.logo?default("")}"/>
                    </div>
                </td>
            </tr>

            <tr>
                <th width="20%" style="text-align:right;">标题:</th>
                <td><input id="title_input"  class="form-control" name="title" style="display:inline-block;" value="${entity.title?default("")}" /><label id="title_input_info" style="display:inline-block;">* 标题</label></td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">link:</th>
                <td><input id="link_input"  class="form-control" name="link" style="display:inline-block;" value="${entity.link?default("")}" /><label id="link_input_info" style="display:inline-block;">* link</label></td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">排序:</th>
                <td><input id="top_input"  class="form-control" name="top" style="display:inline-block;" value="${entity.top?default("0")}" /><label id="top_input_info" style="display:inline-block;">* 排序</label></td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">摘要:</th>
                <td>
                    <textarea id="summary_area" cols="70" rows="8" name="summary" >${entity.summary?default("")?html}</textarea>
                </td>
            </tr>


            <tr>
                <th></th>
                <td>
                    <div class="btn btn-primary" id="submit-btn" >保存</div>
                    <input type="hidden" name="id" value="${entity.id}">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>





<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/index/carousel.js"></script>
<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/news/logo_select.js"></script>

</body></html>