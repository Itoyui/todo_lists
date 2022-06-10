<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h3>ToDO　一覧</h3>
        <ul>
            <c:forEach var="todo" items="${todol}">
            <li>
                <a href="${pageContext.request.contextPath}/show?id=${todo.id}">
                    <c:out value="${todo.id}" />
                </a>
                : <c:out value="${todo.message}"></c:out>
            </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">ToDoを追加する</a></p>
    </c:param>
</c:import>