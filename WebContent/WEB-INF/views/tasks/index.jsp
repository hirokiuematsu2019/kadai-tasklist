<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <table id="tasks_list">
            <tr>
            <th class="id">id</th>
            <th class="content">内容</th>
            </tr>
            <c:forEach var="tasks" items="${tasks}">
                <tr>
                    <td class="id">
                    <a href ="${pageContext.request.contextPath}/show?id=${tasks.id}">
                        <c:out value="${tasks.id}" />
                    </a>
                    </td >
                    <td class="content">
                        <c:out value="${tasks.content}" />
                    </td>
                 </tr>
             </c:forEach>
        </table>
        <p><a href ="${pageContext.request.contextPath}/new">新規タスクの登録</a></p>
    </c:param>
</c:import>
