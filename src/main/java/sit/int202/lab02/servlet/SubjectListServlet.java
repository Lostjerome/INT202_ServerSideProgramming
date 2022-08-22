package sit.int202.lab02.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.lab02.entities.Subject;
import sit.int202.lab02.repositories.SubjectRepository;

import java.io.IOException;
import java.util.List;

    @WebServlet(name = "SubjectListServlet", value = "/SubjectListServlet")
public class SubjectListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Subject> subjects = new SubjectRepository().findAll();
    request.setAttribute("subjects",subjects);
    request.getRequestDispatcher("/subject_listing.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
