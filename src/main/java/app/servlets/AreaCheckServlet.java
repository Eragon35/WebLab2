package app.servlets;

import app.model.Point;
import app.model.Row;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/check")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        double x = Double.parseDouble(req.getParameter("X").replace(',', '.'));
        double y = Double.parseDouble(req.getParameter("Y").replace(',', '.'));
        double r = Double.parseDouble(req.getParameter("R").replace(',', '.'));
        Boolean income = null;
        if (x >= 0){
            if (y >= 0) {
                income = Math.sqrt(x * x + y * y) < r;
            }
            else if (y < 0){
                income = y > x - r / 2;
            }
            else resp.getWriter().println("Error! Shit happens");
        }
        else if (x < 0){
            if ( y <= 0){
                income = (x >= r) && (y >= r);
            }
            if (y > 0) income = false;
            else resp.getWriter().println("Error! Shit happens");
        }
        if (income != null) {
            Point point = new Point(x, y, r, income);
            Row row = new Row(point);
            ArrayList<Row> table = (ArrayList<Row>) session.getAttribute("table");
            if (table == null) table = new ArrayList<Row>();
            table.add(row);
            session.setAttribute("table", table);
        }
        else resp.getWriter().println("Error! Shit happens");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(req, resp);
    }
}
