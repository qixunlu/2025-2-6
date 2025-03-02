<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>老年人信息列表</title>
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
<h1>老年人信息列表</h1>
<table>
    <thead>
    <tr>
        <th>评估编号</th>
        <th>评估日期</th>
        <th>评估原因</th>
        <th>用户ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>出生日期</th>
        <th>身份证号</th>
        <th>社保卡号</th>
        <th>民族</th>
        <th>文化程度</th>
        <th>宗教信仰</th>
        <th>婚姻状况</th>
        <th>居住情况</th>
        <th>医疗费用支付方式</th>
        <th>经济来源</th>
        <th>痴呆等级</th>
        <th>精神疾病</th>
        <th>慢性疾病</th>
        <th>跌倒次数</th>
        <th>走失次数</th>
        <th>噎食次数</th>
        <th>自杀次数</th>
        <th>其他意外事件</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="older" items="${olders}">
        <tr>
            <td>${older.assessmentID}</td>
            <td>${older.assessmentDate}</td>
            <td>
                <c:choose>
                    <c:when test="${older.assessmentReason == 1}">接受服务前初评</c:when>
                    <c:when test="${older.assessmentReason == 2}">接受服务后的常规评估</c:when>
                    <c:when test="${older.assessmentReason == 3}">状况发生变化后的即时评估</c:when>
                    <c:when test="${older.assessmentReason == 4}">因评估结果有疑问进行的复评</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.userID}</td>
            <td>${older.name}</td>
            <td>
                <c:choose>
                    <c:when test="${older.gender == 1}">男</c:when>
                    <c:when test="${older.gender == 2}">女</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.birthDate}</td>
            <td>${older.idCard}</td>
            <td>${older.socialSecurityCard}</td>
            <td>${older.ethnicity}</td>
            <td>
                <c:choose>
                    <c:when test="${older.educationLevel == 1}">文盲</c:when>
                    <c:when test="${older.educationLevel == 2}">小学</c:when>
                    <c:when test="${older.educationLevel == 3}">初中</c:when>
                    <c:when test="${older.educationLevel == 4}">高中/技校/中专</c:when>
                    <c:when test="${older.educationLevel == 5}">大学专科及以上</c:when>
                    <c:when test="${older.educationLevel == 6}">不详</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.religion}</td>
            <td>
                <c:choose>
                    <c:when test="${older.maritalStatus == 1}">未婚</c:when>
                    <c:when test="${older.maritalStatus == 2}">已婚</c:when>
                    <c:when test="${older.maritalStatus == 3}">丧偶</c:when>
                    <c:when test="${older.maritalStatus == 4}">离婚</c:when>
                    <c:when test="${older.maritalStatus == 5}">未说明的婚姻状况</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${older.livingSituation == 1}">独居</c:when>
                    <c:when test="${older.livingSituation == 2}">与配偶/伴侣居住</c:when>
                    <c:when test="${older.livingSituation == 3}">与子女居住</c:when>
                    <c:when test="${older.livingSituation == 4}">与父母居住</c:when>
                    <c:when test="${older.livingSituation == 5}">与兄弟姐妹居住</c:when>
                    <c:when test="${older.livingSituation == 6}">与其他亲属居住</c:when>
                    <c:when test="${older.livingSituation == 7}">与非亲属关系的人居住</c:when>
                    <c:when test="${older.livingSituation == 8}">养老机构</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.paymentMethod}</td>
            <td>${older.incomeSource}</td>
            <td>
                <c:choose>
                    <c:when test="${older.dementiaLevel == 0}">无</c:when>
                    <c:when test="${older.dementiaLevel == 1}">轻度</c:when>
                    <c:when test="${older.dementiaLevel == 2}">中度</c:when>
                    <c:when test="${older.dementiaLevel == 3}">重度</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${older.mentalIllness == 0}">无</c:when>
                    <c:when test="${older.mentalIllness == 1}">精神分裂症</c:when>
                    <c:when test="${older.mentalIllness == 2}">双相情感障碍</c:when>
                    <c:when test="${older.mentalIllness == 3}">偏执性精神障碍</c:when>
                    <c:when test="${older.mentalIllness == 4}">分裂情感性障碍</c:when>
                    <c:when test="${older.mentalIllness == 5}">癫痫所致精神障碍</c:when>
                    <c:when test="${older.mentalIllness == 6}">精神发育迟滞伴发精神障碍</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.chronicDiseases}</td>
            <td>
                <c:choose>
                    <c:when test="${older.fallIncidents == 0}">无</c:when>
                    <c:when test="${older.fallIncidents == 1}">1次</c:when>
                    <c:when test="${older.fallIncidents == 2}">2次</c:when>
                    <c:when test="${older.fallIncidents == 3}">3次及以上</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${older.lostIncidents == 0}">无</c:when>
                    <c:when test="${older.lostIncidents == 1}">1次</c:when>
                    <c:when test="${older.lostIncidents == 2}">2次</c:when>
                    <c:when test="${older.lostIncidents == 3}">3次及以上</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${older.chokingIncidents == 0}">无</c:when>
                    <c:when test="${older.chokingIncidents == 1}">1次</c:when>
                    <c:when test="${older.chokingIncidents == 2}">2次</c:when>
                    <c:when test="${older.chokingIncidents == 3}">3次及以上</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${older.suicideIncidents == 0}">无</c:when>
                    <c:when test="${older.suicideIncidents == 1}">1次</c:when>
                    <c:when test="${older.suicideIncidents == 2}">2次</c:when>
                    <c:when test="${older.suicideIncidents == 3}">3次及以上</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${older.otherIncidents}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>