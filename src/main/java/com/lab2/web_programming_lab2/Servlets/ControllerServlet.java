package com.lab2.web_programming_lab2.Servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "controller", value = "/controller")
public class ControllerServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        boolean dataIsCorrect = true;
        String xString = request.getParameter("X");
        if (xString == null) {
            out.println("X is not assigned");
        } else {
            float x;
            try {
                x = Float.parseFloat(xString);
                if (x <= -2 || x>= 2) {
                    out.println("X is not valid");
                    dataIsCorrect = false;
                }
            } catch (NumberFormatException e) {
                out.println("X can not be parsed");
                dataIsCorrect = false;
            }
        }

        String yString = request.getParameter("Y");
        if (yString == null) {
            out.println("Y is not assigned");
        } else {
            float y;
            try {
                y = Float.parseFloat(yString);
                if (y <= -5 || y>= 5) {
                    out.println("Y is not valid");
                    dataIsCorrect = false;
                }
            } catch (NumberFormatException e) {
                out.println("Y can not be parsed");
                dataIsCorrect = false;
            }
        }

        String rString = request.getParameter("R");
        if (rString == null) {
            out.println("R is not assigned");
        } else {
            int r;
            try {
                r = Integer.parseInt(rString);
                if (r < 1 || r > 5) {
                    out.println("R is not valid");
                }
            } catch (NumberFormatException e) {
                out.println("R can not be parsed");
            }
        }

        if (dataIsCorrect) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("./check");
            System.out.println("forwarded");
            dispatcher.forward(request, response);
        }
        System.out.println(dataIsCorrect);
    }
}
