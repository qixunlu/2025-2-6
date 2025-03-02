<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加精神状态评估</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>添加精神状态评估</h1>
<form action="${pageContext.request.contextPath}/AddMentalServlet" method="post">
    <!-- 评估编号 -->
    <div class="form-group">
        <label for="assessmentID">评估编号:</label>
        <input type="text" id="assessmentID" name="assessmentID" required>
    </div>

    <!-- 认知功能测验 -->
    <div class="form-group">
        <label for="cognitiveTestScore">认知功能测验:</label>
        <select id="cognitiveTestScore" name="cognitiveTestScore" required>
            <option value="0">0分 - 画钟正确，且能回忆出2-3个词</option>
            <option value="1">1分 - 画钟错误，或只回忆出0-1个词</option>
            <option value="2">2分 - 已确诊为认知障碍，如老年痴呆</option>
        </select>
    </div>

    <!-- 攻击行为 -->
    <div class="form-group">
        <label for="aggressiveBehaviorScore">攻击行为:</label>
        <select id="aggressiveBehaviorScore" name="aggressiveBehaviorScore" required>
            <option value="0">0分 - 无身体攻击行为和语言攻击行为</option>
            <option value="1">1分 - 每月有几次身体攻击行为，或每周有几次语言攻击行为</option>
            <option value="2">2分 - 每周有几次身体攻击行为，或每日有语言攻击行为</option>
        </select>
    </div>

    <!-- 抑郁症状 -->
    <div class="form-group">
        <label for="depressiveSymptomsScore">抑郁症状:</label>
        <select id="depressiveSymptomsScore" name="depressiveSymptomsScore" required>
            <option value="0">0分 - 无</option>
            <option value="1">1分 - 情绪低落、不爱说话、不爱梳洗、不爱活动</option>
            <option value="2">2分 - 有自杀念头或自杀行为</option>
        </select>
    </div>

    <!-- 提交按钮 -->
    <div class="form-group">
        <input type="submit" class="submit-btn" value="提交">
    </div>
</form>
</body>
</html>