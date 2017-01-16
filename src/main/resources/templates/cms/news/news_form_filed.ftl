<table class="table_new" style="width:80%">
    <tbody>
    <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>
    <tr>
        <th width="20%" style="text-align:right;">标题:</th>
        <td><input id="title_input" class="form-control" name="title" style="display:inline-block;" /><label id="title_input_info" style="display:inline-block;">* 标题</label></td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">logo:</th>
        <td><input id="logo_input" type="file" class="form-control" name="logo" style="display:inline-block;"/><label id="newpass_input_info" style="display:inline-block;">* logo</label></td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">分类:</th>
        <td>
            <select id="category_input"  class="form-control" style="display:inline-block;width:280px;" >
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
    <td><input id="source_input"  class="form-control" name="source" style="display:inline-block;"/></td>
    </tr>

    <tr>
    <th width="20%" style="text-align:right;">发布时间:</th>
    <td><input id="publish_at_input"  class="form-control" name="publishAt" style="display:inline-block;"/></td>
    </tr>

    <tr>
        <th width="20%" style="text-align:right;">摘要:</th>
        <td>
            <textarea id="summary_area" cols="130" rows="8" name="summary"></textarea>
        </td>
    </tr>

    <tr>
        <th width="20%" style="text-align:right;">详情:</th>
        <td>
            <textarea id="content_area"></textarea>
        </td>
    </tr>

    <tr>
        <th></th>
        <td>
            <button class="btn btn-primary" type="submit" onclick="return checkFiled();">保存</button>
        </td>
    </tr>
</tbody>
</table>