<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>感知觉与沟通评估列表</title>
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
<h1>感知觉与沟通评估列表</h1>
<table>
    <thead>
    <tr>
        <th>评估编号</th>
        <th>意识水平</th>
        <th>视力评分</th>
        <th>听力评分</th>
        <th>沟通交流评分</th>
        <th>总分级</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="assessment" items="${communicationList}">
        <tr>
            <td>${assessment.assessmentID}</td>
            <td>
                <c:choose>
                    <c:when test="${assessment.consciousnessLevel == 0}">0 - 神志清醒</c:when>
                    <c:when test="${assessment.consciousnessLevel == 1}">1 - 嗜睡</c:when>
                    <c:when test="${assessment.consciousnessLevel == 2}">2 - 昏睡</c:when>
                    <c:when test="${assessment.consciousnessLevel == 3}">3 - 昏迷</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.visionLevel == 0}">0 - 能看清书报上的标准字体</c:when>
                    <c:when test="${assessment.visionLevel == 1}">1 - 能看清楚大字体</c:when>
                    <c:when test="${assessment.visionLevel == 2}">2 - 视力有限</c:when>
                    <c:when test="${assessment.visionLevel == 3}">3 - 辨认物体有困难</c:when>
                    <c:when test="${assessment.visionLevel == 4}">4 - 没有视力</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.hearingLevel == 0}">0 - 可正常交谈</c:when>
                    <c:when test="${assessment.hearingLevel == 1}">1 - 轻声说话或距离超过2米时听不清</c:when>
                    <c:when test="${assessment.hearingLevel == 2}">2 - 正常交流有些困难</c:when>
                    <c:when test="${assessment.hearingLevel == 3}">3 - 大声说话才能部分听见</c:when>
                    <c:when test="${assessment.hearingLevel == 4}">4 - 完全听不见</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.communicationLevel == 0}">0 - 无困难</c:when>
                    <c:when test="${assessment.communicationLevel == 1}">1 - 需要增加时间或帮助</c:when>
                    <c:when test="${assessment.communicationLevel == 2}">2 - 表达或理解有困难</c:when>
                    <c:when test="${assessment.communicationLevel == 3}">3 - 不能表达或理解</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${assessment.overallGrade == 0}">0 - 能力完好</c:when>
                    <c:when test="${assessment.overallGrade == 1}">1 - 轻度受损</c:when>
                    <c:when test="${assessment.overallGrade == 2}">2 - 中度受损</c:when>
                    <c:when test="${assessment.overallGrade == 3}">3 - 重度受损</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>