package com.lab2.web_programming_lab2.Servlets;

import com.lab2.web_programming_lab2.Data.ShotBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.LinkedList;

@WebServlet(name = "checkArea", value = "/check")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float x = Float.parseFloat(req.getParameter("X"));
        float y = Float.parseFloat(req.getParameter("Y"));
        int r = Integer.parseInt(req.getParameter("R"));
        boolean succcess = checkArea(x, y, r);
        HttpSession session = req.getSession();
        Object startTime = session.getAttribute("start-time");
        if (!(startTime instanceof Long)) return;
        ShotBean bean = new ShotBean(x, y, r, LocalDateTime.now(),
                (double) (System.nanoTime() - (Long) startTime) / 1000000, succcess);
        LinkedList<ShotBean> list;
        if (!(session.getAttribute("shots") instanceof LinkedList)) {
            list = new LinkedList<ShotBean>();
            list.add(bean);
            session.setAttribute("shots", list);
        } else {
            list = (LinkedList<ShotBean>) session.getAttribute("shots");
            list.add(bean);
            req.setAttribute("list", list);
        }
        System.out.println(list.size());
        RequestDispatcher dispatcher = req.getRequestDispatcher("./index.jsp");
        dispatcher.forward(req, resp);
    }

    private boolean checkArea(float x, float y, int r) {
        if (x > 0) {
            if (y > 0) return true;
            else  return x*x + y*y <= r*r;
        } else {
            if (y > 0) return y <= x + r;
            else return 2 * x > -r && y > -r;
        }
    }
}
