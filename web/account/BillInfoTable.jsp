<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta charset="utf-8">
    <title>酒店管理系统</title>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../MAIN/component/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="../js/layui/layui.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="../js/global.js"></script>
    <script src="../js/toExcel/xlsx.full.min.js"></script>
    <script type="text/javascript" src="../js/toExcel/FileSaver.js"></script>
    <script type="text/javascript" src="../js/toExcel/Export2Excel.js"></script>
    <style>
        body {
            margin: 10px;
        }

        .layui-elem-field legend {
            font-size: 14px;
        }

        .layui-field-title {
            margin: 25px 0 15px;
        }
    </style>
</head>

<body>

<%--<顶层公共模板>--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>
        <div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <%--------------------修改此处输入框提醒值--------------------%>
                    <input class="layui-input" id="inputSearch" placeholder="入住单号">
                </div>
                <button class="layui-btn fa fa-search" id="searchButton"> 搜索</button>
            </div>
            <div class="layui-inline">
                <button class="layui-btn fa fa-refresh" id="refreshButton"> 刷新</button>
            </div>
            <div class="layui-inline">
                <button class="layui-btn fa fa-pencil-square-o " id="insertButton"> 生成</button>
            </div>
            <div class="layui-inline">
                <button class="layui-btn fa fa-save" id="toXlsButton"> 导出</button>
            </div>
        </div>
    </legend>
</fieldset>

<div id="toxlsTable">
    <%--方法级渲染表格--%>
    <table id="tableID"></table>
</div>

<script type="text/html" id="barAuth">
    <a class="layui-btn layui-btn-primary layui-btn-mini" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
</script>

<%---------------------修改此处引入的js--------------------%>
<script src="../js/account/BillInfo.js"></script>


</body>

</html>