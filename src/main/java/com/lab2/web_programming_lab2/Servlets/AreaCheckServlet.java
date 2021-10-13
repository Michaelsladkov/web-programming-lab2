package com.lab2.web_programming_lab2.Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "checkArea", value = "/check")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float x = Float.parseFloat(req.getParameter("X"));
        float y = Float.parseFloat(req.getParameter("Y"));
        int r = Integer.parseInt(req.getParameter("R"));
        boolean succcess = checkArea(x, y, r);
        String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-mm-yy HH:mm:ss"));
        PrintWriter out = resp.getWriter();
        StringBuilder builder = new StringBuilder();
        builder.append("{\"X\": ");
        builder.append('\"');
        builder.append(x);
        builder.append('\"');
        builder.append(',');

        builder.append("\"Y\": ");
        builder.append('\"');
        builder.append(y);
        builder.append('\"');
        builder.append(',');

        builder.append("\"R\": ");
        builder.append('\"');
        builder.append(r);
        builder.append('\"');
        builder.append(',');

        builder.append("\"now\": ");
        builder.append('\"');
        builder.append(date);
        builder.append('\"');
        builder.append(',');

        builder.append("\"execution\": ");
        builder.append('\"');
        builder.append(date);
        builder.append('\"');
        builder.append(',');

        builder.append("\"result\": ");
        builder.append('\"');
        builder.append(succcess ? "попал" : "не попал");
        builder.append('\"');
        builder.append('}');
        System.out.println(builder);
        resp.addHeader("Content-Type", "text/html;charset=UTF-8");
        out.println(builder);
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
