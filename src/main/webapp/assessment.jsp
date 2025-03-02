<%@ page import="com.QixunQiu.pojo.User" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>能力评估</title>
    <script>
        function Daily() {
            window.location.href = "${pageContext.request.contextPath}/selectDailyServlet";
        }
        function Mental() {
            window.location.href = "${pageContext.request.contextPath}/selectMentalServlet";
        }
        function Communication() {
            window.location.href = "${pageContext.request.contextPath}/selectCommunicationServlet";
        }
        function Social() {
            window.location.href = "${pageContext.request.contextPath}/selectSocialServlet";
        }
    </script>
</head>
<body>
<h1>能力评估</h1>

<button onclick="Daily()">日常生活活动评估</button>
<button onclick="Mental()">精神状态评估</button>
<button onclick="Communication()">感知觉与沟通评估</button>
<button onclick="Social()">社会参与评估</button>

</body>
<br>
</html>