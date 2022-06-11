<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${todo != null}">
                  <h2>id : ${todo.id} のToDo詳細ページ</h2>

                 <table>
                    <tbody>
                        <tr>
                            <th>ToDo</th>
                            <td><c:out value="${todo.message}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${todo.created_at}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${todo.updated_at}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                    </tbody>
                </table>

                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                    <p><a href="${pageContext.request.contextPath}/edit?id=${todo.id}">編集する</a></p>
             </c:when>
             <c:otherwise>
                  <h2>お探しのデータは見つかりませんでした。</h2>
             </c:otherwise>
         </c:choose>
    </c:param>
</c:import>
