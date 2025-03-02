<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加感知觉与沟通评估</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>添加感知觉与沟通评估</h2>
    <form action="${pageContext.request.contextPath}/AddCommunicationServlet" method="post">
        <label for="assessmentID">评估编号:</label>
        <input type="text" id="assessmentID" name="assessmentID" required>

        <label for="consciousnessLevel">意识水平评分:</label>
        <select id="consciousnessLevel" name="consciousnessLevel" required>
            <option value="0">0: 神志清醒</option>
            <option value="1">1: 嗜睡</option>
            <option value="2">2: 昏睡</option>
            <option value="3">3: 昏迷</option>
        </select>

        <label for="visionLevel">视力评分:</label>
        <select id="visionLevel" name="visionLevel" required>
            <option value="0">0: 能看清书报上的标准字体</option>
            <option value="1">1: 能看清楚大字体</option>
            <option value="2">2: 视力有限</option>
            <option value="3">3: 辨认物体有困难</option>
            <option value="4">4: 没有视力</option>
        </select>

        <label for="hearingLevel">听力评分:</label>
        <select id="hearingLevel" name="hearingLevel" required>
            <option value="0">0: 可正常交谈</option>
            <option value="1">1: 轻声说话或距离超过2米时听不清</option>
            <option value="2">2: 正常交流有些困难</option>
            <option value="3">3: 大声说话才能部分听见</option>
            <option value="4">4: 完全听不见</option>
        </select>

        <label for="communicationLevel">沟通交流评分:</label>
        <select id="communicationLevel" name="communicationLevel" required>
            <option value="0">0: 无困难</option>
            <option value="1">1: 需要增加时间或帮助</option>
            <option value="2">2: 表达或理解有困难</option>
            <option value="3">3: 不能表达或理解</option>
        </select>


        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>