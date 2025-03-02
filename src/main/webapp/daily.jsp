<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>日常生活活动能力评估列表</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #333;
        }
        button {
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>日常生活活动能力评估列表</h1>
<table>
    <thead>
    <tr>
        <th>评估编号</th>
        <th>进食</th>
        <th>洗澡</th>
        <th>修饰</th>
        <th>穿衣</th>
        <th>大便控制</th>
        <th>小便控制</th>
        <th>如厕</th>
        <th>床椅转移</th>
        <th>平地行走</th>
        <th>上下楼梯</th>
        <th>总分</th>
        <th>活动分级</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="daily" items="${dailyList}">
        <tr>
            <td>${daily.assessmentID}</td>
            <td>
                <c:choose>
                    <c:when test="${daily.eating == 10}">10分 - 可独立进食</c:when>
                    <c:when test="${daily.eating == 5}">5分 - 需部分帮助</c:when>
                    <c:when test="${daily.eating == 0}">0分 - 需极大帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.bathing == 5}">5分 - 可独立洗澡</c:when>
                    <c:when test="${daily.bathing == 0}">0分 - 需帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.grooming == 5}">5分 - 可独立修饰</c:when>
                    <c:when test="${daily.grooming == 0}">0分 - 需帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.dressing == 10}">10分 - 可独立穿衣</c:when>
                    <c:when test="${daily.dressing == 5}">5分 - 需部分帮助</c:when>
                    <c:when test="${daily.dressing == 0}">0分 - 需极大帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.bowelControl == 10}">10分 - 可控制大便</c:when>
                    <c:when test="${daily.bowelControl == 5}">5分 - 偶尔失控</c:when>
                    <c:when test="${daily.bowelControl == 0}">0分 - 完全失控</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.bladderControl == 10}">10分 - 可控制小便</c:when>
                    <c:when test="${daily.bladderControl == 5}">5分 - 偶尔失控</c:when>
                    <c:when test="${daily.bladderControl == 0}">0分 - 完全失控</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.toileting == 10}">10分 - 可独立如厕</c:when>
                    <c:when test="${daily.toileting == 5}">5分 - 需部分帮助</c:when>
                    <c:when test="${daily.toileting == 0}">0分 - 需极大帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.bedChairTransfer == 15}">15分 - 可独立转移</c:when>
                    <c:when test="${daily.bedChairTransfer == 10}">10分 - 需部分帮助</c:when>
                    <c:when test="${daily.bedChairTransfer == 5}">5分 - 需极大帮助</c:when>
                    <c:when test="${daily.bedChairTransfer == 0}">0分 - 完全依赖他人</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.walking == 15}">15分 - 可独立行走</c:when>
                    <c:when test="${daily.walking == 10}">10分 - 需部分帮助</c:when>
                    <c:when test="${daily.walking == 5}">5分 - 需极大帮助</c:when>
                    <c:when test="${daily.walking == 0}">0分 - 完全依赖他人</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${daily.stairs == 10}">10分 - 可独立上下楼梯</c:when>
                    <c:when test="${daily.stairs == 5}">5分 - 需部分帮助</c:when>
                    <c:when test="${daily.stairs == 0}">0分 - 需极大帮助</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${daily.totalScore}</td>
            <td>
                <c:choose>
                    <c:when test="${daily.activityLevel == 0}">0 - 能力完好</c:when>
                    <c:when test="${daily.activityLevel == 1}">1 - 轻度受损</c:when>
                    <c:when test="${daily.activityLevel == 2}">2 - 中度受损</c:when>
                    <c:when test="${daily.activityLevel == 3}">3 - 重度受损</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>