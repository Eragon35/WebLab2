package app.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/control")
public class ControllerServlet extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getRequestDispatcher("index.jsp").forward(req, resp);
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        if ((req.getParameter("X") != null) && (req.getParameter("Y") != null) && (req.getParameter("R") != null)) {
            double x = Double.parseDouble(req.getParameter("X").replace(',', '.'));
            double y = Double.parseDouble(req.getParameter("Y").replace(',', '.'));
            double r = Double.parseDouble(req.getParameter("R").replace(',', '.'));
            if ((x < -5) || (x > 3)) out.println("Wrong value of x");
            else if ((y <= -3) || (y >= 3)) out.println("Wrong value of y");
            else if((r <= 1) || (r >= 4))out.println("Wrong value of r");
            else getServletContext().getRequestDispatcher("/check").forward(req, resp);
        } else out.println("Required parameter is undefined");
    }
}
