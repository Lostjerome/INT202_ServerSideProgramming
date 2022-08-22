package sit.int202.lab02.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Calculator", value = "/Calculator")
public class Calculator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doProcess(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doProcess(request, response);
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        Double firstNumber = Double.parseDouble(request.getParameter("firstNumber"));
        Double secondNumber = Double.parseDouble(request.getParameter("secondNumber"));
        String operation = request.getParameter("operator");
        Double result = 0.0;
        switch (operation){
            case "-":
                result = firstNumber - secondNumber;
                break;
            case "*":
                result = firstNumber * secondNumber;
                break;
            case "/":
                result = firstNumber / secondNumber;
                break;
            default:
                result = firstNumber + secondNumber;
        }
        request.setAttribute("operation", operation);
        request.setAttribute("firstNumber", firstNumber);
        request.setAttribute("secondNumber", secondNumber);
        request.setAttribute("result", result);
        request.getRequestDispatcher("/calculated_result.jsp").forward(request, response);
    }
}
