package sit.int202.lab02.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Information", value = "/AddInformation")
public class Information extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doProcess(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doProcess(request, response);
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postalCode");
        String[] favouriteFoods = request.getParameterValues("favouriteFood[]");

        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("address", address);
        request.setAttribute("city", city);
        request.setAttribute("country", country);
        request.setAttribute("postalCode", postalCode);
        request.setAttribute("favouriteFoods", favouriteFoods);
        request.getRequestDispatcher("/addedInformation.jsp").forward(request, response);
    }
}
