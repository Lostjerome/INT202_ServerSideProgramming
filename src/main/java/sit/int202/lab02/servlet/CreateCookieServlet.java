package sit.int202.lab02.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CreateCookieServlet", value = "/CreateCookie")
public class CreateCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String backgroundColor = request.getParameter("bg");
        String fontColor = request.getParameter("fc");
        if (backgroundColor == null) {
            backgroundColor = "black";
        }
        if (fontColor == null) {
            fontColor = "gray";
        }

        Cookie cookieBg = new Cookie("backgroundColor", backgroundColor);
        Cookie cookieFc = new Cookie("fontColor", fontColor);

        cookieBg.setMaxAge(60 * 60 * 24 * 7);
        cookieFc.setMaxAge(60 * 60 * 24 * 7);

        response.addCookie(cookieBg);
        response.addCookie(cookieFc);

        response.sendRedirect("CreatedCookie.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
