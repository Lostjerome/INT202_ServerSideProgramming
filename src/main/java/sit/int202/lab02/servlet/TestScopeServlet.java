package sit.int202.lab02.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "TestScopeServlet", value = "/TestScopeServlet")
public class TestScopeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request,response);
    }

    public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("rc","This is request scope");

        HttpSession session = request.getSession();
        session.setAttribute("sc", "This is session scope");

        ServletContext context = getServletContext();
        context.setAttribute("ac","This is application scope");



        getServletContext().getRequestDispatcher("/test_scope.jsp").forward(request,response);
    }
}
