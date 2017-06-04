<table class="table_new" style="width:100%">
    <tbody>
    <tr><th width="20%"></th><td><span style="color:${KEY_RESULT_MESSAGE_COLOR?default("")};">${KEY_RESULT_MESSAGE?default("")}</span></td></tr>
    <tr>
        <th width="20%" style="text-align:right;">名字:</th>
        <td>
            <input id="name_input" class="form-control" name="name" style="display:inline-block;" value="${company.name?default("")}" />
            <label id="name_input_info" style="display:inline-block;">* 名字</label>
        </td>
    </tr>
    <tr>
        <th width="20%" style="text-align:right;">logo :</th>
        <td>
            <div class="logo_outer" style="display:inline-block;">
                <input type="file" class="addLogoInput" id="up_file" style="width:158px;"/>
                <img width="100%" height="100%" src="${company.logo?default("")}" id="logo_cover"/>
                <input type="hidden" id="logo_hidden" name="logo" value="${company.logo?default("")}"/>
            </div>
            <label id="logo_input_info" style="display:inline-block;">(140 * 100)</label>
        </td>
    </tr>
   
    <tr>
        <th width="20%" style="text-align:right;">置顶:</th>
        <td>
            <input id="top_input" class="form-control" name="top" style="display:inline-block;" value="${company.top?default("0")}" />
        </td>
    </tr>


    <tr>
        <th width="20%" style="text-align:right;">网址:</th>
        <td>
            <input id="link_input" class="form-control" name="link" style="display:inline-block;" value="${company.link?default("")}" />
            <label id="link_input_info" style="display:inline-block;">* 网址</label>
        </td>
    </tr>
   

    <tr>
        <th width="20%" style="text-align:right;">详情:</th>
        <td>


            <textarea id="editor" style="width:1024px;height:500px;" name="detail">${company.detail?default("")?html}</textarea>

        </td>
    </tr>

    <tr>
        <th></th>
        <td>
            <div class="btn btn-primary" id="submit-btn" >保存</div>
            <input type="hidden" name="id" value="${company.id?default("")}"/>
        </td>
    </tr>
</tbody>
</table>


