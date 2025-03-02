<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加个人信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .表单组 {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="date"], select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .提交按钮 {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .提交按钮:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>添加个人信息</h1>
<form action="${pageContext.request.contextPath}/AddOlderServlet" method="post">

    <!-- 评估日期 -->
    <div class="表单组">
        <label for="评估日期">评估日期:</label>
        <input type="date" id="评估日期" name="评估日期" required>
    </div>

    <!-- 评估原因 -->
    <div class="表单组">
        <label for="评估原因">评估原因:</label>
        <select id="评估原因" name="评估原因" required>
            <option value="1">接受服务前初评</option>
            <option value="2">接受服务后的常规评估</option>
            <option value="3">状况发生变化后的即时评估</option>
            <option value="4">因评估结果有疑问进行的复评</option>
        </select>
    </div>

    <!-- 姓名 -->
    <div class="表单组">
        <label for="姓名">姓名:</label>
        <input type="text" id="姓名" name="姓名" required>
    </div>

    <!-- 性别 -->
    <div class="表单组">
        <label for="性别">性别:</label>
        <select id="性别" name="性别" required>
            <option value="1">男</option>
            <option value="2">女</option>
        </select>
    </div>

    <!-- 出生日期 -->
    <div class="表单组">
        <label for="出生日期">出生日期:</label>
        <input type="date" id="出生日期" name="出生日期" required>
    </div>

    <!-- 身份证号 -->
    <div class="表单组">
        <label for="身份证号">身份证号:</label>
        <input type="text" id="身份证号" name="身份证号" maxlength="18" required>
    </div>

    <!-- 社保卡号 -->
    <div class="表单组">
        <label for="社保卡号">社保卡号:</label>
        <input type="text" id="社保卡号" name="社保卡号" maxlength="9" required>
    </div>

    <!-- 民族 -->
    <div class="表单组">
        <label for="民族">民族:</label>
        <input type="text" id="民族" name="民族" required>
    </div>

    <!-- 文化程度 -->
    <div class="表单组">
        <label for="文化程度">文化程度:</label>
        <select id="文化程度" name="文化程度" required>
            <option value="1">文盲</option>
            <option value="2">小学</option>
            <option value="3">初中</option>
            <option value="4">高中/技校/中专</option>
            <option value="5">大学专科及以上</option>
            <option value="6">不详</option>
        </select>
    </div>

    <!-- 宗教信仰 -->
    <div class="表单组">
        <label for="宗教信仰">宗教信仰:</label>
        <input type="text" id="宗教信仰" name="宗教信仰" required>
    </div>

    <!-- 婚姻状况 -->
    <div class="表单组">
        <label for="婚姻状况">婚姻状况:</label>
        <select id="婚姻状况" name="婚姻状况" required>
            <option value="1">未婚</option>
            <option value="2">已婚</option>
            <option value="3">丧偶</option>
            <option value="4">离婚</option>
            <option value="5">未说明的婚姻状况</option>
        </select>
    </div>

    <!-- 居住情况 -->
    <div class="表单组">
        <label for="居住情况">居住情况:</label>
        <select id="居住情况" name="居住情况" required>
            <option value="1">独居</option>
            <option value="2">与配偶/伴侣居住</option>
            <option value="3">与子女居住</option>
            <option value="4">与父母居住</option>
            <option value="5">与兄弟姐妹居住</option>
            <option value="6">与其他亲属居住</option>
            <option value="7">与非亲属关系的人居住</option>
            <option value="8">养老机构</option>
        </select>
    </div>

    <!-- 医疗费用支付方式 -->
    <div class="表单组">
        <label for="医疗费用支付方式">医疗费用支付方式:</label>
        <input type="text" id="医疗费用支付方式" name="医疗费用支付方式" placeholder="例如：1,2" required>
    </div>

    <!-- 经济来源 -->
    <div class="表单组">
        <label for="经济来源">经济来源:</label>
        <input type="text" id="经济来源" name="经济来源" placeholder="例如：1,3" required>
    </div>

    <!-- 痴呆 -->
    <div class="表单组">
        <label for="痴呆">痴呆:</label>
        <select id="痴呆" name="痴呆" required>
            <option value="0">无</option>
            <option value="1">轻度</option>
            <option value="2">中度</option>
            <option value="3">重度</option>
        </select>
    </div>

    <!-- 精神疾病 -->
    <div class="表单组">
        <label for="精神疾病">精神疾病:</label>
        <select id="精神疾病" name="精神疾病" required>
            <option value="0">无</option>
            <option value="1">精神分裂症</option>
            <option value="2">双相情感障碍</option>
            <option value="3">偏执性精神障碍</option>
            <option value="4">分裂情感性障碍</option>
            <option value="5">癫痫所致精神障碍</option>
            <option value="6">精神发育迟滞伴发精神障碍</option>
        </select>
    </div>

    <!-- 慢性疾病 -->
    <div class="表单组">
        <label for="慢性疾病">慢性疾病:</label>
        <input type="text" id="慢性疾病" name="慢性疾病" placeholder="例如：高血压,糖尿病">
    </div>

    <!-- 跌倒 -->
    <div class="表单组">
        <label for="跌倒">跌倒:</label>
        <select id="跌倒" name="跌倒" required>
            <option value="0">无</option>
            <option value="1">发生过1次</option>
            <option value="2">发生过2次</option>
            <option value="3">发生过3次及以上</option>
        </select>
    </div>

    <!-- 走失 -->
    <div class="表单组">
        <label for="走失">走失:</label>
        <select id="走失" name="走失" required>
            <option value="0">无</option>
            <option value="1">发生过1次</option>
            <option value="2">发生过2次</option>
            <option value="3">发生过3次及以上</option>
        </select>
    </div>

    <!-- 噎食 -->
    <div class="表单组">
        <label for="噎食">噎食:</label>
        <select id="噎食" name="噎食" required>
            <option value="0">无</option>
            <option value="1">发生过1次</option>
            <option value="2">发生过2次</option>
            <option value="3">发生过3次及以上</option>
        </select>
    </div>

    <!-- 自杀 -->
    <div class="表单组">
        <label for="自杀">自杀:</label>
        <select id="自杀" name="自杀" required>
            <option value="0">无</option>
            <option value="1">发生过1次</option>
            <option value="2">发生过2次</option>
            <option value="3">发生过3次及以上</option>
        </select>
    </div>

    <!-- 其他意外事件 -->
    <div class="表单组">
        <label for="其他意外事件">其他意外事件:</label>
        <input type="text" id="其他意外事件" name="其他意外事件">
    </div>

    <!-- 提交按钮 -->
    <div class="表单组">
        <input type="submit" class="提交按钮" value="提交">
    </div>
</form>
</body>
</html>