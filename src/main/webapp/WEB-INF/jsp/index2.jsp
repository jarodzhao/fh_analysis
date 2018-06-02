<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>分析室平台</title>
    <script src="/static/jquery/jquery.min.js"></script>
    <script src="/static/layer/layer.js"></script>
    <script src="/layui/layui.js"></script>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
</head>
<body>

<script>
    $(function () {
        layui.use(['layer', 'form'], function () {
            var layer = layui.layer,
                form = layui.form;

            layer.msg('hello');
        })
    });
</script>

<div id="content1" class="content1">
    这里显示正文内容!....zht
</div>

<button id="button1" class="button1">button1</button>


</body>


</html>