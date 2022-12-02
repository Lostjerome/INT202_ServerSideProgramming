package sit.int202.lab02.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import sit.int202.lab02.entities.Subject;

import java.io.IOException;

@WebServlet(name = "AddSubject", value = "/AddSubject")
public class AddSubject extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("subjectId");
        String title = request.getParameter("subjectTitle");
        String credit = request.getParameter("Credit");
        request.getRequestDispatcher("/subject_info.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("subjectId");
        String title = request.getParameter("subjectTitle");
        String credit = request.getParameter("Credit");
        Subject subject = new Subject(id, title, Double.parseDouble(credit));
        request.setAttribute("subject", subject);
        request.getRequestDispatcher("/subject_info.jsp").forward(request, response);
    }
}
