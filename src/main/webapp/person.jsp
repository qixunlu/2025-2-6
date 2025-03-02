<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>信息提供者列表</title>
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
<h1>信息提供者列表</h1>
<table>
    <thead>
    <tr>
        <th>评估编号</th>
        <th>信息提供者姓名</th>
        <th>与老人的关系</th>
        <th>其他关系</th>
        <th>联系人姓名</th>
        <th>联系人电话</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="person" items="${persons}">
        <tr>
            <td>${person.olderID}</td>
            <td>${person.providerName}</td>
            <td>
                <c:choose>
                    <c:when test="${person.relationship == 1}">配偶</c:when>
                    <c:when test="${person.relationship == 2}">子女</c:when>
                    <c:when test="${person.relationship == 3}">其他亲属</c:when>
                    <c:when test="${person.relationship == 4}">雇佣照顾者</c:when>
                    <c:when test="${person.relationship == 5}">其他</c:when>
                    <c:otherwise>未知</c:otherwise>
                </c:choose>
            </td>
            <td>${person.otherRelationship}</td>
            <td>${person.contactName}</td>
            <td>${person.contactPhone}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>