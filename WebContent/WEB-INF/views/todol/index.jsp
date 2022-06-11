<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h3>ToDo　一覧</h3>
         <p><a href="${pageContext.request.contextPath}/new">新規ToDoを登録する</a></p>
        <ul>
            <c:forEach var="todo" items="${todol}">
            <li>
            <label>
                <input type="checkbox" name="label" value ="ok">
                </label>
                <a href="${pageContext.request.contextPath}/show?id=${todo.id}">
                    <c:out value="${todo.id}" />
                </a>
                :
             <fmt:formatDate value="${todo.created_at}" pattern="yyyy-MM-dd" />
                : <c:out value="${todo.message}"></c:out>

            </li>
            </c:forEach>
        </ul>


    </c:param>
</c:import>