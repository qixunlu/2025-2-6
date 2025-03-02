<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>精神状态评估列表</title>
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
<h1>精神状态评估列表</h1>
<table>
    <thead>
    <tr>
        <th>评估编号</th>
        <th>认知功能测验</th>
        <th>攻击行为</th>
        <th>抑郁症状</th>
        <th>总分</th>
        <th>精神状态分级</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="mental" items="${mentals}">
        <tr>
            <td>${mental.assessmentID}</td>
            <td>
                <c:choose>
                    <c:when test="${mental.cognitiveTestScore == 0}">0分 - 画钟正确，且能回忆出2-3个词</c:when>
                    <c:when test="${mental.cognitiveTestScore == 1}">1分 - 画钟错误，或只回忆出0-1个词</c:when>
                    <c:when test="${mental.cognitiveTestScore == 2}">2分 - 已确诊为认知障碍，如老年痴呆</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${mental.aggressiveBehaviorScore == 0}">0分 - 无身体攻击行为和语言攻击行为</c:when>
                    <c:when test="${mental.aggressiveBehaviorScore == 1}">1分 - 每月有几次身体攻击行为，或每周有几次语言攻击行为</c:when>
                    <c:when test="${mental.aggressiveBehaviorScore == 2}">2分 - 每周有几次身体攻击行为，或每日有语言攻击行为</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${mental.depressiveSymptomsScore == 0}">0分 - 无</c:when>
                    <c:when test="${mental.depressiveSymptomsScore == 1}">1分 - 情绪低落、不爱说话、不爱梳洗、不爱活动</c:when>
                    <c:when test="${mental.depressiveSymptomsScore == 2}">2分 - 有自杀念头或自杀行为</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${mental.totalScore}</td>
            <td>
                <c:choose>
                    <c:when test="${mental.mentalStatusLevel == 0}">0 - 能力完好</c:when>
                    <c:when test="${mental.mentalStatusLevel == 1}">1 - 轻度受损</c:when>
                    <c:when test="${mental.mentalStatusLevel == 2}">2 - 中度受损</c:when>
                    <c:when test="${mental.mentalStatusLevel == 3}">3 - 重度受损</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>