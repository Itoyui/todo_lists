<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>id : ${todo.id} のToDo詳細ページ</h2>

        <p>ToDo：<c:out value="${todo.message}" /></p>
        <p>作成日時：<fmt:formatDate value="${todo.created_at}" pattern="yyyy-MM-dd" /></p>
        <p>更新日時：<fmt:formatDate value="${todo.updated_at}" pattern="yyyy-MM-dd" /></p>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${todo.id}">編集する</a></p>

    </c:param>
</c:import>
