package controllers;

import java.io.IOException;
import java.sql.Timestamp;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Todo;
import utils.DBUtil;

/**
 * Servlet implementation class NewServlet
 */
@WebServlet("/new")
public class NewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewServlet() {
        super();

    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();
        em.getTransaction().begin();

        // Messageのインスタンスを生成
        Todo t = new Todo();

        // mの各フィールドにデータを代入
        String todo = "taro";
        t.setTodo(todo);

        Timestamp currentTime = new Timestamp(System.currentTimeMillis());     // 現在の日時を取得
        t.setCreated_at(currentTime);
        t.setUpdated_at(currentTime);


        // データベースに保存
        em.persist(t);
        em.getTransaction().commit();

        // 自動採番されたIDの値を表示
        response.getWriter().append(Integer.valueOf(t.getId()).toString());

        em.close();
    }

}