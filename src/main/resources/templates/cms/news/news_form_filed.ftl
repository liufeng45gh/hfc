<table class="table_new" style="width:100%">
    <tbody>
    <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>
    <tr>
        <th width="20%" style="text-align:right;">标题:</th>
        <td><input id="title_input" class="form-control" name="title" style="display:inline-block;" value="${news.title?default("")}" /><label id="title_input_info" style="display:inline-block;">* 标题</label></td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">logo:</th>
        <td>
            <div class="logo_outer">
                <input type="file" class="addLogoInput" id="up_file" style="width:158px;"/>
                <img width="100%" height="100%" src="${news.logo?default("")}" id="logo_cover"/>
                <input type="hidden" id="logo_hidden" name="logo" value="${news.logo?default("")}"/>
            </div>
        </td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">置顶:</th>
        <td>
            <input id="top_input" class="form-control" name="top" style="display:inline-block;" value="${news.top?default("0")}" />
        </td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">分类:</th>
        <td>
            <select id="category_input"  class="form-control" style="display:inline-block;width:280px;" name="categoryId" >
                <option value="">请选择</option>
                <#list newsCategoryList as category>
                <option value="${category.id}">${category.name}</option>
                </#list>
            </select>
            <label id="category_input_info" style="display:inline-block;">* 分类</label>
        </td>
    </tr>
    <tr>
    <th width="20%" style="text-align:right;">来源:</th>
    <td><input id="source_input"  class="form-control" name="source" style="display:inline-block;" value="${news.source?default("")}"/></td>
    </tr>

    <tr>
    <th width="20%" style="text-align:right;">发布时间:</th>
    <td><input id="publish_at_input"  class="form-control" name="publishAt" style="display:inline-block;" value="${(publishAt?string("yyyy-MM-dd hh:mm:ss"))!}"/></td>
    </tr>

    <tr>
        <th width="20%" style="text-align:right;">摘要:</th>
        <td>
            <textarea id="summary_area" cols="130" rows="8" name="summary" >${news.summary?default("")?html}</textarea>
        </td>
    </tr>

    <tr>
        <th width="20%" style="text-align:right;">详情:</th>
        <td>


            <textarea id="editor" style="width:1024px;height:500px;" name="content">${news.content?default("")?html}</textarea>

        </td>
    </tr>

    <tr>
        <th></th>
        <td>
            <div class="btn btn-primary" id="submit-btn" >保存</div>
            <input type="hidden" name="id" value="${news.id?default("")}"/>
        </td>
    </tr>
</tbody>
</table>

<script>
$(document).ready(function () {
    $('#publish_at_input').datetimepicker({
         showSecond: true,
         timeFormat: 'hh:mm:ss'
    });
});

</script>
