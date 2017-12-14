<%--
  Created by IntelliJ IDEA.
  User: julys
  Date: 17-11-30
  Time: 上午11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta charset="utf-8">
    <title>入住单</title>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
    <script src="../js/layui/layui.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="../js/global.js"></script>
</head>

<body>
<fieldset class="layui-elem-field layui-field-title " style="margin-top: 20px;">
    <legend>酒店管理 - 入住单</legend>
</fieldset>

<form class="layui-form" action="">

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">入住单号</label>
            <div class="layui-input-block">
                <input type="text" name="checkId" class="layui-input" id="checkID" readonly>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">预定单号</label>
            <div class="layui-input-block">
                <input type="text" name="orderId" class="layui-input" id="orderID" readonly>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">入住人</label>
            <div class="layui-input-inline">
                <input type="text" name="checkName" lay-verify="required" autocomplete="off" placeholder="入住人姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">入住人电话</label>
            <div class="layui-input-inline">
                <input type="tel" name=checkPhone" lay-verify="required|phone" autocomplete="off" placeholder=入住人电话" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">身份证</label>
        <div class="layui-input-block">
            <input type="text" name="checkIDcard" lay-verify="identity" placeholder="入住人身份证号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">抵店时间</label>
            <div class="layui-input-inline">
                <input type="text" name="arrireDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">离店时间</label>
            <div class="layui-input-inline">
                <input type="text" name="leaveDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>

    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">房间类型</label>
            <div class="layui-input-inline">
                <input type="text" name="typeId" lay-verify="required" autocomplete="off" placeholder="房间类型" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">入住人数</label>
            <div class="layui-input-inline">
                <input type="text" name="checkNum" lay-verify="required|number" autocomplete="off" placeholder="实际入住人数" class="layui-input">
            </div>
        </div>

    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">客房编号</label>
            <div class="layui-input-inline">
                <input type="text" name="roomId" lay-verify="number" autocomplete="off" placeholder="No." class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">客房价格</label>
            <div class="layui-input-inline">
                <input type="text" name="price" lay-verify="number" autocomplete="off" placeholder="￥" class="layui-input">
            </div>
        </div>

    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">入住价格</label>
            <div class="layui-input-inline">
                <input type="text" name="checkPrice" lay-verify="number" autocomplete="off" placeholder="￥" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">折扣</label>
            <div class="layui-input-inline">
                <input type="text" name="discount" lay-verify="number" autocomplete="off" placeholder="折扣请输入，无折扣置空" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">折扣原因</label>
            <div class="layui-input-inline">
                <input type="text" name="discountReason" autocomplete="off" placeholder="请输入折扣原因" class="layui-input">
            </div>
        </div>

    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">是否加床</label>
            <div class="layui-input-inline">
                <input type="radio" name="addBed" value="Y" title="是" lay-filter="addBedYes">
                <input type="radio" name="addBed" value="N" title="否" lay-filter="addBedNo" checked="">
            </div>
        </div>
        <div class="layui-inline">
            <div id="addBedPrice" class="layui-inline layui-hide">
                <label class="layui-form-label">加床价格</label>
                <div class="layui-input-inline">
                    <input type="text" name="addBedPrice" lay-verify="number" autocomplete="off" placeholder="￥" class="layui-input">
                </div>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">预收账款</label>
            <div class="layui-input-inline">
                <input type="text" name="orderMoney" lay-verify="required|number" autocomplete="off" placeholder="￥" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">应收账款</label>
            <div class="layui-input-inline">
                <input type="text" name="ifCheckout" lay-verify="required|number" autocomplete="off" placeholder="￥" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">结账金额</label>
            <div class="layui-input-inline">
                <input type="text" name="checkMoney" lay-verify="required|number" autocomplete="off" placeholder="￥" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">结账日期</label>
            <div class="layui-input-inline">
                <input type="text" name="checkoutDate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea name="remark" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="insertRome">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script>
    //layui的form表单默认的submit提交是真的不会用。
    //以JSON对象传递给后台的话，在传递前无法对数据二次修改。
    //所以就变成了整体传递过去，后端再解析JSON，但是解析时字段为空就又出错。
    //具体起来就是类似房间类型-新增房间那部分，全部字段强制要求全给，后端又set个别字段。
    //所以本文的提交就默认老老实实用ajax提交出去，不采用JSON对象了。

    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form,
            layer = layui.layer;

        //设置ID（读取的时间）
        var time = new Date().getTime();
        $(document).ready(function() {
            $("#orderID").val("OD" + time);
        });

        //一个属性的显隐，直接通过修改class实现，使用了layui的class属性
        form.on('radio(addBedYes)', function() {
            $('#addBedPrice').removeClass("layui-hide");
            $('#addBedPrice').addClass("layui-show");
        });
        form.on('radio(addBedNo)', function() {
            $('#addBedPrice').removeClass("layui-show");
            $('#addBedPrice').addClass("layui-hide");
        });

    });
</script>
</body>

</html>
