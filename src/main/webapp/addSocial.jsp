<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加社会参与评估</title>
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
    <h2>添加社会参与评估</h2>
    <form action="${pageContext.request.contextPath}/AddSocialServlet" method="post">
        <label for="assessmentID">评估编号:</label>
        <input type="text" id="assessmentID" name="assessmentID" required>

        <label for="lifeAbility">生活能力评分:</label>
        <select id="lifeAbility" name="lifeAbility" required>
            <option value="0">0 - 除个人生活自理外，能料理家务或当家管理事务</option>
            <option value="1">1 - 除个人生活自理外，能做家务，但欠好，家庭事务安排欠条理</option>
            <option value="2">2 - 个人生活能自理；只有在他人帮助下才能做些家务，但质量不好</option>
            <option value="3">3 - 个人基本生活事务能自理，在督促下可洗漱</option>
            <option value="4">4 - 个人基本生活事务需要部分帮助或完全依赖他人帮助</option>
        </select>

        <label for="workAbility">工作能力评分:</label>
        <select id="workAbility" name="workAbility" required>
            <option value="0">0 - 原来熟练的脑力工作或体力技巧性工作可照常进行</option>
            <option value="1">1 - 原来熟练的脑力工作或体力技巧性工作能力有所下降</option>
            <option value="2">2 - 原来熟练的脑力工作或体力技巧性工作明显不如以往，部分遗忘</option>
            <option value="3">3 - 对熟练工作只有一些片段保留，技能全部遗忘</option>
            <option value="4">4 - 对以往的知识或技能全部磨灭</option>
        </select>

        <label for="timeSpaceOrientation">时间/空间定向评分:</label>
        <select id="timeSpaceOrientation" name="timeSpaceOrientation" required>
            <option value="0">0 - 时间观念清楚；可单独出远门，能很快掌握新环境的方位</option>
            <option value="1">1 - 时间观念有些下降，可单独来往于近街，知道现住地的名称和方位</option>
            <option value="2">2 - 时间观念较差，只能单独在家附近行动，对现住地只知名称</option>
            <option value="3">3 - 时间观念很差，只能在左邻右舍间串门，对现住地不知名称和方位</option>
            <option value="4">4 - 无时间观念；不能单独外出</option>
        </select>

        <label for="personOrientation">人物定向评分:</label>
        <select id="personOrientation" name="personOrientation" required>
            <option value="0">0 - 知道周围人们的关系，知道祖孙、叔伯、姑姨等称谓的意义</option>
            <option value="1">1 - 只知家中亲密近亲的关系，不会分辨陌生人的大致年龄</option>
            <option value="2">2 - 只能称呼家中人，或只能照样称呼，不知其关系，不辨辈分</option>
            <option value="3">3 - 只认识常同住的亲人，可称呼子女或孙子女，可辨熟人和生人</option>
            <option value="4">4 - 只认识保护人，不辨熟人和生人</option>
        </select>

        <label for="socialInteractionAbility">社会交往能力评分:</label>
        <select id="socialInteractionAbility" name="socialInteractionAbility" required>
            <option value="0">0 - 参与社会，在社会环境有一定的适应能力，待人接物恰当</option>
            <option value="1">1 - 能适应单纯环境，主动接触人，初见面时难让人发现智力问题</option>
            <option value="2">2 - 脱离社会，可被动接触，不会主动待人，谈话中很多不适词句</option>
            <option value="3">3 - 勉强可与人交往，谈吐内容不清楚，表情不恰当</option>
            <option value="4">4 - 难以与人接触</option>
        </select>

        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>