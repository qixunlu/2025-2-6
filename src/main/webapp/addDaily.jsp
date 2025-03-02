<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加日常生活活动能力评估</title>
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
<h1>添加日常生活活动能力评估</h1>
<form action="${pageContext.request.contextPath}/AddDailyLivingActivityServlet" method="post">
    <!-- 评估编号 -->
    <div class="form-group">
        <label for="assessmentID">评估编号:</label>
        <input type="text" id="assessmentID" name="assessmentID" required>
    </div>

    <!-- 进食 -->
    <div class="form-group">
        <label for="eating">进食:</label>
        <select id="eating" name="eating" required>
            <option value="10">10分 - 可独立进食（在合理的时间内独立进食准备好的食物）</option>
            <option value="5">5分 - 需部分帮助（进食过程中需要一定帮助，如协助把持餐具）</option>
            <option value="0">0分 - 需极大帮助或完全依赖他人，或有留置营养管</option>
        </select>
    </div>

    <!-- 洗澡 -->
    <div class="form-group">
        <label for="bathing">洗澡:</label>
        <select id="bathing" name="bathing" required>
            <option value="5">5分 - 准备好洗澡水后，可自己独立完成洗澡过程</option>
            <option value="0">0分 - 在洗澡过程中需他人帮助</option>
        </select>
    </div>

    <!-- 修饰 -->
    <div class="form-group">
        <label for="grooming">修饰:</label>
        <select id="grooming" name="grooming" required>
            <option value="5">5分 - 可自己独立完成</option>
            <option value="0">0分 - 需他人帮助</option>
        </select>
    </div>

    <!-- 穿衣 -->
    <div class="form-group">
        <label for="dressing">穿衣:</label>
        <select id="dressing" name="dressing" required>
            <option value="10">10分 - 可独立完成</option>
            <option value="5">5分 - 需部分帮助（能自己穿脱，但需他人帮助整理衣物、系扣/鞋带、拉拉链）</option>
            <option value="0">0分 - 需极大帮助或完全依赖他人</option>
        </select>
    </div>

    <!-- 大便控制 -->
    <div class="form-group">
        <label for="bowelControl">大便控制:</label>
        <select id="bowelControl" name="bowelControl" required>
            <option value="10">10分 - 可控制大便</option>
            <option value="5">5分 - 偶尔失控（每周<1次），或需要他人提示</option>
            <option value="0">0分 - 完全失控</option>
        </select>
    </div>

    <!-- 小便控制 -->
    <div class="form-group">
        <label for="bladderControl">小便控制:</label>
        <select id="bladderControl" name="bladderControl" required>
            <option value="10">10分 - 可控制小便</option>
            <option value="5">5分 - 偶尔失控（每天<1次，但每周>1次），或需要他人提示</option>
            <option value="0">0分 - 完全失控，或留置导尿管</option>
        </select>
    </div>

    <!-- 如厕 -->
    <div class="form-group">
        <label for="toileting">如厕:</label>
        <select id="toileting" name="toileting" required>
            <option value="10">10分 - 可独立完成</option>
            <option value="5">5分 - 需部分帮助（需他人搀扶去厕所、需他人帮忙冲水或整理衣裤等）</option>
            <option value="0">0分 - 需极大帮助或完全依赖他人</option>
        </select>
    </div>

    <!-- 床椅转移 -->
    <div class="form-group">
        <label for="bedChairTransfer">床椅转移:</label>
        <select id="bedChairTransfer" name="bedChairTransfer" required>
            <option value="15">15分 - 可独立完成</option>
            <option value="10">10分 - 需部分帮助（需他人搀扶或使用拐杖）</option>
            <option value="5">5分 - 需极大帮助（较大程度上依赖他人搀扶和帮助）</option>
            <option value="0">0分 - 完全依赖他人</option>
        </select>
    </div>

    <!-- 平地行走 -->
    <div class="form-group">
        <label for="walking">平地行走:</label>
        <select id="walking" name="walking" required>
            <option value="15">15分 - 可独立在平地上行走45m</option>
            <option value="10">10分 - 需部分帮助（因肢体残疾、平衡能力差、过度衰弱、视力等问题，在一定程度上需他人搀扶或使用拐杖、助行器等辅助用具）</option>
            <option value="5">5分 - 需极大帮助（因肢体残疾、平衡能力差、过度衰弱、视力等问题，在较大程度上依赖他人搀扶，或坐在轮椅上自行移动）</option>
            <option value="0">0分 - 完全依赖他人</option>
        </select>
    </div>

    <!-- 上下楼梯 -->
    <div class="form-group">
        <label for="stairs">上下楼梯:</label>
        <select id="stairs" name="stairs" required>
            <option value="10">10分 - 可独立上下楼梯（连续上下10-15个台阶）</option>
            <option value="5">5分 - 需部分帮助（需他人搀扶，或扶着楼梯、使用拐杖等）</option>
            <option value="0">0分 - 需极大帮助或完全依赖他人</option>
        </select>
    </div>

    <!-- 提交按钮 -->
    <div class="form-group">
        <input type="submit" class="submit-btn" value="提交">
    </div>
</form>
</body>
</html>