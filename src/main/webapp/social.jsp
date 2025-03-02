<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>社会参与评估列表</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h1>社会参与评估记录</h1>
    <table>
        <thead>
        <tr>
            <th>评估编号</th>
            <th>生活能力评分</th>
            <th>工作能力评分</th>
            <th>时间/空间定向评分</th>
            <th>人物定向评分</th>
            <th>社会交往能力评分</th>
            <th>社会参与总分</th>
            <th>社会参与分级</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="assessment" items="${socialList}">
        <tr>
            <td>${assessment.assessmentID}</td>
            <td>
                <c:choose>
                    <c:when test="${assessment.lifeAbility == 0}">0 - 除个人生活自理外，能料理家务或当家管理事务</c:when>
                    <c:when test="${assessment.lifeAbility == 1}">1 - 除个人生活自理外，能做家务，但欠好，家庭事务安排欠条理</c:when>
                    <c:when test="${assessment.lifeAbility == 2}">2 - 个人生活能自理；只有在他人帮助下才能做些家务，但质量不好</c:when>
                    <c:when test="${assessment.lifeAbility == 3}">3 - 个人基本生活事务能自理，在督促下可洗漱</c:when>
                    <c:when test="${assessment.lifeAbility == 4}">4 - 个人基本生活事务需要部分帮助或完全依赖他人帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.workAbility == 0}">0 - 原来熟练的脑力工作或体力技巧性工作可照常进行</c:when>
                    <c:when test="${assessment.workAbility == 1}">1 - 原来熟练的脑力工作或体力技巧性工作能力有所下降</c:when>
                    <c:when test="${assessment.workAbility == 2}">2 - 原来熟练的脑力工作或体力技巧性工作明显不如以往，部分遗忘</c:when>
                    <c:when test="${assessment.workAbility == 3}">3 - 对熟练工作只有一些片段保留，技能全部遗忘</c:when>
                    <c:when test="${assessment.workAbility == 4}">4 - 对以往的知识或技能全部磨灭</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.timeSpaceOrientation == 0}">0 - 时间观念清楚；可单独出远门，能很快掌握新环境的方位</c:when>
                    <c:when test="${assessment.timeSpaceOrientation == 1}">1 - 时间观念有些下降，可单独来往于近街，知道现住地的名称和方位</c:when>
                    <c:when test="${assessment.timeSpaceOrientation == 2}">2 - 时间观念较差，只能单独在家附近行动，对现住地只知名称</c:when>
                    <c:when test="${assessment.timeSpaceOrientation == 3}">3 - 时间观念很差，只能在左邻右舍间串门，对现住地不知名称和方位</c:when>
                    <c:when test="${assessment.timeSpaceOrientation == 4}">4 - 无时间观念；不能单独外出</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.personOrientation == 0}">0 - 知道周围人们的关系，知道祖孙、叔伯、姑姨等称谓的意义</c:when>
                    <c:when test="${assessment.personOrientation == 1}">1 - 只知家中亲密近亲的关系，不会分辨陌生人的大致年龄</c:when>
                    <c:when test="${assessment.personOrientation == 2}">2 - 只能称呼家中人，或只能照样称呼，不知其关系，不辨辈分</c:when>
                    <c:when test="${assessment.personOrientation == 3}">3 - 只认识常同住的亲人，可称呼子女或孙子女，可辨熟人和生人</c:when>
                    <c:when test="${assessment.personOrientation == 4}">4 - 只认识保护人，不辨熟人和生人</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.socialInteractionAbility == 0}">0 - 参与社会，在社会环境有一定的适应能力，待人接物恰当</c:when>
                    <c:when test="${assessment.socialInteractionAbility == 1}">1 - 能适应单纯环境，主动接触人，初见面时难让人发现智力问题</c:when>
                    <c:when test="${assessment.socialInteractionAbility == 2}">2 - 脱离社会，可被动接触，不会主动待人，谈话中很多不适词句</c:when>
                    <c:when test="${assessment.socialInteractionAbility == 3}">3 - 勉强可与人交往，谈吐内容不清楚，表情不恰当</c:when>
                    <c:when test="${assessment.socialInteractionAbility == 4}">4 - 难以与人接触</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${assessment.totalScore}</td>
            <td>
                <c:choose>
                    <c:when test="${assessment.participationGrade == 0}">0 - 能力完好（总分0-2分）</c:when>
                    <c:when test="${assessment.participationGrade == 1}">1 - 轻度受损（总分3-7分）</c:when>
                    <c:when test="${assessment.participationGrade == 2}">2 - 中度受损（总分8-13分）</c:when>
                    <c:when test="${assessment.participationGrade == 3}">3 - 重度受损（总分14-20分）</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>