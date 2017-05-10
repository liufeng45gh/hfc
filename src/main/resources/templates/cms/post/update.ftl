<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <#include "../common_header.ftl"/>



</head>
<body style="zoom: 1;">





<div class="position"><span>首页管理</span><span>|</span><span>招聘信息</span><span>|</span><span>修改</span></div>
<div class="content form_content" >
    <form action="/cms/post/update" method="post" id="hfc-form">
        <table class="table_new" >
            <tbody>
            <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>

            <tr>
                <th width="20%" style="text-align:right;">logo:</th>
                <td>
                    <div class="logo_outer" style="width:400px;height:189px;">
                        <input type="file" class="addLogoInput" id="up_file" style="width:400px;"/>
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
                <th width="20%" style="text-align:right;">联系方式:</th>
                <td><input id="contacts_input"  class="form-control" name="contacts" style="display:inline-block;" value="${entity.contacts?default("")}" /><label id="contacts_input_info" style="display:inline-block;">* 联系方式</label></td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">排序:</th>
                <td><input id="top_input"  class="form-control" name="top" style="display:inline-block;" value="${entity.top?default("0")}" /><label id="top_input_info" style="display:inline-block;">* 排序</label></td>
            </tr>

            <tr>
                <th width="20%" style="text-align:right;">摘要:</th>
                <td>
                    <textarea id="summary_area" cols="80" rows="8" name="summary" >${entity.summary?default("")?html}</textarea>
                </td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">详情:</th>
                <td>
                    <textarea id="description_area" cols="70" rows="8" name="description" >${entity.description?default("")?html}</textarea>
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





<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/post/list.js"></script>


</body></html>