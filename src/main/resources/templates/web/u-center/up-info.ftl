<!DOCTYPE html>



<html>
<head>
    <#include "../c-head.ftl"/>
    <link rel='stylesheet' href='/web/css/u-center.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/news.css' type='text/css' media='screen' />
    <link rel='stylesheet' href='/web/css/appreciate.css' type='text/css' media='screen' />

    <script  type="text/javascript" src="/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<div class="web-main page-min-width">


    <#include "../c-top.ftl"/>



    <div class="next-block">
        <div class="info-fr wrapper-996 b-line" style="height: 80px;">
            <div class="finance-block news-left">
                <div class="news-nav">

                    <a href="/"><div class="nav-item" >首页</div></a>   <div class="nav-item" >&gt;</div>
                    <a href="/u-center/index"><div class="nav-item" >个人中心</div></a>


                </div>

            </div>
        </div>
        <div class="info-fr wrapper-996" style="height: 80px;">
            <a href="#">
                <div class="a-category">个人中心</div>
            </a>
            <div class="a-category">我的消息</div>

        </div>


    </div>

    <div class="next-block bgf7" style="padding-top: 22px;height: 600px;">
        <div class="info-fr wrapper-996 box" style="height: 555px;">
            <div class="info-title "><span class="t-cn">基本信息</span> <span class="t-en">Basic Information</span></div>
            <div class="info-fr wrapper-996 b-line" style="height: 1px;">&nbsp;</div>
            <div style="clear:both;"></div>
            <div>
                <div class="h-box">
                    <div class="head-fm">
                        <img src="/web/images/default-avatar.jpg" style="width: 140px;height:140px;"/>
                    </div>
                    <div id="up-head-btn">修改头像</div>
                </div>
                <div class="i-box">
                    <div class="ftr">
                        <div class="f-name">昵称</div>
                        <div class="f-input">
                            <input placeholder="请输入昵称"/>
                        </div>
                    </div>


                    <div class="ftr">
                        <div class="f-name">个人签名</div>
                        <div class="f-input">
                            <input placeholder="请输入签名"/>
                        </div>
                    </div>

                    <div class="ftr">
                        <div class="f-name">性别</div>
                        <div class="f-input">
                            <div class="male"><input type="radio" name="gender" class="radio"/><div class="gender-info">男</div></div>
                            <div class="female"><input type="radio" name="gender" class="radio"/><div class="gender-info">女</div></div>
                            <div class="unknown"><input type="radio" name="gender" class="radio"/><div class="gender-info">保密</div></div>
                        </div>
                    </div>

                    <div class="ftr">
                        <div class="f-name">生日</div>
                        <div class="f-input">
                            <input placeholder="请选择" id="birthday" name="birthday" onClick="WdatePicker({el:'birthday'})"/>
                        </div>
                    </div>

                    <div class="ftr" style="height: 95px;">
                        <div class="f-name">收货地址</div>
                        <div class="f-area">
                            <textarea></textarea>
                        </div>
                    </div>

                    <div class="ftr">
                        <div class="btn-submit">保存</div>
                    </div>


                </div>
            </div>
        </div>



    </div>




</div>




</body>
</html>