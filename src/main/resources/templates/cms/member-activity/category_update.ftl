<html>
<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/cms/css/admin.css">
    <link rel='stylesheet' href='/cms/css/theme-default.css' type='text/css' media='screen' />
    <script type="text/javascript" charset="UTF-8" src="/cms/script/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" charset="UTF-8" src="/layer/layer.js"></script>
</head>
<body>

<div class="content form_content" >

    <div class="position"><span>修改分类</span></div>

        <table class="table_new">
            <tbody>
            <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>
            <tr>
                <th width="20%" style="text-align:right;">分类id:</th>

                <td>${entity.id} <input type="hidden" name="id" value="${entity.id}" id="category-id"/></td>

            </tr>
            <tr>
                <th width="20%" style="text-align:right;">分类名称:</th>
                <td><input id="name_input"  class="form-control" name="name" style="display:inline-block;" value="${entity.name}" /><label id="name_input_info" style="display:inline-block;">* 分类名称</label></td>
            </tr>
            <tr>
                <th width="20%" style="text-align:right;">排序:</th>
                <td><input id="top_input"  class="form-control" name="top" style="display:inline-block;" value="${entity.top}"/><label id="top_input_info" style="display:inline-block;">* 排序</label></td>
            </tr>


            <tr>
                <th></th>
                <td>
                    <button class="btn btn-primary" type="button" id ="update-submit" >保存</button>
                    <input type="hidden" id="update-submit-url" value="/cms/left_menu_member_activity_category/category/update"/>
                </td>
            </tr>
        </tbody>
    </table>
</div>


</body>
<script type="text/javascript" charset="UTF-8" src="/cms/script/hfc/left_menu_member_activity_category/category.js"></script>
</html>