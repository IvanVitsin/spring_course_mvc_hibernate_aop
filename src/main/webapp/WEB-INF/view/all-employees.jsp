<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>All emps</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>   Operatios</th>
    </tr>
    <c:forEach var ="emp" items = "${allEmps}">

        <c:url var = "updateButton" value ="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="update" onclick="window.location.href='${updateButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>

<br>
<%--<input type="button" value="Add"--%>
<%--       onclick="window.location.href='addNewEmployee'"/>--%>
<input type="button" value="Add" onclick="window.location.href='addNewEmployee'">
</body>
</html>
