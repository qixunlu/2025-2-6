<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加信息提供者</title>
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
<h1>添加信息提供者</h1>
<form action="${pageContext.request.contextPath}/AddPersonServlet" method="post">
    <!-- 关联的老人ID -->
    <div class="form-group">
        <label for="olderID">评估编号:</label>
        <input type="text" id="olderID" name="olderID" required>
    </div>

    <!-- 信息提供者的姓名 -->
    <div class="form-group">
        <label for="providerName">信息提供者的姓名:</label>
        <input type="text" id="providerName" name="providerName" required>
    </div>

    <!-- 信息提供者与老人的关系 -->
    <div class="form-group">
        <label for="relationship">信息提供者与老人的关系:</label>
        <select id="relationship" name="relationship" required>
            <option value="1">配偶</option>
            <option value="2">子女</option>
            <option value="3">其他亲属</option>
            <option value="4">雇佣照顾者</option>
            <option value="5">其他</option>
        </select>
    </div>

    <!-- 其他关系 -->
    <div class="form-group">
        <label for="otherRelationship">其他关系（如果选择“其他”）：</label>
        <input type="text" id="otherRelationship" name="otherRelationship">
    </div>

    <!-- 联系人姓名 -->
    <div class="form-group">
        <label for="contactName">联系人姓名:</label>
        <input type="text" id="contactName" name="contactName" required>
    </div>

    <!-- 联系人电话 -->
    <div class="form-group">
        <label for="contactPhone">联系人电话:</label>
        <input type="text" id="contactPhone" name="contactPhone" required>
    </div>

    <!-- 提交按钮 -->
    <div class="form-group">
        <input type="submit" class="submit-btn" value="提交">
    </div>
</form>
</body>
</html>