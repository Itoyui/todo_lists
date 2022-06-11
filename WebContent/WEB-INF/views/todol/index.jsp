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
                       <div id="pagination">
                    （全 ${todol_count} 件) <br />
                    <c:forEach var="i" begin="1" end="${((todol_count - 1) / 15) + 1 }" step="1">
                        <c:choose>
                            <c:when test="${i == page}">
                                <c:out value="${i}" />&nbsp;
                            </c:when>
                            <c:otherwise>
                                <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>&nbsp;
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>



    </c:param>
</c:import>